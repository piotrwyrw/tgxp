# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/piotrwyrw/tgxp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/piotrwyrw/tgxp

# Include any dependencies generated for this target.
include CMakeFiles/tgxp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tgxp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tgxp.dir/flags.make

CMakeFiles/tgxp.dir/tgxp/main.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/main.c.o: tgxp/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tgxp.dir/tgxp/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/main.c.o -c /home/piotrwyrw/tgxp/tgxp/main.c

CMakeFiles/tgxp.dir/tgxp/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/main.c > CMakeFiles/tgxp.dir/tgxp/main.c.i

CMakeFiles/tgxp.dir/tgxp/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/main.c -o CMakeFiles/tgxp.dir/tgxp/main.c.s

CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.o: tgxp/tgxpf/tgxpf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.o -c /home/piotrwyrw/tgxp/tgxp/tgxpf/tgxpf.c

CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/tgxpf/tgxpf.c > CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.i

CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/tgxpf/tgxpf.c -o CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.s

CMakeFiles/tgxp.dir/tgxp/cli.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/cli.c.o: tgxp/cli.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/tgxp.dir/tgxp/cli.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/cli.c.o -c /home/piotrwyrw/tgxp/tgxp/cli.c

CMakeFiles/tgxp.dir/tgxp/cli.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/cli.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/cli.c > CMakeFiles/tgxp.dir/tgxp/cli.c.i

CMakeFiles/tgxp.dir/tgxp/cli.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/cli.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/cli.c -o CMakeFiles/tgxp.dir/tgxp/cli.c.s

CMakeFiles/tgxp.dir/tgxp/strhlp.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/strhlp.c.o: tgxp/strhlp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/tgxp.dir/tgxp/strhlp.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/strhlp.c.o -c /home/piotrwyrw/tgxp/tgxp/strhlp.c

CMakeFiles/tgxp.dir/tgxp/strhlp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/strhlp.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/strhlp.c > CMakeFiles/tgxp.dir/tgxp/strhlp.c.i

CMakeFiles/tgxp.dir/tgxp/strhlp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/strhlp.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/strhlp.c -o CMakeFiles/tgxp.dir/tgxp/strhlp.c.s

CMakeFiles/tgxp.dir/tgxp/parse.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/parse.c.o: tgxp/parse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/tgxp.dir/tgxp/parse.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/parse.c.o -c /home/piotrwyrw/tgxp/tgxp/parse.c

CMakeFiles/tgxp.dir/tgxp/parse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/parse.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/parse.c > CMakeFiles/tgxp.dir/tgxp/parse.c.i

CMakeFiles/tgxp.dir/tgxp/parse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/parse.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/parse.c -o CMakeFiles/tgxp.dir/tgxp/parse.c.s

CMakeFiles/tgxp.dir/tgxp/proc.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/proc.c.o: tgxp/proc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/tgxp.dir/tgxp/proc.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/proc.c.o -c /home/piotrwyrw/tgxp/tgxp/proc.c

CMakeFiles/tgxp.dir/tgxp/proc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/proc.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/proc.c > CMakeFiles/tgxp.dir/tgxp/proc.c.i

CMakeFiles/tgxp.dir/tgxp/proc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/proc.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/proc.c -o CMakeFiles/tgxp.dir/tgxp/proc.c.s

CMakeFiles/tgxp.dir/tgxp/errc.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/errc.c.o: tgxp/errc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/tgxp.dir/tgxp/errc.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/errc.c.o -c /home/piotrwyrw/tgxp/tgxp/errc.c

CMakeFiles/tgxp.dir/tgxp/errc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/errc.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/errc.c > CMakeFiles/tgxp.dir/tgxp/errc.c.i

CMakeFiles/tgxp.dir/tgxp/errc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/errc.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/errc.c -o CMakeFiles/tgxp.dir/tgxp/errc.c.s

CMakeFiles/tgxp.dir/tgxp/cpr.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/cpr.c.o: tgxp/cpr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/tgxp.dir/tgxp/cpr.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/cpr.c.o -c /home/piotrwyrw/tgxp/tgxp/cpr.c

CMakeFiles/tgxp.dir/tgxp/cpr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/cpr.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/cpr.c > CMakeFiles/tgxp.dir/tgxp/cpr.c.i

CMakeFiles/tgxp.dir/tgxp/cpr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/cpr.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/cpr.c -o CMakeFiles/tgxp.dir/tgxp/cpr.c.s

CMakeFiles/tgxp.dir/tgxp/env.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/env.c.o: tgxp/env.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/tgxp.dir/tgxp/env.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/env.c.o -c /home/piotrwyrw/tgxp/tgxp/env.c

CMakeFiles/tgxp.dir/tgxp/env.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/env.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/env.c > CMakeFiles/tgxp.dir/tgxp/env.c.i

CMakeFiles/tgxp.dir/tgxp/env.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/env.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/env.c -o CMakeFiles/tgxp.dir/tgxp/env.c.s

CMakeFiles/tgxp.dir/tgxp/umath.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/umath.c.o: tgxp/umath.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/tgxp.dir/tgxp/umath.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/umath.c.o -c /home/piotrwyrw/tgxp/tgxp/umath.c

CMakeFiles/tgxp.dir/tgxp/umath.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/umath.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/umath.c > CMakeFiles/tgxp.dir/tgxp/umath.c.i

