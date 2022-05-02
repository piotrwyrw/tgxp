#include "../dev/tgxp.h"
#include <string.h>

DMS_CALL {
    printf("Lolololollollllol");
    return TGXP_ERRC_OK;
}

DMS_ENTRY {
    return strdup("tx");
}