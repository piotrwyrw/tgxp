//
// Central Procedure Registry
//

#ifndef TGXP_CPR_H
#define TGXP_CPR_H

#include "proc.h"

#define TGXP_INIT_REG(id) \
        TGXP_CommandProcedure id;


#define TGXP_REGISTER_PROC(id, reg, str, mthd) \
        id = TGXP_CreateCommandProcedure(str, mthd); \
        TGXP_RegisterProcedure(&reg, &id);   \
        TGXP_DestroyCommandProcedure(&id);

TGXP_ProcedureRegistry TGXP_InitCentralInternalProcedureRegistry();

#endif