#ifndef TGXP_TGXP_H
#define TGXP_TGXP_H

#include "../tgxp/proc.h"
#include "../tgxp/errc.h"
#include "../tgxp/msg.h"
#include "../tgxp/cmd/intern.h"
#include <math.h>

#define ENTRY char *DMS_Entry()
#define ACTION TGXP_Errc DMS_Call(TGXP_CMD_PROC_SIGN_ID)

#endif