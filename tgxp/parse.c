#include "parse.h"
#include "strhlp.h"
#include "msg.h"
#include "const.h"

#include <stdlib.h>
#include <string.h>

TGXP_CommandParameter TGXP_CreateCommandParameter(char *id, unsigned val) {
    TGXP_CommandParameter par;
    par.id = malloc(strlen(id) + 1);
    strcpy(par.id, id);
    par.value = val;
    return par;
}

void TGXP_DestroyCommandParameter(TGXP_CommandParameter *par) {
    free(par->id);
}

TGXP_Command TGXP_CreateCommand(char *id, unsigned ct, TGXP_CommandParameter *par) {
    TGXP_Command cmd;
    if (id != NULL) {
        cmd.id = malloc(strlen(id) + 1);
        strcpy(cmd.id, id);
    } else {
        cmd.id = NULL;
    }
    cmd.param_ct = ct;
    cmd.param = malloc(sizeof(TGXP_CommandParameter) * ct);

    for (unsigned i = 0; i < ct; i++) {
        cmd.param[i].id = malloc(strlen(par[i].id) + 1);
        strcpy(cmd.param[i].id, par[i].id);
        cmd.param[i].value = par[i].value;
    }
    return cmd;
}

void TGXP_DestroyCommand(TGXP_Command *cmd) {
    free(cmd->id);
    for (unsigned i = 0; i < cmd->param_ct; i++) {
        TGXP_DestroyCommandParameter(&(cmd->param[i]));
    }
}

TGXP_CommandParameter *TGXP_SearchParameterById(unsigned param_ct, TGXP_CommandParameter *params, char *id) {
    for (unsigned i = 0; i < param_ct; i ++) {
        if (!strcmp(params[i].id, id)) {
            return &(params[i]);
        }
    }
    return NULL;
}

int TGXP_HasParameter(unsigned param_ct, TGXP_CommandParameter *params, char *id) {
    return TGXP_SearchParameterById(param_ct, params, id) != NULL;
}


TGXP_InternalTokenClassifier TGXP_ClassifierOf(char c) {
    if (TGXP_IS_LETTER(c)) {
        return TGXP_TOK_IDENTIFIER;
    } else if (TGXP_IS_NUMBER(c)) {
        return TGXP_TOK_NUMBER;
    } else {
        return TGXP_TOK_CHARACTER;
    }
}

// Works fine, as long as you use it with the TGXP tokenizer, and also assume
// that it didn't go crazy by returning a token like '1abc'
TGXP_InternalTokenClassifier TGXP_StringClassifier(char *s) {
    if (strlen(s) == 0) {
        return TGXP_TOK_NOT_YET_CLASSIFIED;
    }
    if (TGXP_IS_LETTER(s[0])) {
        return TGXP_TOK_IDENTIFIER;
    }
    if (TGXP_IS_NUMBER(s[0])) {
        return TGXP_TOK_NUMBER;
    }
    if (strlen(s) == 1) {
        return TGXP_TOK_CHARACTER;
    } else {
        return TGXP_TOK_NOT_YET_CLASSIFIED;
    }
}

TGXP_TokenizerCache TGXP_CreateTokenizerCache(unsigned pos, char *s) {
    TGXP_TokenizerCache cache;
    cache.pos = pos;
    cache.str = malloc(strlen(s) + 1);
    strcpy(cache.str, s);
    return cache;
}

void TGXP_DestroyTokenizerCache(TGXP_TokenizerCache *c) {
    free(c->str);
}

