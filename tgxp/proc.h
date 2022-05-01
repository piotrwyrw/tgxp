#ifndef TGXP_PROC_H
#define TGXP_PROC_H

#include "parse.h"
#include "errc.h"
#include "env.h"
#include "dms/dms.h"

#define TGXP_CMD_PROC_SIGN char *, unsigned, TGXP_CommandParameter *, TGXP_Environment *
#define TGXP_CMD_PROC_SIGN_ID char *id, unsigned param_ct, TGXP_CommandParameter *params, TGXP_Environment *env

typedef struct {
    char *id;

    // Parameters: Command name, parameter count, parameter array
    int (*run)(TGXP_CMD_PROC_SIGN);
} TGXP_CommandProcedure;

TGXP_CommandProcedure TGXP_CreateCommandProcedure(char *, int (*)(TGXP_CMD_PROC_SIGN));

void TGXP_DestroyCommandProcedure(TGXP_CommandProcedure *);

typedef struct {
    TGXP_CommandProcedure *arr;
    unsigned len;
    unsigned xlen;
} TGXP_ProcedureRegistry;

TGXP_ProcedureRegistry TGXP_CreateProcedureRegistry(unsigned);

void TGXP_DestroyProcedureRegistry(TGXP_ProcedureRegistry *);

// NOTE: Once a module has been registered, it can NOT be unregistered.
int TGXP_RegisterProcedure(TGXP_ProcedureRegistry *, TGXP_CommandProcedure *);

int TGXP_FindAndExecuteCommand(TGXP_ProcedureRegistry *, TGXP_ModuleManager *, TGXP_Command *, TGXP_Environment *);

#endif