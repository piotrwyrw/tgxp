# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/piotr/tgxp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/piotr/tgxp

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/piotr/tgxp/CMakeFiles /home/piotr/tgxp//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/piotr/tgxp/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named tgxp

# Build rule for target.
tgxp: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 tgxp
.PHONY : tgxp

# fast build rule for target.
tgxp/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/build
.PHONY : tgxp/fast

#=============================================================================
# Target rules for targets named circle

# Build rule for target.
circle: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 circle
.PHONY : circle

# fast build rule for target.
circle/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/circle.dir/build.make CMakeFiles/circle.dir/build
.PHONY : circle/fast

plugins/circle.o: plugins/circle.c.o
.PHONY : plugins/circle.o

# target to build an object file
plugins/circle.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/circle.dir/build.make CMakeFiles/circle.dir/plugins/circle.c.o
.PHONY : plugins/circle.c.o

plugins/circle.i: plugins/circle.c.i
.PHONY : plugins/circle.i

# target to preprocess a source file
plugins/circle.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/circle.dir/build.make CMakeFiles/circle.dir/plugins/circle.c.i
.PHONY : plugins/circle.c.i

plugins/circle.s: plugins/circle.c.s
.PHONY : plugins/circle.s

# target to generate assembly for a file
plugins/circle.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/circle.dir/build.make CMakeFiles/circle.dir/plugins/circle.c.s
.PHONY : plugins/circle.c.s

tgxp/cli.o: tgxp/cli.c.o
.PHONY : tgxp/cli.o

# target to build an object file
tgxp/cli.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cli.c.o
.PHONY : tgxp/cli.c.o

tgxp/cli.i: tgxp/cli.c.i
.PHONY : tgxp/cli.i

# target to preprocess a source file
tgxp/cli.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cli.c.i
.PHONY : tgxp/cli.c.i

tgxp/cli.s: tgxp/cli.c.s
.PHONY : tgxp/cli.s

# target to generate assembly for a file
tgxp/cli.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cli.c.s
.PHONY : tgxp/cli.c.s

tgxp/cmd/attach.o: tgxp/cmd/attach.c.o
.PHONY : tgxp/cmd/attach.o

# target to build an object file
tgxp/cmd/attach.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.o
.PHONY : tgxp/cmd/attach.c.o

tgxp/cmd/attach.i: tgxp/cmd/attach.c.i
.PHONY : tgxp/cmd/attach.i

# target to preprocess a source file
tgxp/cmd/attach.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.i
.PHONY : tgxp/cmd/attach.c.i

tgxp/cmd/attach.s: tgxp/cmd/attach.c.s
.PHONY : tgxp/cmd/attach.s

# target to generate assembly for a file
tgxp/cmd/attach.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.s
.PHONY : tgxp/cmd/attach.c.s

tgxp/cmd/color.o: tgxp/cmd/color.c.o
.PHONY : tgxp/cmd/color.o

# target to build an object file
tgxp/cmd/color.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/color.c.o
.PHONY : tgxp/cmd/color.c.o

tgxp/cmd/color.i: tgxp/cmd/color.c.i
.PHONY : tgxp/cmd/color.i

# target to preprocess a source file
tgxp/cmd/color.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/color.c.i
.PHONY : tgxp/cmd/color.c.i

tgxp/cmd/color.s: tgxp/cmd/color.c.s
.PHONY : tgxp/cmd/color.s

# target to generate assembly for a file
tgxp/cmd/color.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/color.c.s
.PHONY : tgxp/cmd/color.c.s

tgxp/cmd/commit.o: tgxp/cmd/commit.c.o
.PHONY : tgxp/cmd/commit.o

# target to build an object file
tgxp/cmd/commit.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.o
.PHONY : tgxp/cmd/commit.c.o

tgxp/cmd/commit.i: tgxp/cmd/commit.c.i
.PHONY : tgxp/cmd/commit.i

# target to preprocess a source file
tgxp/cmd/commit.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.i
.PHONY : tgxp/cmd/commit.c.i

