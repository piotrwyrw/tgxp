#include "proc.h"

#include <string.h>
#include <stdlib.h>

TGXP_CommandProcedure TGXP_CreateCommandProcedure(char *id, int (*ptr)(TGXP_CMD_PROC_SIGN)) {
    TGXP_CommandProcedure proc;
    proc.id = malloc(strlen(id) + 1);
    strcpy(proc.id, id);
    proc.run = ptr;
    return proc;
}

void TGXP_DestroyCommandProcedure(TGXP_CommandProcedure *proc) {
    free(proc->id);
}

TGXP_ProcedureRegistry TGXP_CreateProcedureRegistry(unsigned xlen) {
    TGXP_ProcedureRegistry reg;
    reg.arr = malloc(sizeof(TGXP_CommandProcedure) * xlen);
    reg.xlen = xlen;
    reg.len = 0;
    return reg;
}

void TGXP_DestroyProcedureRegistry(TGXP_ProcedureRegistry *preg) {
    for (unsigned i = 0; i < preg->len; i++) {
        TGXP_DestroyCommandProcedure(&(preg->arr[i]));
    }
    free(preg->arr);
}

int TGXP_RegisterProcedure(TGXP_ProcedureRegistry *preg, TGXP_CommandProcedure *pr) {
    if (preg->len + 1 >= preg->xlen) {
        return 0;
    }
    preg->arr[preg->len].id = malloc(strlen(pr->id) + 1);
    strcpy(preg->arr[preg->len].id, pr->id);
    preg->arr[preg->len].run = pr->run;
    preg->len ++;
    return 1;
}

int TGXP_FindAndExecuteCommand(TGXP_ProcedureRegistry *reg, TGXP_Command *cmd, TGXP_Environment *nv) {
    unsigned idx = 0;

    for (unsigned i = 0; i < reg->len; i++) {
        if (!strcmp(reg->arr[i].id, cmd->id)) {
            idx = i;
            goto exec_proc;
        }
    }

    return TGXP_ERRC_UNKNOWN;

    exec_proc:;
//    TGXP_CommandProcedure proc = reg->arr[idx];
//    int ret = (*proc.run)(cmd->id, cmd->param_ct, cmd->param);
//    TGXP_DestroyCommandProcedure(&proc);
    int ret = (*reg->arr[idx].run)(cmd->id, cmd->param_ct, cmd->param, nv);
    return ret;
}