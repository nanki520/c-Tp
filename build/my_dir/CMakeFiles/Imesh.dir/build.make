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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/nanki/Desktop/2023-2024hpc/c++stu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/nanki/Desktop/2023-2024hpc/c++stu/build

# Include any dependencies generated for this target.
include my_dir/CMakeFiles/Imesh.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include my_dir/CMakeFiles/Imesh.dir/compiler_depend.make

# Include the progress variables for this target.
include my_dir/CMakeFiles/Imesh.dir/progress.make

# Include the compile flags for this target's objects.
include my_dir/CMakeFiles/Imesh.dir/flags.make

my_dir/CMakeFiles/Imesh.dir/imesh.cpp.o: my_dir/CMakeFiles/Imesh.dir/flags.make
my_dir/CMakeFiles/Imesh.dir/imesh.cpp.o: /Users/nanki/Desktop/2023-2024hpc/c++stu/my_dir/imesh.cpp
my_dir/CMakeFiles/Imesh.dir/imesh.cpp.o: my_dir/CMakeFiles/Imesh.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/nanki/Desktop/2023-2024hpc/c++stu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object my_dir/CMakeFiles/Imesh.dir/imesh.cpp.o"
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT my_dir/CMakeFiles/Imesh.dir/imesh.cpp.o -MF CMakeFiles/Imesh.dir/imesh.cpp.o.d -o CMakeFiles/Imesh.dir/imesh.cpp.o -c /Users/nanki/Desktop/2023-2024hpc/c++stu/my_dir/imesh.cpp

my_dir/CMakeFiles/Imesh.dir/imesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Imesh.dir/imesh.cpp.i"
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nanki/Desktop/2023-2024hpc/c++stu/my_dir/imesh.cpp > CMakeFiles/Imesh.dir/imesh.cpp.i

my_dir/CMakeFiles/Imesh.dir/imesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Imesh.dir/imesh.cpp.s"
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nanki/Desktop/2023-2024hpc/c++stu/my_dir/imesh.cpp -o CMakeFiles/Imesh.dir/imesh.cpp.s

# Object files for target Imesh
Imesh_OBJECTS = \
"CMakeFiles/Imesh.dir/imesh.cpp.o"

# External object files for target Imesh
Imesh_EXTERNAL_OBJECTS =

my_dir/libImesh.a: my_dir/CMakeFiles/Imesh.dir/imesh.cpp.o
my_dir/libImesh.a: my_dir/CMakeFiles/Imesh.dir/build.make
my_dir/libImesh.a: my_dir/CMakeFiles/Imesh.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/nanki/Desktop/2023-2024hpc/c++stu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libImesh.a"
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir && $(CMAKE_COMMAND) -P CMakeFiles/Imesh.dir/cmake_clean_target.cmake
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Imesh.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
my_dir/CMakeFiles/Imesh.dir/build: my_dir/libImesh.a
.PHONY : my_dir/CMakeFiles/Imesh.dir/build

my_dir/CMakeFiles/Imesh.dir/clean:
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir && $(CMAKE_COMMAND) -P CMakeFiles/Imesh.dir/cmake_clean.cmake
.PHONY : my_dir/CMakeFiles/Imesh.dir/clean

my_dir/CMakeFiles/Imesh.dir/depend:
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nanki/Desktop/2023-2024hpc/c++stu /Users/nanki/Desktop/2023-2024hpc/c++stu/my_dir /Users/nanki/Desktop/2023-2024hpc/c++stu/build /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir/CMakeFiles/Imesh.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : my_dir/CMakeFiles/Imesh.dir/depend
