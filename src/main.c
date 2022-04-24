#include "cli.h"
#include "proc.h"
#include "cpr.h"

// fill r=20 g=100 b=50

// This utility does not accept any startup parameters
int main(void) {
    TGXP_ProcedureRegistry reg = TGXP_InitCentralInternalProcedureRegistry();
    int stat = TGXP_StartEarlyReadEvalPrintLoop(&reg);
    TGXP_DestroyProcedureRegistry(&reg);
    return stat;
}