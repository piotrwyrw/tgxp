#ifndef TGXP_CONST_H
#define TGXP_CONST_H

#define TRUE 1
#define FALSE 0

#define TGXP_WELCOME_STR "Terminal Graphics Processor [v%.1f] \nType file name to open or '.exit' to quit.\n\n"
#define TGXP_VERSION 1.2

#define TGXP_PROMPT "(tgxp)"
#define TGXP_PROMPT_EXT "(%s tgxp)"
#define TGXP_FEEDBACK_PREFIX "-- "
#define TGXP_EARLY_EXIT_STR "Exiting ..\n"
#define TGXP_LATE_EXIT_STR "Exiting editor instance for '%s' ..\n"
#define TGXP_ENTER_STR "Entering workspace '%s' ..\n"
#define TGXP_BAD_COMMAND "Unknown command '%s'.\n"
#define TGXP_EXPECT_TOK "Expected Token: %s\n"
#define TGXP_GENERAL_ERROR "Error: %s"

#define TGXP_DMS_ERROR_ENTRY "Could not call entry point \"%s\" of module \"%s\".\n"
#define TGXP_DMS_ENTRY_OK "Plugin \"%s\" initialized with command word \"%s\".\n"
#define TGXP_DMS_ENTRY_FAIL "Initialization of \"%s\" failed.\n"
#define TGXP_DMS_ENTRY_CONFLICT "The command word \"%s\" of module \"%s\" is conflicting with module \"%s\"."

#define TGXP_DMS_ERROR_CALL "Could not call command routine \"%s\" of module \"%s\".\n"

#define TGXP_FOPEN_FLAGS "rw"

#endif