tgxp/cmd/commit.s: tgxp/cmd/commit.c.s
.PHONY : tgxp/cmd/commit.s

# target to generate assembly for a file
tgxp/cmd/commit.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.s
.PHONY : tgxp/cmd/commit.c.s

tgxp/cmd/detach.o: tgxp/cmd/detach.c.o
.PHONY : tgxp/cmd/detach.o

# target to build an object file
tgxp/cmd/detach.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.o
.PHONY : tgxp/cmd/detach.c.o

tgxp/cmd/detach.i: tgxp/cmd/detach.c.i
.PHONY : tgxp/cmd/detach.i

# target to preprocess a source file
tgxp/cmd/detach.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.i
.PHONY : tgxp/cmd/detach.c.i

tgxp/cmd/detach.s: tgxp/cmd/detach.c.s
.PHONY : tgxp/cmd/detach.s

# target to generate assembly for a file
tgxp/cmd/detach.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.s
.PHONY : tgxp/cmd/detach.c.s

tgxp/cmd/init.o: tgxp/cmd/init.c.o
.PHONY : tgxp/cmd/init.o

# target to build an object file
tgxp/cmd/init.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/init.c.o
.PHONY : tgxp/cmd/init.c.o

tgxp/cmd/init.i: tgxp/cmd/init.c.i
.PHONY : tgxp/cmd/init.i

# target to preprocess a source file
tgxp/cmd/init.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/init.c.i
.PHONY : tgxp/cmd/init.c.i

tgxp/cmd/init.s: tgxp/cmd/init.c.s
.PHONY : tgxp/cmd/init.s

# target to generate assembly for a file
tgxp/cmd/init.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/init.c.s
.PHONY : tgxp/cmd/init.c.s

tgxp/cmd/set.o: tgxp/cmd/set.c.o
.PHONY : tgxp/cmd/set.o

# target to build an object file
tgxp/cmd/set.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/set.c.o
.PHONY : tgxp/cmd/set.c.o

tgxp/cmd/set.i: tgxp/cmd/set.c.i
.PHONY : tgxp/cmd/set.i

# target to preprocess a source file
tgxp/cmd/set.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/set.c.i
.PHONY : tgxp/cmd/set.c.i

tgxp/cmd/set.s: tgxp/cmd/set.c.s
.PHONY : tgxp/cmd/set.s

# target to generate assembly for a file
tgxp/cmd/set.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cmd/set.c.s
.PHONY : tgxp/cmd/set.c.s

tgxp/cpr.o: tgxp/cpr.c.o
.PHONY : tgxp/cpr.o

# target to build an object file
tgxp/cpr.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cpr.c.o
.PHONY : tgxp/cpr.c.o

tgxp/cpr.i: tgxp/cpr.c.i
.PHONY : tgxp/cpr.i

# target to preprocess a source file
tgxp/cpr.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cpr.c.i
.PHONY : tgxp/cpr.c.i

tgxp/cpr.s: tgxp/cpr.c.s
.PHONY : tgxp/cpr.s

# target to generate assembly for a file
tgxp/cpr.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/cpr.c.s
.PHONY : tgxp/cpr.c.s

tgxp/dms/dms.o: tgxp/dms/dms.c.o
.PHONY : tgxp/dms/dms.o

# target to build an object file
tgxp/dms/dms.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/dms/dms.c.o
.PHONY : tgxp/dms/dms.c.o

tgxp/dms/dms.i: tgxp/dms/dms.c.i
.PHONY : tgxp/dms/dms.i

# target to preprocess a source file
tgxp/dms/dms.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/dms/dms.c.i
.PHONY : tgxp/dms/dms.c.i

tgxp/dms/dms.s: tgxp/dms/dms.c.s
.PHONY : tgxp/dms/dms.s

# target to generate assembly for a file
tgxp/dms/dms.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/dms/dms.c.s
.PHONY : tgxp/dms/dms.c.s

