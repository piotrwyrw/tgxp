#include "cli.h"
#include "proc.h"
#include "cpr.h"
#include "dms/dms.h"

// This utility does not accept any startup parameters
int main(void) {
    TGXP_ModuleManager mm = TGXP_CreateModuleManager(100);
    TGXP_DynamicModule dm = TGXP_CreateDynamicModule("test", "/home/piotrwyrw/tgxp/build/test.so");
    TGXP_RegisterModule(&mm, &dm);

    TGXP_ProcedureRegistry reg = TGXP_InitCentralInternalProcedureRegistry();
    int stat = TGXP_StartEarlyReadEvalPrintLoop(&reg, &mm);

    TGXP_DestroyModuleManager(&mm);
    TGXP_DestroyProcedureRegistry(&reg);
    return stat;
}