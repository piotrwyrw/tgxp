#include "strhlp.h"
#include "parse.h"

#include <string.h>
#include <stdlib.h>

void TGXP_RemoveEOL(char *s) {
    for (unsigned i = 0; i < strlen(s); i++) {
        if (s[i] == '\n') {
            s[i] = '\0';
        }
    }
}

void TGXP_StringConcatenateChar(char *s, char c) {
    unsigned l = strlen(s);
    s[l] = c;
    s[l + 1] = 0;
}

char *TGXP_AppropriateStringSize(char *s) {
    char *_s = malloc(strlen(s) + 1);
    strcpy(_s, s);
    return _s;
}

int TGXP_IsEmpty(char *s) {
    if (s == NULL) {
        return 1;
    }
    if (strlen(s) == 0) {
        return 1;
    }
    return 0;
}

int TGXP_IsIntegerButString(char *s) {
    for (unsigned i = 0; i < strlen(s); i++) {
        if (!TGXP_IS_NUMBER(s[i])) {
            return 0;
        }
    }
    return 1;
}