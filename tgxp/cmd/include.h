/**
 * There's a new prefix for TGXP Commands -- TGXPC
 * It is used to be easily able to distinguish between internal TGXP
 * methods and TGXP commands available to the end user of the REPL.
 *
 * This file allows to either include all commands (as needed for the CPR) with
 * the TGXP_INCLUDE_EVERYTHING define, or include them selectively (for individual
 * testing) using their respective defines, which you can look up below.
 * For ease, all defines are formatted as follows: TGXPC_INCLUDE_`command name`
 */

#if defined(TGXPC_INCLUDE_INIT) || defined (TGXPC_INCLUDE_EVERYTHING)
#   include "init.h"
#endif

#if defined(TGXPC_INCLUDE_COMMIT) || defined (TGXPC_INCLUDE_EVERYTHING)
#   include "commit.h"
#endif

#if defined(TGXPC_INCLUDE_DETACH) || defined (TGXPC_INCLUDE_EVERYTHING)
#   include "detach.h"
#endif

#if defined(TGXPC_INCLUDE_ATTACH) || defined (TGXPC_INCLUDE_EVERYTHING)
#   include "attach.h"
#endif

#if defined(TGXPC_INCLUDE_SET) || defined (TGXPC_INCLUDE_EVERYTHING)
#   include "set.h"
#endif