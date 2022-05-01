/**
 * Command parser for the TGXP CLI/REPL
 * Command format:
 * name parameter=value parameter=value ..
 */

#ifndef TGXP_PARSE_H
#define TGXP_PARSE_H

#define TGXP_IS_LETTER(c) \
        (c == '_' || (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z'))

#define TGXP_IS_NUMBER(c) \
        (c >= '0' && c <= '9')

#define TGXP_IS_WASTE(c) \
        (c == ' ' || c == '\t' || c == '\n')

#define TGXP_NULL_COMMAND \
    TGXP_CreateCommand(NULL, 0, NULL);

typedef struct {
    char *id;
    unsigned value;
} TGXP_CommandParameter;

TGXP_CommandParameter TGXP_CreateCommandParameter(char *, unsigned);

void TGXP_DestroyCommandParameter(TGXP_CommandParameter *);

// NOTE: This struct is only used as a result for the parser function 'TGXP_ParseCommand'
// refer to the struct 'TGXP_CommandProcedure' in 'proc.h' for procedures.
typedef struct {
    char *id;
    unsigned param_ct;
    TGXP_CommandParameter *param;
} TGXP_Command;

TGXP_Command TGXP_CreateCommand(char *, unsigned, TGXP_CommandParameter *);
void TGXP_DestroyCommand(TGXP_Command *);
TGXP_CommandParameter *TGXP_SearchParameterById(unsigned, TGXP_CommandParameter *, char *);
int TGXP_HasParameter(unsigned, TGXP_CommandParameter *, char *);

typedef struct {
    unsigned pos;
    char *str;
} TGXP_TokenizerCache;

typedef enum {
    TGXP_TOK_NOT_YET_CLASSIFIED,
    TGXP_TOK_IDENTIFIER,
    TGXP_TOK_CHARACTER,
    TGXP_TOK_NUMBER,
} TGXP_InternalTokenClassifier;

TGXP_InternalTokenClassifier TGXP_ClassifierOf(char);

TGXP_InternalTokenClassifier TGXP_StringClassifier(char *);

TGXP_TokenizerCache TGXP_CreateTokenizerCache(unsigned, char *);

void TGXP_DestroyTokenizerCache(TGXP_TokenizerCache *);

char *TGXP_NextToken(TGXP_TokenizerCache *);

TGXP_Command TGXP_ParseCommand(char *);

#endif