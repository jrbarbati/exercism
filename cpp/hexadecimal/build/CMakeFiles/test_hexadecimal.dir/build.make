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
CMAKE_SOURCE_DIR = /Users/jxb4933/exercism/cpp/hexadecimal

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jxb4933/exercism/cpp/hexadecimal/build

# Utility rule file for test_hexadecimal.

# Include the progress variables for this target.
include CMakeFiles/test_hexadecimal.dir/progress.make

CMakeFiles/test_hexadecimal: hexadecimal
	./hexadecimal

test_hexadecimal: CMakeFiles/test_hexadecimal
test_hexadecimal: CMakeFiles/test_hexadecimal.dir/build.make

.PHONY : test_hexadecimal

# Rule to build all files generated by this target.
CMakeFiles/test_hexadecimal.dir/build: test_hexadecimal

.PHONY : CMakeFiles/test_hexadecimal.dir/build

CMakeFiles/test_hexadecimal.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_hexadecimal.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_hexadecimal.dir/clean

CMakeFiles/test_hexadecimal.dir/depend:
	cd /Users/jxb4933/exercism/cpp/hexadecimal/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jxb4933/exercism/cpp/hexadecimal /Users/jxb4933/exercism/cpp/hexadecimal /Users/jxb4933/exercism/cpp/hexadecimal/build /Users/jxb4933/exercism/cpp/hexadecimal/build /Users/jxb4933/exercism/cpp/hexadecimal/build/CMakeFiles/test_hexadecimal.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_hexadecimal.dir/depend
