#include "attach.h"

TGXPC_COMMAND_METHOD(TGXPC_Attach) {
    TGXPC_INIT_GUARD

    env->f = fopen(env->fn, TGXP_FOPEN_FLAGS);
    if (env->f == NULL) {
        TGXP_FEEDBACK("%s\n", "Attaching failed.");
        return TGXP_ERRC_EXEC;
    }
    TGXP_FEEDBACK("%s\n", "Attached.")
    return TGXP_ERRC_OK;
}