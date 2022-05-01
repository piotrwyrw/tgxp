#ifndef TGXP_CLI_H
#define TGXP_CLI_H

#include "proc.h"

#include <stdio.h>

#define TGXP_MAX_PROMPT_LENGTH 200

int TGXP_StartEarlyReadEvalPrintLoop(TGXP_ProcedureRegistry *, TGXP_ModuleManager *);

int TGXP_StartReadEvalPrintLoop(TGXP_ProcedureRegistry *, TGXP_ModuleManager *, FILE *, char *);

char *TGXP_Prompt(char *);

#endif