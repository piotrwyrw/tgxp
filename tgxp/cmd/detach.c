#include "detach.h"

TGXPC_COMMAND_METHOD(TGXPC_Detach) {
    TGXPC_INIT_GUARD

    if (env->f == NULL) {
        TGXP_FEEDBACK("%s\n", "Failed to detach.");
        return TGXP_ERRC_EXEC;
    }
    fclose(env->f);
    env->f = NULL;
    TGXP_FEEDBACK("%s\n", "Detached.");
    return TGXP_ERRC_OK;
}