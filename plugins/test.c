#include "../dev/tgxp.h"
#include <string.h>

ACTION {
    TGXP_FEEDBACK"[17546] Segmentation fault. Core dumped.\n");
};

ENTRY {
    return strdup("moh");
};