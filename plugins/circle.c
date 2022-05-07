#include "../dev/tgxp.h"
#include <string.h>

ACTION {
    TGXPC_INIT_GUARD

    if (param_ct != 3 && param_ct != 4) {
        TGXP_FEEDBACK("Usage: circle [cx, cy, r, *fill]");
        return TGXP_ERRC_EXEC;
    }

    if (!TGXP_HasParameter(param_ct, params, "cx") || !TGXP_HasParameter(param_ct, params, "cy") || !TGXP_HasParameter(param_ct, params, "r")) {
        TGXP_FEEDBACK("Usage: circle [cx, cy, r, *fill]");
    }
    unsigned cx = TGXPC_GRAB_PARAM("cx", 0);
    unsigned cy = TGXPC_GRAB_PARAM("cy", 0);
    unsigned r = TGXPC_GRAB_PARAM("r", 0);
    unsigned fill = TGXPC_GRAB_PARAM("fill", 0);

    double x, y;
    for (double d = 0.0; d < M_PI * 2; d += 0.00001) {
        x = cx + sin(d) * r;
        y = cy + cos(d) * r;
        TGXP_SetPixel((unsigned) x, (unsigned) y, env->_r, env->_g, env->_b, env->g);
    }

    if (!fill) goto exit;

    for (int x = cx - r; x < cx + r; x ++) {
        for (int y = cy - r; y < cy + r; y ++) {
            if ((((double) x - cx)*((double) x - cx) + ((double) y - cy)*((double)y - cy)) <= r*r) {
                TGXP_SetPixel((unsigned) x, (unsigned) y, env->_r, env->_g, env->_b, env->g);
            }
        }
    }

    exit:
    return TGXP_ERRC_OK;
};

ENTRY {
    return strdup("circle");
};