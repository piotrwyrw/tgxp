#include "errc.h"

char *TGXP_VerboseErrorMessage(int errc) {
    switch (errc) {
        case TGXP_ERRC_UNKNOWN:
            return "Unknown command.";
        case TGXP_ERRC_EXEC:
            return "Execution failed.";
        case TGXP_ERRC_OK:
            return "Done.";
        default:
            return "Unknown error message.";
    }
}