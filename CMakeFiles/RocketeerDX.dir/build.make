# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.27.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.27.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/pwg7/DatabaseB/home/engineeringFiles/rocketeer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/pwg7/DatabaseB/home/engineeringFiles/rocketeer

# Include any dependencies generated for this target.
include CMakeFiles/RocketeerDX.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RocketeerDX.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RocketeerDX.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RocketeerDX.dir/flags.make

CMakeFiles/RocketeerDX.dir/main.cpp.o: CMakeFiles/RocketeerDX.dir/flags.make
CMakeFiles/RocketeerDX.dir/main.cpp.o: main.cpp
CMakeFiles/RocketeerDX.dir/main.cpp.o: CMakeFiles/RocketeerDX.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/pwg7/DatabaseB/home/engineeringFiles/rocketeer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RocketeerDX.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RocketeerDX.dir/main.cpp.o -MF CMakeFiles/RocketeerDX.dir/main.cpp.o.d -o CMakeFiles/RocketeerDX.dir/main.cpp.o -c /Users/pwg7/DatabaseB/home/engineeringFiles/rocketeer/main.cpp

CMakeFiles/RocketeerDX.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RocketeerDX.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/pwg7/DatabaseB/home/engineeringFiles/rocketeer/main.cpp > CMakeFiles/RocketeerDX.dir/main.cpp.i

CMakeFiles/RocketeerDX.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RocketeerDX.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/pwg7/DatabaseB/home/engineeringFiles/rocketeer/main.cpp -o CMakeFiles/RocketeerDX.dir/main.cpp.s

# Object files for target RocketeerDX
RocketeerDX_OBJECTS = \
"CMakeFiles/RocketeerDX.dir/main.cpp.o"

# External object files for target RocketeerDX
RocketeerDX_EXTERNAL_OBJECTS =

RocketeerDX: CMakeFiles/RocketeerDX.dir/main.cpp.o
RocketeerDX: CMakeFiles/RocketeerDX.dir/build.make
RocketeerDX: glfw-d973acc123826666ecc9e6fd475682e3d84c54a6/src/libglfw3.a
RocketeerDX: /Library/Developer/CommandLineTools/SDKs/MacOSX13.1.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd
RocketeerDX: CMakeFiles/RocketeerDX.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/pwg7/DatabaseB/home/engineeringFiles/rocketeer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RocketeerDX"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RocketeerDX.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RocketeerDX.dir/build: RocketeerDX
.PHONY : CMakeFiles/RocketeerDX.dir/build

CMakeFiles/RocketeerDX.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RocketeerDX.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RocketeerDX.dir/clean

CMakeFiles/RocketeerDX.dir/depend:
	cd /Users/pwg7/DatabaseB/home/engineeringFiles/rocketeer && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/pwg7/DatabaseB/home/engineeringFiles/rocketeer /Users/pwg7/DatabaseB/home/engineeringFiles/rocketeer /Users/pwg7/DatabaseB/home/engineeringFiles/rocketeer /Users/pwg7/DatabaseB/home/engineeringFiles/rocketeer /Users/pwg7/DatabaseB/home/engineeringFiles/rocketeer/CMakeFiles/RocketeerDX.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/RocketeerDX.dir/depend

