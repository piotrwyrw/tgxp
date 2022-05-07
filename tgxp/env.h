#ifndef TGXP_ENV_H
#define TGXP_ENV_H

#include "tgxpf/tgxpf.h"

#include <stdio.h>

typedef struct {
    FILE *f;
    TGXP_GraphicsFile *g;
    char *fn;
    unsigned char _r;
    unsigned char _g;
    unsigned char _b;
} TGXP_Environment;

TGXP_Environment TGXP_CreateEnvironment(FILE *, TGXP_GraphicsFile *, char *);
void TGXP_DestroyEnvironmentComponents(TGXP_Environment *);

#endif