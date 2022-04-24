#ifndef TGXP_ERRC_H
#define TGXP_ERRC_H

typedef int TGXP_Errc;

#define TGXP_ERRC_UNKNOWN (-1)
#define TGXP_ERRC_EXEC (-2)
#define TGXP_ERRC_OK (0)

char *TGXP_VerboseErrorMessage(int);

#endif