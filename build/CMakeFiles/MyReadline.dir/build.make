# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/MyReadline

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/MyReadline/build

# Include any dependencies generated for this target.
include CMakeFiles/MyReadline.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MyReadline.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MyReadline.dir/flags.make

CMakeFiles/MyReadline.dir/MyReadline.cpp.o: CMakeFiles/MyReadline.dir/flags.make
CMakeFiles/MyReadline.dir/MyReadline.cpp.o: ../MyReadline.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/MyReadline/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MyReadline.dir/MyReadline.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyReadline.dir/MyReadline.cpp.o -c /root/MyReadline/MyReadline.cpp

CMakeFiles/MyReadline.dir/MyReadline.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyReadline.dir/MyReadline.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/MyReadline/MyReadline.cpp > CMakeFiles/MyReadline.dir/MyReadline.cpp.i

CMakeFiles/MyReadline.dir/MyReadline.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyReadline.dir/MyReadline.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/MyReadline/MyReadline.cpp -o CMakeFiles/MyReadline.dir/MyReadline.cpp.s

# Object files for target MyReadline
MyReadline_OBJECTS = \
"CMakeFiles/MyReadline.dir/MyReadline.cpp.o"

# External object files for target MyReadline
MyReadline_EXTERNAL_OBJECTS =

MyReadline: CMakeFiles/MyReadline.dir/MyReadline.cpp.o
MyReadline: CMakeFiles/MyReadline.dir/build.make
MyReadline: CMakeFiles/MyReadline.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/MyReadline/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MyReadline"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyReadline.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MyReadline.dir/build: MyReadline

.PHONY : CMakeFiles/MyReadline.dir/build

CMakeFiles/MyReadline.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MyReadline.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MyReadline.dir/clean

CMakeFiles/MyReadline.dir/depend:
	cd /root/MyReadline/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/MyReadline /root/MyReadline /root/MyReadline/build /root/MyReadline/build /root/MyReadline/build/CMakeFiles/MyReadline.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MyReadline.dir/depend

