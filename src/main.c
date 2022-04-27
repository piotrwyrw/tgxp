#include "cli.h"
#include "proc.h"
#include "cpr.h"
#include "plug/luai.h"

// This utility does not accept any startup parameters
int main(void) {
   TGXP_InitPluginSubsystem();

    TGXP_ProcedureRegistry reg = TGXP_InitCentralInternalProcedureRegistry();
    int stat = TGXP_StartEarlyReadEvalPrintLoop(&reg);
    TGXP_DestroyProcedureRegistry(&reg);
    return stat;
}