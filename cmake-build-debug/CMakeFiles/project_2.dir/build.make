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

CMakeFiles/project_2.dir/main.cpp.o: CMakeFiles/project_2.dir/flags.make
CMakeFiles/project_2.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/project_2.dir/main.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/project_2.dir/main.cpp.o -c "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/main.cpp"

CMakeFiles/project_2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project_2.dir/main.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/main.cpp" > CMakeFiles/project_2.dir/main.cpp.i

CMakeFiles/project_2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project_2.dir/main.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/main.cpp" -o CMakeFiles/project_2.dir/main.cpp.s

# Object files for target project_2
project_2_OBJECTS = \
"CMakeFiles/project_2.dir/main.cpp.o"

# External object files for target project_2
project_2_EXTERNAL_OBJECTS =

project_2.exe: CMakeFiles/project_2.dir/main.cpp.o
project_2.exe: CMakeFiles/project_2.dir/build.make
project_2.exe: CMakeFiles/project_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/c/Users/Ethan Khoe/CLionProjects/project_2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable project_2.exe"
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

