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
CMAKE_SOURCE_DIR = /Users/jxb4933/exercism/cpp/binary-search

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jxb4933/exercism/cpp/binary-search/build

# Include any dependencies generated for this target.
include CMakeFiles/binary-search.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/binary-search.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/binary-search.dir/flags.make

CMakeFiles/binary-search.dir/binary_search_test.cpp.o: CMakeFiles/binary-search.dir/flags.make
CMakeFiles/binary-search.dir/binary_search_test.cpp.o: ../binary_search_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jxb4933/exercism/cpp/binary-search/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/binary-search.dir/binary_search_test.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binary-search.dir/binary_search_test.cpp.o -c /Users/jxb4933/exercism/cpp/binary-search/binary_search_test.cpp

CMakeFiles/binary-search.dir/binary_search_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binary-search.dir/binary_search_test.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jxb4933/exercism/cpp/binary-search/binary_search_test.cpp > CMakeFiles/binary-search.dir/binary_search_test.cpp.i

CMakeFiles/binary-search.dir/binary_search_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binary-search.dir/binary_search_test.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jxb4933/exercism/cpp/binary-search/binary_search_test.cpp -o CMakeFiles/binary-search.dir/binary_search_test.cpp.s

CMakeFiles/binary-search.dir/binary_search.cpp.o: CMakeFiles/binary-search.dir/flags.make
CMakeFiles/binary-search.dir/binary_search.cpp.o: ../binary_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jxb4933/exercism/cpp/binary-search/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/binary-search.dir/binary_search.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binary-search.dir/binary_search.cpp.o -c /Users/jxb4933/exercism/cpp/binary-search/binary_search.cpp

CMakeFiles/binary-search.dir/binary_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binary-search.dir/binary_search.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jxb4933/exercism/cpp/binary-search/binary_search.cpp > CMakeFiles/binary-search.dir/binary_search.cpp.i

CMakeFiles/binary-search.dir/binary_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binary-search.dir/binary_search.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jxb4933/exercism/cpp/binary-search/binary_search.cpp -o CMakeFiles/binary-search.dir/binary_search.cpp.s

CMakeFiles/binary-search.dir/test/tests-main.cpp.o: CMakeFiles/binary-search.dir/flags.make
CMakeFiles/binary-search.dir/test/tests-main.cpp.o: ../test/tests-main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jxb4933/exercism/cpp/binary-search/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/binary-search.dir/test/tests-main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binary-search.dir/test/tests-main.cpp.o -c /Users/jxb4933/exercism/cpp/binary-search/test/tests-main.cpp

CMakeFiles/binary-search.dir/test/tests-main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binary-search.dir/test/tests-main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jxb4933/exercism/cpp/binary-search/test/tests-main.cpp > CMakeFiles/binary-search.dir/test/tests-main.cpp.i

CMakeFiles/binary-search.dir/test/tests-main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binary-search.dir/test/tests-main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jxb4933/exercism/cpp/binary-search/test/tests-main.cpp -o CMakeFiles/binary-search.dir/test/tests-main.cpp.s

# Object files for target binary-search
binary__search_OBJECTS = \
"CMakeFiles/binary-search.dir/binary_search_test.cpp.o" \
"CMakeFiles/binary-search.dir/binary_search.cpp.o" \
"CMakeFiles/binary-search.dir/test/tests-main.cpp.o"

# External object files for target binary-search
binary__search_EXTERNAL_OBJECTS =

binary-search: CMakeFiles/binary-search.dir/binary_search_test.cpp.o
binary-search: CMakeFiles/binary-search.dir/binary_search.cpp.o
binary-search: CMakeFiles/binary-search.dir/test/tests-main.cpp.o
binary-search: CMakeFiles/binary-search.dir/build.make
binary-search: CMakeFiles/binary-search.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jxb4933/exercism/cpp/binary-search/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable binary-search"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/binary-search.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/binary-search.dir/build: binary-search

.PHONY : CMakeFiles/binary-search.dir/build

CMakeFiles/binary-search.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/binary-search.dir/cmake_clean.cmake
.PHONY : CMakeFiles/binary-search.dir/clean

CMakeFiles/binary-search.dir/depend:
	cd /Users/jxb4933/exercism/cpp/binary-search/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jxb4933/exercism/cpp/binary-search /Users/jxb4933/exercism/cpp/binary-search /Users/jxb4933/exercism/cpp/binary-search/build /Users/jxb4933/exercism/cpp/binary-search/build /Users/jxb4933/exercism/cpp/binary-search/build/CMakeFiles/binary-search.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/binary-search.dir/depend
