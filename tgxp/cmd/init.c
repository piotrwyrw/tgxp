#include "init.h"

TGXPC_COMMAND_METHOD(TGXPC_Init) {
    if (!TGXP_HasParameter(param_ct, params, "w") || !TGXP_HasParameter(param_ct, params, "h")) {
        TGXP_FEEDBACK("%s\n", "Usage: init [w, h]");
        return TGXP_ERRC_EXEC;
    }

    if (env->g->d != NULL) {
        TGXP_FEEDBACK("%s\n", "Erasing old data ..");
        TGXP_DestroyGraphicsFile(env->g);
        TGXP_FEEDBACK("%s\n", "Recreating file ...");
        *(env->g) = TGXP_CreateDummyGraphicsFile();
    }

    TGXP_FEEDBACK("%s\n", "Initializing graphics file ..");

    unsigned w, h;
    w = TGXP_SearchParameterById(param_ct, params, "w")->value;
    h = TGXP_SearchParameterById(param_ct, params, "h")->value;

    TGXP_InitializeDummyGraphicsFile(env->g, w, h, TGXP_CreateGraphicsPixel(env->_r, env->_g, env->_b));

    return TGXP_ERRC_OK;
}