CMakeFiles/tgxp.dir/tgxp/umath.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/umath.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/umath.c -o CMakeFiles/tgxp.dir/tgxp/umath.c.s

CMakeFiles/tgxp.dir/tgxp/cmd/init.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/cmd/init.c.o: tgxp/cmd/init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/tgxp.dir/tgxp/cmd/init.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/cmd/init.c.o -c /home/piotrwyrw/tgxp/tgxp/cmd/init.c

CMakeFiles/tgxp.dir/tgxp/cmd/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/cmd/init.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/cmd/init.c > CMakeFiles/tgxp.dir/tgxp/cmd/init.c.i

CMakeFiles/tgxp.dir/tgxp/cmd/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/cmd/init.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/cmd/init.c -o CMakeFiles/tgxp.dir/tgxp/cmd/init.c.s

CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.o: tgxp/cmd/commit.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.o -c /home/piotrwyrw/tgxp/tgxp/cmd/commit.c

CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/cmd/commit.c > CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.i

CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/cmd/commit.c -o CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.s

CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.o: tgxp/cmd/detach.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.o -c /home/piotrwyrw/tgxp/tgxp/cmd/detach.c

CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/cmd/detach.c > CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.i

CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/cmd/detach.c -o CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.s

CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.o: tgxp/cmd/attach.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.o -c /home/piotrwyrw/tgxp/tgxp/cmd/attach.c

CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/cmd/attach.c > CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.i

CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/cmd/attach.c -o CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.s

CMakeFiles/tgxp.dir/tgxp/cmd/set.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/cmd/set.c.o: tgxp/cmd/set.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/tgxp.dir/tgxp/cmd/set.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/cmd/set.c.o -c /home/piotrwyrw/tgxp/tgxp/cmd/set.c

CMakeFiles/tgxp.dir/tgxp/cmd/set.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/cmd/set.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/cmd/set.c > CMakeFiles/tgxp.dir/tgxp/cmd/set.c.i

CMakeFiles/tgxp.dir/tgxp/cmd/set.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/cmd/set.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/cmd/set.c -o CMakeFiles/tgxp.dir/tgxp/cmd/set.c.s

CMakeFiles/tgxp.dir/tgxp/dms/dms.c.o: CMakeFiles/tgxp.dir/flags.make
CMakeFiles/tgxp.dir/tgxp/dms/dms.c.o: tgxp/dms/dms.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/tgxp.dir/tgxp/dms/dms.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tgxp.dir/tgxp/dms/dms.c.o -c /home/piotrwyrw/tgxp/tgxp/dms/dms.c

CMakeFiles/tgxp.dir/tgxp/dms/dms.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tgxp.dir/tgxp/dms/dms.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piotrwyrw/tgxp/tgxp/dms/dms.c > CMakeFiles/tgxp.dir/tgxp/dms/dms.c.i

CMakeFiles/tgxp.dir/tgxp/dms/dms.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tgxp.dir/tgxp/dms/dms.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piotrwyrw/tgxp/tgxp/dms/dms.c -o CMakeFiles/tgxp.dir/tgxp/dms/dms.c.s

# Object files for target tgxp
tgxp_OBJECTS = \
"CMakeFiles/tgxp.dir/tgxp/main.c.o" \
"CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.o" \
"CMakeFiles/tgxp.dir/tgxp/cli.c.o" \
"CMakeFiles/tgxp.dir/tgxp/strhlp.c.o" \
"CMakeFiles/tgxp.dir/tgxp/parse.c.o" \
"CMakeFiles/tgxp.dir/tgxp/proc.c.o" \
"CMakeFiles/tgxp.dir/tgxp/errc.c.o" \
"CMakeFiles/tgxp.dir/tgxp/cpr.c.o" \
"CMakeFiles/tgxp.dir/tgxp/env.c.o" \
"CMakeFiles/tgxp.dir/tgxp/umath.c.o" \
"CMakeFiles/tgxp.dir/tgxp/cmd/init.c.o" \
"CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.o" \
"CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.o" \
"CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.o" \
"CMakeFiles/tgxp.dir/tgxp/cmd/set.c.o" \
"CMakeFiles/tgxp.dir/tgxp/dms/dms.c.o"

# External object files for target tgxp
tgxp_EXTERNAL_OBJECTS =

build/tgxp: CMakeFiles/tgxp.dir/tgxp/main.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/tgxpf/tgxpf.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/cli.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/strhlp.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/parse.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/proc.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/errc.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/cpr.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/env.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/umath.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/cmd/init.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/cmd/commit.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/cmd/detach.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/cmd/attach.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/cmd/set.c.o
build/tgxp: CMakeFiles/tgxp.dir/tgxp/dms/dms.c.o
build/tgxp: CMakeFiles/tgxp.dir/build.make
build/tgxp: CMakeFiles/tgxp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/piotrwyrw/tgxp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking C executable build/tgxp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tgxp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tgxp.dir/build: build/tgxp

.PHONY : CMakeFiles/tgxp.dir/build

CMakeFiles/tgxp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tgxp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tgxp.dir/clean

CMakeFiles/tgxp.dir/depend:
	cd /home/piotrwyrw/tgxp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/piotrwyrw/tgxp /home/piotrwyrw/tgxp /home/piotrwyrw/tgxp /home/piotrwyrw/tgxp /home/piotrwyrw/tgxp/CMakeFiles/tgxp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tgxp.dir/depend
