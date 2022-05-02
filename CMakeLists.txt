#cmake_minimum_required(VERSION 3.21)
set(CMAKE_C_STANDARD 99)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY build)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY build)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY build)

project(tgxp C)
set(TGXP_SOURCE_FILES tgxp/main.c tgxp/tgxpf/tgxpf.h tgxp/tgxpf/tgxpf.c tgxp/const.h tgxp/cli.h tgxp/cli.c tgxp/strhlp.h tgxp/strhlp.c tgxp/parse.h tgxp/parse.c tgxp/msg.h tgxp/proc.h tgxp/proc.c tgxp/errc.h tgxp/errc.c tgxp/cpr.h tgxp/cpr.c tgxp/env.h tgxp/env.c tgxp/umath.h tgxp/umath.c tgxp/cmd/init.h tgxp/cmd/init.c tgxp/cmd/include.h tgxp/cmd/commit.h tgxp/cmd/commit.c tgxp/cmd/intern.h tgxp/cmd/detach.h tgxp/cmd/detach.c tgxp/cmd/attach.h tgxp/cmd/attach.c tgxp/cmd/set.h tgxp/cmd/set.c tgxp/dms/dms.h tgxp/dms/dms.c tgxp/dms/modl.h)
add_executable(tgxp ${TGXP_SOURCE_FILES})

set(CMAKE_SHARED_LIBRARY_PREFIX "")
add_library(test SHARED plugins/test.c)