cmake_minimum_required(VERSION 3.21)
project(tgxp C)

find_package(Lua REQUIRED)

include_directories(/usr/local/include ${LUA_INCLUDE_DIR})

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES src/main.c src/tgxpf/tgxpf.h src/tgxpf/tgxpf.c src/const.h src/cli.h src/cli.c src/strhlp.h src/strhlp.c src/parse.h src/parse.c src/msg.h src/proc.h src/proc.c src/errc.h src/errc.c src/cpr.h src/cpr.c src/env.h src/env.c src/umath.h src/umath.c src/cmd/init.h src/cmd/init.c src/cmd/include.h src/cmd/commit.h src/cmd/commit.c src/cmd/intern.h src/cmd/detach.h src/cmd/detach.c src/cmd/attach.h src/cmd/attach.c src/cmd/set.h src/cmd/set.c src/cmd/rect.h src/plug/luai.c src/ufs.c)

add_executable(tgxp ${SOURCE_FILES})
target_link_libraries(tgxp ${LUA_LIBRARIES})
