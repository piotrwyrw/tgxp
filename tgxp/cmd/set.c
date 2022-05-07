#include "set.h"

TGXPC_COMMAND_METHOD(TGXPC_Set) {
    TGXPC_INIT_GUARD

    if (!TGXP_HasParameter(param_ct, params, "x") || !TGXP_HasParameter(param_ct, params, "y")) {
        TGXP_FEEDBACK("%s\n", "Usage: set [x, y]");
        return TGXP_ERRC_EXEC;
    }

    unsigned int x = TGXPC_GRAB_PARAM("x", 0);
    unsigned int y = TGXPC_GRAB_PARAM("y", 0);

    int stat = TGXP_SetPixel(x, y, env->_r, env->_g, env->_b, env->g);

    if (!stat) {
        TGXP_FEEDBACK("%s\n", "Coordinates out of bounds.");
        return TGXP_ERRC_EXEC;
    }

    return TGXP_ERRC_OK;
}