# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/cygdrive/c/Users/Ethan Khoe/.CLion2018.2/system/cygwin_cmake/bin/cmake.exe"

# The command to remove a file.
RM = "/cygdrive/c/Users/Ethan Khoe/.CLion2018.2/system/cygwin_cmake/bin/cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/project_2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/project_2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/project_2.dir/flags.make

CMakeFiles/project_2.dir/queue_tester.c.o: CMakeFiles/project_2.dir/flags.make
CMakeFiles/project_2.dir/queue_tester.c.o: ../queue_tester.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/project_2.dir/queue_tester.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/project_2.dir/queue_tester.c.o   -c "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/queue_tester.c"

CMakeFiles/project_2.dir/queue_tester.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/project_2.dir/queue_tester.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/queue_tester.c" > CMakeFiles/project_2.dir/queue_tester.c.i

CMakeFiles/project_2.dir/queue_tester.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/project_2.dir/queue_tester.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/queue_tester.c" -o CMakeFiles/project_2.dir/queue_tester.c.s

CMakeFiles/project_2.dir/queue.c.o: CMakeFiles/project_2.dir/flags.make
CMakeFiles/project_2.dir/queue.c.o: ../queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/project_2.dir/queue.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/project_2.dir/queue.c.o   -c "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/queue.c"

CMakeFiles/project_2.dir/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/project_2.dir/queue.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/queue.c" > CMakeFiles/project_2.dir/queue.c.i

CMakeFiles/project_2.dir/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/project_2.dir/queue.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/queue.c" -o CMakeFiles/project_2.dir/queue.c.s

CMakeFiles/project_2.dir/uthread.c.o: CMakeFiles/project_2.dir/flags.make
CMakeFiles/project_2.dir/uthread.c.o: ../uthread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/project_2.dir/uthread.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/project_2.dir/uthread.c.o   -c "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/uthread.c"

CMakeFiles/project_2.dir/uthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/project_2.dir/uthread.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/uthread.c" > CMakeFiles/project_2.dir/uthread.c.i

CMakeFiles/project_2.dir/uthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/project_2.dir/uthread.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/uthread.c" -o CMakeFiles/project_2.dir/uthread.c.s

CMakeFiles/project_2.dir/context.c.o: CMakeFiles/project_2.dir/flags.make
CMakeFiles/project_2.dir/context.c.o: ../context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/project_2.dir/context.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/project_2.dir/context.c.o   -c "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/context.c"

CMakeFiles/project_2.dir/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/project_2.dir/context.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/context.c" > CMakeFiles/project_2.dir/context.c.i

CMakeFiles/project_2.dir/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/project_2.dir/context.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/context.c" -o CMakeFiles/project_2.dir/context.c.s

CMakeFiles/project_2.dir/uthread_hello.c.o: CMakeFiles/project_2.dir/flags.make
CMakeFiles/project_2.dir/uthread_hello.c.o: ../uthread_hello.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/project_2.dir/uthread_hello.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/project_2.dir/uthread_hello.c.o   -c "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/uthread_hello.c"

CMakeFiles/project_2.dir/uthread_hello.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/project_2.dir/uthread_hello.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/uthread_hello.c" > CMakeFiles/project_2.dir/uthread_hello.c.i

CMakeFiles/project_2.dir/uthread_hello.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/project_2.dir/uthread_hello.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/uthread_hello.c" -o CMakeFiles/project_2.dir/uthread_hello.c.s

CMakeFiles/project_2.dir/preempt.c.o: CMakeFiles/project_2.dir/flags.make
CMakeFiles/project_2.dir/preempt.c.o: ../preempt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/project_2.dir/preempt.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/project_2.dir/preempt.c.o   -c "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/preempt.c"

CMakeFiles/project_2.dir/preempt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/project_2.dir/preempt.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/preempt.c" > CMakeFiles/project_2.dir/preempt.c.i

CMakeFiles/project_2.dir/preempt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/project_2.dir/preempt.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/preempt.c" -o CMakeFiles/project_2.dir/preempt.c.s

CMakeFiles/project_2.dir/uthread_yield.c.o: CMakeFiles/project_2.dir/flags.make
CMakeFiles/project_2.dir/uthread_yield.c.o: ../uthread_yield.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/project_2.dir/uthread_yield.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/project_2.dir/uthread_yield.c.o   -c "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/uthread_yield.c"

CMakeFiles/project_2.dir/uthread_yield.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/project_2.dir/uthread_yield.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/uthread_yield.c" > CMakeFiles/project_2.dir/uthread_yield.c.i

CMakeFiles/project_2.dir/uthread_yield.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/project_2.dir/uthread_yield.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/uthread_yield.c" -o CMakeFiles/project_2.dir/uthread_yield.c.s

# Object files for target project_2
project_2_OBJECTS = \
"CMakeFiles/project_2.dir/queue_tester.c.o" \
"CMakeFiles/project_2.dir/queue.c.o" \
"CMakeFiles/project_2.dir/uthread.c.o" \
"CMakeFiles/project_2.dir/context.c.o" \
"CMakeFiles/project_2.dir/uthread_hello.c.o" \
"CMakeFiles/project_2.dir/preempt.c.o" \
"CMakeFiles/project_2.dir/uthread_yield.c.o"

# External object files for target project_2
project_2_EXTERNAL_OBJECTS =

project_2.exe: CMakeFiles/project_2.dir/queue_tester.c.o
project_2.exe: CMakeFiles/project_2.dir/queue.c.o
project_2.exe: CMakeFiles/project_2.dir/uthread.c.o
project_2.exe: CMakeFiles/project_2.dir/context.c.o
project_2.exe: CMakeFiles/project_2.dir/uthread_hello.c.o
project_2.exe: CMakeFiles/project_2.dir/preempt.c.o
project_2.exe: CMakeFiles/project_2.dir/uthread_yield.c.o
project_2.exe: CMakeFiles/project_2.dir/build.make
project_2.exe: CMakeFiles/project_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Linking C executable project_2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/project_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/project_2.dir/build: project_2.exe

.PHONY : CMakeFiles/project_2.dir/build

CMakeFiles/project_2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/project_2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/project_2.dir/clean

CMakeFiles/project_2.dir/depend:
	cd "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2" "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2" "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug" "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug" "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug/CMakeFiles/project_2.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/project_2.dir/depend

