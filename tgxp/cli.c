#include "cli.h"
#include "const.h"
#include "strhlp.h"
#include "parse.h"
#include "msg.h"
#include "env.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int TGXP_StartEarlyReadEvalPrintLoop(TGXP_ProcedureRegistry *reg, TGXP_ModuleManager *mm) {
    TGXP_CallAllEntries(mm);
    
    // Print the welcome messages
    printf(TGXP_WELCOME_STR, TGXP_VERSION);

    // Prompt the user for the file name (or quit?)
    char *ans;

    while (1) {
        ans = TGXP_Prompt("early");
        if (!strcmp(ans, ".exit")) {
            TGXP_FEEDBACK(TGXP_EARLY_EXIT_STR);
            free(ans);
            return 0;
        } else {
            if (TGXP_IsEmpty(ans)) {
                free(ans);
                continue;
            }
            FILE *f = fopen(ans, "w");
            TGXP_FEEDBACK(TGXP_ENTER_STR, ans);
            TGXP_StartReadEvalPrintLoop(reg, mm, f, ans);
        }
        free(ans);
    }

    return 0;
}

int TGXP_StartReadEvalPrintLoop(TGXP_ProcedureRegistry *reg, TGXP_ModuleManager *mm, FILE *f, char *fn) {
    TGXP_GraphicsFile gf = TGXP_CreateDummyGraphicsFile();
    TGXP_Environment nv = TGXP_CreateEnvironment(f, &gf, fn);

    // Prompt the user for the command (or quit?)
    char *ans;

    while (1) {
        ans = TGXP_Prompt("edit");
        if (!strcmp(ans, ".exit")) {
            TGXP_FEEDBACK(TGXP_LATE_EXIT_STR, fn);
            TGXP_DestroyEnvironmentComponents(&nv);
            free(ans);
            return 0;
        }

        TGXP_Command cmd = TGXP_ParseCommand(ans);

        if (cmd.id == NULL) {
            TGXP_FEEDBACK(TGXP_GENERAL_ERROR, "Syntax analysis failed.\n");
            goto finalize;
        }

        int stat = TGXP_FindAndExecuteCommand(reg, mm, &cmd, &nv);
        TGXP_FEEDBACK("%s\n", TGXP_VerboseErrorMessage(stat));
        TGXP_DestroyCommand(&cmd);

        finalize:
        free(ans);
    }

    return 0;
}

char *TGXP_Prompt(char *pt) {
    if (pt == NULL) {
        printf(TGXP_PROMPT);
    } else {
        printf(TGXP_PROMPT_EXT, pt);
    }
    char *buf = malloc(TGXP_MAX_PROMPT_LENGTH + 1);
    fgets(buf, TGXP_MAX_PROMPT_LENGTH, stdin);
    TGXP_RemoveEOL(buf);
    return buf;
}