#ifndef TGXP_CLI_H
#define TGXP_CLI_H

#include "proc.h"

#include <stdio.h>

#define TGXP_MAX_PROMPT_LENGTH 200

int TGXP_StartEarlyReadEvalPrintLoop(TGXP_ProcedureRegistry *);

int TGXP_StartReadEvalPrintLoop(TGXP_ProcedureRegistry *, FILE *, char *);

char *TGXP_Prompt(char *);

#endif