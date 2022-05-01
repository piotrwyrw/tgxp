#include "commit.h"

TGXPC_COMMAND_METHOD(TGXPC_Commit) {
    if (param_ct != 0) {
        TGXP_FEEDBACK("%s\n", "The commit command does not expect any parameters.");
        return TGXP_ERRC_EXEC;
    }

    if (env->g->d == NULL) {
        TGXP_FEEDBACK("%s\n", "Can not write to a null file. Use 'init' first.");
        return TGXP_ERRC_EXEC;
    }

    if (env->f == NULL) {
        TGXP_FEEDBACK("%s\n", "The file descriptor is null. Use 'attach' to reopen the file.");
        return TGXP_ERRC_EXEC;
    }

    TGXP_FEEDBACK("%s\n", "Committing changes ..");
    TGXP_WriteGraphicsFile(env->f, env->g);

    return TGXP_ERRC_OK;
}