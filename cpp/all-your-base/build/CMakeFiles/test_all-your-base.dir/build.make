# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.11.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.11.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jxb4933/exercism/cpp/all-your-base

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jxb4933/exercism/cpp/all-your-base/build

# Utility rule file for test_all-your-base.

# Include the progress variables for this target.
include CMakeFiles/test_all-your-base.dir/progress.make

CMakeFiles/test_all-your-base: all-your-base
	./all-your-base

test_all-your-base: CMakeFiles/test_all-your-base
test_all-your-base: CMakeFiles/test_all-your-base.dir/build.make

.PHONY : test_all-your-base

# Rule to build all files generated by this target.
CMakeFiles/test_all-your-base.dir/build: test_all-your-base

.PHONY : CMakeFiles/test_all-your-base.dir/build

CMakeFiles/test_all-your-base.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_all-your-base.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_all-your-base.dir/clean

CMakeFiles/test_all-your-base.dir/depend:
	cd /Users/jxb4933/exercism/cpp/all-your-base/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jxb4933/exercism/cpp/all-your-base /Users/jxb4933/exercism/cpp/all-your-base /Users/jxb4933/exercism/cpp/all-your-base/build /Users/jxb4933/exercism/cpp/all-your-base/build /Users/jxb4933/exercism/cpp/all-your-base/build/CMakeFiles/test_all-your-base.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_all-your-base.dir/depend

