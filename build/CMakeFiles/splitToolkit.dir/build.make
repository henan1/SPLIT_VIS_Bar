# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hnz8/Documents/SPLIT_VIS2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hnz8/Documents/SPLIT_VIS2/build

# Include any dependencies generated for this target.
include CMakeFiles/splitToolkit.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/splitToolkit.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/splitToolkit.dir/flags.make

CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o: CMakeFiles/splitToolkit.dir/flags.make
CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o: ../SplitTool/splitToolkit.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/hnz8/Documents/SPLIT_VIS2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o -c /home/hnz8/Documents/SPLIT_VIS2/SplitTool/splitToolkit.cpp

CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/hnz8/Documents/SPLIT_VIS2/SplitTool/splitToolkit.cpp > CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.i

CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/hnz8/Documents/SPLIT_VIS2/SplitTool/splitToolkit.cpp -o CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.s

CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o.requires:
.PHONY : CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o.requires

CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o.provides: CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o.requires
	$(MAKE) -f CMakeFiles/splitToolkit.dir/build.make CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o.provides.build
.PHONY : CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o.provides

CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o.provides.build: CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o

# Object files for target splitToolkit
splitToolkit_OBJECTS = \
"CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o"

# External object files for target splitToolkit
splitToolkit_EXTERNAL_OBJECTS =

splitToolkit: CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o
splitToolkit: CMakeFiles/splitToolkit.dir/build.make
splitToolkit: libsvl.a
splitToolkit: /usr/lib64/libglut.so
splitToolkit: /usr/lib64/libXmu.so
splitToolkit: /usr/lib64/libXi.so
splitToolkit: /usr/lib64/libGLU.so
splitToolkit: /usr/lib64/libGL.so
splitToolkit: /usr/lib64/libSM.so
splitToolkit: /usr/lib64/libICE.so
splitToolkit: /usr/lib64/libX11.so
splitToolkit: /usr/lib64/libXext.so
splitToolkit: CMakeFiles/splitToolkit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable splitToolkit"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/splitToolkit.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/splitToolkit.dir/build: splitToolkit
.PHONY : CMakeFiles/splitToolkit.dir/build

CMakeFiles/splitToolkit.dir/requires: CMakeFiles/splitToolkit.dir/SplitTool/splitToolkit.cpp.o.requires
.PHONY : CMakeFiles/splitToolkit.dir/requires

CMakeFiles/splitToolkit.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/splitToolkit.dir/cmake_clean.cmake
.PHONY : CMakeFiles/splitToolkit.dir/clean

CMakeFiles/splitToolkit.dir/depend:
	cd /home/hnz8/Documents/SPLIT_VIS2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hnz8/Documents/SPLIT_VIS2 /home/hnz8/Documents/SPLIT_VIS2 /home/hnz8/Documents/SPLIT_VIS2/build /home/hnz8/Documents/SPLIT_VIS2/build /home/hnz8/Documents/SPLIT_VIS2/build/CMakeFiles/splitToolkit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/splitToolkit.dir/depend

