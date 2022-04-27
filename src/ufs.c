#include "ufs.h"
#include <sys/stat.h>

int TGXP_DirectoryExists(char *id) {
    struct stat s = {0};
    int i = stat(id, &s);
    if (i) {
        return 0;
    }
    return 1;
}

int TGXP_CreateDirectory(char *id) {
    if (TGXP_DirectoryExists(id)) {
        return 0;
    }
    mkdir(id, S_IRWXU);
    return 1;
}