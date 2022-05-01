#ifndef TGXP_MSG_H
#define TGXP_MSG_H

#include "const.h"
#include <stdio.h>

#define TGXP_FEEDBACK(s, ...) \
    printf(TGXP_FEEDBACK_PREFIX); \
    printf(s, ##__VA_ARGS__);

#endif