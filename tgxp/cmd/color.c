#include "color.h"

TGXPC_COMMAND_METHOD(TGXPC_Color) {
    if (param_ct > 3) {
        TGXP_FEEDBACK("%s\n", "Usage: color [*r, *g, *b]");
        return TGXP_ERRC_EXEC;
    }

    unsigned char
    r = TGXPC_GRAB_PARAM("r", 0),
    g = TGXPC_GRAB_PARAM("g", 0),
    b = TGXPC_GRAB_PARAM("b", 0);

    env->_r = r;
    env->_g = g;
    env->_b = b;

    TGXP_FEEDBACK("Color set to (%d, %d, %d).\n", r, g, b);

    return TGXP_ERRC_OK;
}