tgxp/env.o: tgxp/env.c.o
.PHONY : tgxp/env.o

# target to build an object file
tgxp/env.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/env.c.o
.PHONY : tgxp/env.c.o

tgxp/env.i: tgxp/env.c.i
.PHONY : tgxp/env.i

# target to preprocess a source file
tgxp/env.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/env.c.i
.PHONY : tgxp/env.c.i

tgxp/env.s: tgxp/env.c.s
.PHONY : tgxp/env.s

# target to generate assembly for a file
tgxp/env.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/env.c.s
.PHONY : tgxp/env.c.s

tgxp/errc.o: tgxp/errc.c.o
.PHONY : tgxp/errc.o

# target to build an object file
tgxp/errc.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/errc.c.o
.PHONY : tgxp/errc.c.o

tgxp/errc.i: tgxp/errc.c.i
.PHONY : tgxp/errc.i

# target to preprocess a source file
tgxp/errc.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/errc.c.i
.PHONY : tgxp/errc.c.i

tgxp/errc.s: tgxp/errc.c.s
.PHONY : tgxp/errc.s

# target to generate assembly for a file
tgxp/errc.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/errc.c.s
.PHONY : tgxp/errc.c.s

tgxp/main.o: tgxp/main.c.o
.PHONY : tgxp/main.o

# target to build an object file
tgxp/main.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/main.c.o
.PHONY : tgxp/main.c.o

tgxp/main.i: tgxp/main.c.i
.PHONY : tgxp/main.i

# target to preprocess a source file
tgxp/main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/main.c.i
.PHONY : tgxp/main.c.i

tgxp/main.s: tgxp/main.c.s
.PHONY : tgxp/main.s

# target to generate assembly for a file
tgxp/main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/main.c.s
.PHONY : tgxp/main.c.s

tgxp/parse.o: tgxp/parse.c.o
.PHONY : tgxp/parse.o

# target to build an object file
tgxp/parse.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/parse.c.o
.PHONY : tgxp/parse.c.o

tgxp/parse.i: tgxp/parse.c.i
.PHONY : tgxp/parse.i

# target to preprocess a source file
tgxp/parse.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/parse.c.i
.PHONY : tgxp/parse.c.i

tgxp/parse.s: tgxp/parse.c.s
.PHONY : tgxp/parse.s

# target to generate assembly for a file
tgxp/parse.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/parse.c.s
.PHONY : tgxp/parse.c.s

tgxp/proc.o: tgxp/proc.c.o
.PHONY : tgxp/proc.o

# target to build an object file
tgxp/proc.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/proc.c.o
.PHONY : tgxp/proc.c.o

tgxp/proc.i: tgxp/proc.c.i
.PHONY : tgxp/proc.i

# target to preprocess a source file
tgxp/proc.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/proc.c.i
.PHONY : tgxp/proc.c.i

tgxp/proc.s: tgxp/proc.c.s
.PHONY : tgxp/proc.s

# target to generate assembly for a file
tgxp/proc.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/proc.c.s
.PHONY : tgxp/proc.c.s

tgxp/strhlp.o: tgxp/strhlp.c.o
.PHONY : tgxp/strhlp.o

# target to build an object file
tgxp/strhlp.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/strhlp.c.o
.PHONY : tgxp/strhlp.c.o

tgxp/strhlp.i: tgxp/strhlp.c.i
.PHONY : tgxp/strhlp.i

# target to preprocess a source file
tgxp/strhlp.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/strhlp.c.i
.PHONY : tgxp/strhlp.c.i

tgxp/strhlp.s: tgxp/strhlp.c.s
.PHONY : tgxp/strhlp.s

# target to generate assembly for a file
tgxp/strhlp.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/strhlp.c.s
.PHONY : tgxp/strhlp.c.s

tgxp/tgxpf/tgxpf.o: tgxp/tgxpf/tgxpf.c.o
.PHONY : tgxp/tgxpf/tgxpf.o

# target to build an object file
tgxp/tgxpf/tgxpf.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.o
.PHONY : tgxp/tgxpf/tgxpf.c.o

