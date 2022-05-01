#include "cpr.h"

#define TGXPC_INCLUDE_EVERYTHING
#include "cmd/include.h"

TGXP_ProcedureRegistry TGXP_InitCentralInternalProcedureRegistry() {
    TGXP_ProcedureRegistry preg = TGXP_CreateProcedureRegistry(100);

    TGXP_INIT_REG(proc)
    TGXP_REGISTER_PROC(proc, preg, "init", TGXPC_Init)
    TGXP_REGISTER_PROC(proc, preg, "commit", TGXPC_Commit);
    TGXP_REGISTER_PROC(proc, preg, "attach", TGXPC_Attach);
    TGXP_REGISTER_PROC(proc, preg, "detach", TGXPC_Detach);
    TGXP_REGISTER_PROC(proc, preg, "set", TGXPC_Set);

    return preg;
}