char *TGXP_NextToken(TGXP_TokenizerCache *c) {
    if (c->pos >= strlen(c->str)) {
        return NULL;
    }

    // Remember to FREE the return value of this function (AKA the array below)
    char *cur_tok = malloc(100 + 1);
    cur_tok[0] = 0;

    TGXP_InternalTokenClassifier itc = TGXP_TOK_NOT_YET_CLASSIFIED;

    for (; c->pos < strlen(c->str); c->pos++) {
        char ch = c->str[c->pos];

        if (TGXP_IS_WASTE(ch)) {
            if (itc == TGXP_TOK_NOT_YET_CLASSIFIED) {
                continue;
            }
            return cur_tok;
        }

        if (TGXP_IS_LETTER(ch) || TGXP_IS_NUMBER(ch)) {
            if ((itc == TGXP_ClassifierOf(ch) || itc == TGXP_TOK_NOT_YET_CLASSIFIED) ||
                (TGXP_ClassifierOf(ch) == TGXP_TOK_NUMBER && itc == TGXP_TOK_IDENTIFIER)) {
                if (itc == TGXP_TOK_NOT_YET_CLASSIFIED) {
                    itc = TGXP_ClassifierOf(ch);
                }
                TGXP_StringConcatenateChar(cur_tok, ch);
                goto final;
            } else {
                return cur_tok;
            }
        }

        // Maybe an unclassified character?
        if (itc != TGXP_TOK_NOT_YET_CLASSIFIED) {
            return cur_tok;
        }
        TGXP_StringConcatenateChar(cur_tok, ch);
        c->pos++;
        return cur_tok;

        final:
        if (c->pos + 1 >= strlen(c->str)) {
            // Push it one step forward, to make sure we don't return to the last letter of the previous token
            c->pos++;
            goto return_tok;
        }

        continue;

        return_tok:;

        char *tmp = TGXP_AppropriateStringSize(cur_tok); // Minimize memory usage
        free(cur_tok);
        return tmp;
    }
    return NULL;
}

// name identifier '=' value identifier '=' value ..
TGXP_Command TGXP_ParseCommand(char *s) {
    TGXP_TokenizerCache cache = TGXP_CreateTokenizerCache(0, s);
    char *id = TGXP_NextToken(&cache);

    if (TGXP_IsEmpty(id)) {
        TGXP_FEEDBACK(TGXP_EXPECT_TOK, "Expected function name");
        goto error_leave_early;
    }

    if (TGXP_StringClassifier(id) != TGXP_TOK_IDENTIFIER) {
        TGXP_FEEDBACK(TGXP_EXPECT_TOK, "The function name must be an identifier.");
        goto error_leave_early;
    }

    unsigned i = 0;
    TGXP_CommandParameter *par = malloc(sizeof(TGXP_CommandParameter) * 20);

    while (1) {
        char *pid = TGXP_NextToken(&cache);
        if (TGXP_IsEmpty(pid)) {
            // Just exitting the loop here is perfectly legal, since it is the beginning
            // of a parameter
            break;
        }
        if (TGXP_StringClassifier(pid) != TGXP_TOK_IDENTIFIER) {
            TGXP_FEEDBACK(TGXP_EXPECT_TOK, "The parameter name must be an identifier.");
            goto error_leave;
        }

        char *waste = TGXP_NextToken(&cache);
        if (TGXP_IsEmpty(waste)) {
            TGXP_FEEDBACK(TGXP_EXPECT_TOK, "Expected a '=' after variable name");
            goto error_leave;
        }
        if (strcmp(waste, "=")) {
            TGXP_FEEDBACK(TGXP_EXPECT_TOK, "Expected a '=' after variable name");
            goto error_leave;
        }
        char *val = TGXP_NextToken(&cache);
        if (TGXP_IsEmpty(val)) {
            TGXP_FEEDBACK(TGXP_EXPECT_TOK, "Expected integer literal after '='.");
            goto error_leave;
        }
        if (!TGXP_IsIntegerButString(val)) {
            TGXP_FEEDBACK(TGXP_GENERAL_ERROR, "Value is not an integer literal.\n");
            goto error_leave;
        }
        par[i].id = malloc(strlen(pid) + 10);
        strcpy(par[i].id, pid);
        par[i++].value = atoi(val);
    }

    TGXP_Command cmd = TGXP_CreateCommand(id, i, par);
    for (unsigned n = 0; n < i; n++) {
        TGXP_DestroyCommandParameter(&(par[n]));
    }
    free(par);
    free(id);
    TGXP_DestroyTokenizerCache(&cache);
    return cmd;

    error_leave:
    free(id);
    for (unsigned n = 0; n < i; n++) {
        TGXP_DestroyCommandParameter(&(par[n]));
    }
    free(par);
    error_leave_early:
    TGXP_DestroyTokenizerCache(&cache);
    return TGXP_NULL_COMMAND;
}