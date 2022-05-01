// All includes for the commands (internal files) to work

#include "../cpr.h"
#include "../msg.h"
#include "../const.h"
#include "../errc.h"

#ifndef TGXPC_GRAB_PARAM
#   define TGXPC_GRAB_PARAM(id, def) \
            ((!TGXP_SearchParameterById(param_ct, params, id)) ? def : TGXP_SearchParameterById(param_ct, params, id)->value)
#endif

/**
 * Please use the following two preprocessors to create your command
 * methods to keep them compatible with later releases of TGXP.
 */
#ifndef TGXPC_PRE_COMMAND_METHOD
#   define TGXPC_PRE_COMMAND_METHOD(id) \
            TGXP_Errc id(TGXP_CMD_PROC_SIGN);
#endif

#ifndef TGXPC_COMMAND_METHOD
#   define TGXPC_COMMAND_METHOD(id) \
            TGXP_Errc id(TGXP_CMD_PROC_SIGN_ID)
#endif