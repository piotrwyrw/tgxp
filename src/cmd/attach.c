#include "attach.h"

TGXPC_COMMAND_METHOD(TGXPC_Attach) {
    env->f = fopen(env->fn, TGXP_FOPEN_FLAGS);
    if (env->f == NULL) {
        TGXP_FEEDBACK("%s\n", "Attaching failed.");
        return TGXP_ERRC_EXEC;
    }
    TGXP_FEEDBACK("%s\n", "Attached. Make sure to use 'commit' after attaching.")
    return TGXP_ERRC_OK;
}