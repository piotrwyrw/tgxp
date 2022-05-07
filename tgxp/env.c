#include "env.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

TGXP_Environment TGXP_CreateEnvironment(FILE *f, TGXP_GraphicsFile *g, char *fn) {
    TGXP_Environment env;
    env.f = f;
    env.g = g;
    env.fn = malloc(strlen(fn) + 1);
    strcpy(env.fn, fn);
    env._r = 0;
    env._g = 0;
    env._b = 0;
    return env;
}

void TGXP_DestroyEnvironmentComponents(TGXP_Environment *nv) {
    TGXP_DestroyGraphicsFile(nv->g);
    if (nv->f != NULL) {
        fclose(nv->f);
    }
    free(nv->fn);
}