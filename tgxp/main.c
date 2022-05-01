#include "cli.h"
#include "proc.h"
#include "cpr.h"
#include "dms/dms.h"

// This utility does not accept any startup parameters
int main(void) {
    TGXP_DynamicModule dm = TGXP_CreateDynamicModule("test", "/home/piotr/tgxp/build/test.so");
    TGXP_CallDynamicModuleEntryPoint(&dm);
    TGXP_DestroyDynamicModule(&dm);

    TGXP_ProcedureRegistry reg = TGXP_InitCentralInternalProcedureRegistry();
    int stat = TGXP_StartEarlyReadEvalPrintLoop(&reg);

    TGXP_DestroyProcedureRegistry(&reg);
    return stat;
}