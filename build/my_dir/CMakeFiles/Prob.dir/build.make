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
include my_dir/CMakeFiles/Prob.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include my_dir/CMakeFiles/Prob.dir/compiler_depend.make

# Include the progress variables for this target.
include my_dir/CMakeFiles/Prob.dir/progress.make

# Include the compile flags for this target's objects.
include my_dir/CMakeFiles/Prob.dir/flags.make

my_dir/CMakeFiles/Prob.dir/problem.cpp.o: my_dir/CMakeFiles/Prob.dir/flags.make
my_dir/CMakeFiles/Prob.dir/problem.cpp.o: /Users/nanki/Desktop/2023-2024hpc/c++stu/my_dir/problem.cpp
my_dir/CMakeFiles/Prob.dir/problem.cpp.o: my_dir/CMakeFiles/Prob.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/nanki/Desktop/2023-2024hpc/c++stu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object my_dir/CMakeFiles/Prob.dir/problem.cpp.o"
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT my_dir/CMakeFiles/Prob.dir/problem.cpp.o -MF CMakeFiles/Prob.dir/problem.cpp.o.d -o CMakeFiles/Prob.dir/problem.cpp.o -c /Users/nanki/Desktop/2023-2024hpc/c++stu/my_dir/problem.cpp

my_dir/CMakeFiles/Prob.dir/problem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Prob.dir/problem.cpp.i"
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nanki/Desktop/2023-2024hpc/c++stu/my_dir/problem.cpp > CMakeFiles/Prob.dir/problem.cpp.i

my_dir/CMakeFiles/Prob.dir/problem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Prob.dir/problem.cpp.s"
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nanki/Desktop/2023-2024hpc/c++stu/my_dir/problem.cpp -o CMakeFiles/Prob.dir/problem.cpp.s

# Object files for target Prob
Prob_OBJECTS = \
"CMakeFiles/Prob.dir/problem.cpp.o"

# External object files for target Prob
Prob_EXTERNAL_OBJECTS =

my_dir/libProb.a: my_dir/CMakeFiles/Prob.dir/problem.cpp.o
my_dir/libProb.a: my_dir/CMakeFiles/Prob.dir/build.make
my_dir/libProb.a: my_dir/CMakeFiles/Prob.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/nanki/Desktop/2023-2024hpc/c++stu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libProb.a"
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir && $(CMAKE_COMMAND) -P CMakeFiles/Prob.dir/cmake_clean_target.cmake
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Prob.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
my_dir/CMakeFiles/Prob.dir/build: my_dir/libProb.a
.PHONY : my_dir/CMakeFiles/Prob.dir/build

my_dir/CMakeFiles/Prob.dir/clean:
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir && $(CMAKE_COMMAND) -P CMakeFiles/Prob.dir/cmake_clean.cmake
.PHONY : my_dir/CMakeFiles/Prob.dir/clean

my_dir/CMakeFiles/Prob.dir/depend:
	cd /Users/nanki/Desktop/2023-2024hpc/c++stu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nanki/Desktop/2023-2024hpc/c++stu /Users/nanki/Desktop/2023-2024hpc/c++stu/my_dir /Users/nanki/Desktop/2023-2024hpc/c++stu/build /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir /Users/nanki/Desktop/2023-2024hpc/c++stu/build/my_dir/CMakeFiles/Prob.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : my_dir/CMakeFiles/Prob.dir/depend