tgxp/tgxpf/tgxpf.i: tgxp/tgxpf/tgxpf.c.i
.PHONY : tgxp/tgxpf/tgxpf.i

# target to preprocess a source file
tgxp/tgxpf/tgxpf.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.i
.PHONY : tgxp/tgxpf/tgxpf.c.i

tgxp/tgxpf/tgxpf.s: tgxp/tgxpf/tgxpf.c.s
.PHONY : tgxp/tgxpf/tgxpf.s

# target to generate assembly for a file
tgxp/tgxpf/tgxpf.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.s
.PHONY : tgxp/tgxpf/tgxpf.c.s

tgxp/umath.o: tgxp/umath.c.o
.PHONY : tgxp/umath.o

# target to build an object file
tgxp/umath.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/umath.c.o
.PHONY : tgxp/umath.c.o

tgxp/umath.i: tgxp/umath.c.i
.PHONY : tgxp/umath.i

# target to preprocess a source file
tgxp/umath.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/umath.c.i
.PHONY : tgxp/umath.c.i

tgxp/umath.s: tgxp/umath.c.s
.PHONY : tgxp/umath.s

# target to generate assembly for a file
tgxp/umath.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/tgxp.dir/build.make CMakeFiles/tgxp.dir/tgxp/umath.c.s
.PHONY : tgxp/umath.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... circle"
	@echo "... tgxp"
	@echo "... plugins/circle.o"
	@echo "... plugins/circle.i"
	@echo "... plugins/circle.s"
	@echo "... tgxp/cli.o"
	@echo "... tgxp/cli.i"
	@echo "... tgxp/cli.s"
	@echo "... tgxp/cmd/attach.o"
	@echo "... tgxp/cmd/attach.i"
	@echo "... tgxp/cmd/attach.s"
	@echo "... tgxp/cmd/color.o"
	@echo "... tgxp/cmd/color.i"
	@echo "... tgxp/cmd/color.s"
	@echo "... tgxp/cmd/commit.o"
	@echo "... tgxp/cmd/commit.i"
	@echo "... tgxp/cmd/commit.s"
	@echo "... tgxp/cmd/detach.o"
	@echo "... tgxp/cmd/detach.i"
	@echo "... tgxp/cmd/detach.s"
	@echo "... tgxp/cmd/init.o"
	@echo "... tgxp/cmd/init.i"
	@echo "... tgxp/cmd/init.s"
	@echo "... tgxp/cmd/set.o"
	@echo "... tgxp/cmd/set.i"
	@echo "... tgxp/cmd/set.s"
	@echo "... tgxp/cpr.o"
	@echo "... tgxp/cpr.i"
	@echo "... tgxp/cpr.s"
	@echo "... tgxp/dms/dms.o"
	@echo "... tgxp/dms/dms.i"
	@echo "... tgxp/dms/dms.s"
	@echo "... tgxp/env.o"
	@echo "... tgxp/env.i"
	@echo "... tgxp/env.s"
	@echo "... tgxp/errc.o"
	@echo "... tgxp/errc.i"
	@echo "... tgxp/errc.s"
	@echo "... tgxp/main.o"
	@echo "... tgxp/main.i"
	@echo "... tgxp/main.s"
	@echo "... tgxp/parse.o"
	@echo "... tgxp/parse.i"
	@echo "... tgxp/parse.s"
	@echo "... tgxp/proc.o"
	@echo "... tgxp/proc.i"
	@echo "... tgxp/proc.s"
	@echo "... tgxp/strhlp.o"
	@echo "... tgxp/strhlp.i"
	@echo "... tgxp/strhlp.s"
	@echo "... tgxp/tgxpf/tgxpf.o"
	@echo "... tgxp/tgxpf/tgxpf.i"
	@echo "... tgxp/tgxpf/tgxpf.s"
	@echo "... tgxp/umath.o"
	@echo "... tgxp/umath.i"
	@echo "... tgxp/umath.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

