#include "set.h"

TGXP_Errc TGXPC_Set(TGXP_CMD_PROC_SIGN_ID) {
    if (!TGXP_HasParameter(param_ct, params, "x") || !TGXP_HasParameter(param_ct, params, "y")) {
        TGXP_FEEDBACK("%s\n", "Correct usage: set <x> <y> [r=0] [g=0] [b=0]");
        return TGXP_ERRC_EXEC;
    }

    unsigned int x = TGXPC_GRAB_PARAM("x", 0);
    unsigned int y = TGXPC_GRAB_PARAM("y", 0);

    unsigned char r = TGXPC_GRAB_PARAM("r", 0);
    unsigned char g = TGXPC_GRAB_PARAM("g", 0);
    unsigned char b = TGXPC_GRAB_PARAM("b", 0);

    int stat = TGXP_SetPixel(x, y, r, g, b, env->g);

    if (!stat) {
        TGXP_FEEDBACK("%s\n", "Coordinates out of bounds.");
        return TGXP_ERRC_EXEC;
    }

    return TGXP_ERRC_OK;
}