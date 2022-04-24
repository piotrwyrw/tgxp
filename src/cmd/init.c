#include "init.h"

TGXPC_COMMAND_METHOD(TGXPC_Init) {
    if (!TGXP_HasParameter(param_ct, params, "w") || !TGXP_HasParameter(param_ct, params, "h")) {
        TGXP_FEEDBACK("%s\n", "The initialize command expected 2 or 3 to 5 parameters: w, h, [r, g, b];");
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

    unsigned char r = 0, g = 0, b = 0;

    if (TGXP_HasParameter(param_ct, params, "r")) r = TGXP_SearchParameterById(param_ct, params, "r")->value;
    if (TGXP_HasParameter(param_ct, params, "g")) g = TGXP_SearchParameterById(param_ct, params, "g")->value;
    if (TGXP_HasParameter(param_ct, params, "b")) b = TGXP_SearchParameterById(param_ct, params, "b")->value;

    r = TGXP_ClampRGB(r);
    g = TGXP_ClampRGB(g);
    b = TGXP_ClampRGB(b);

    TGXP_InitializeDummyGraphicsFile(env->g, w, h, TGXP_CreateGraphicsPixel(r, g, b));

    return TGXP_ERRC_OK;
}