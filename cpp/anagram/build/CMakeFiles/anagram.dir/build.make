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
CMAKE_SOURCE_DIR = /Users/jxb4933/exercism/cpp/anagram

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jxb4933/exercism/cpp/anagram/build

# Include any dependencies generated for this target.
include CMakeFiles/anagram.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/anagram.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/anagram.dir/flags.make

CMakeFiles/anagram.dir/anagram_test.cpp.o: CMakeFiles/anagram.dir/flags.make
CMakeFiles/anagram.dir/anagram_test.cpp.o: ../anagram_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jxb4933/exercism/cpp/anagram/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/anagram.dir/anagram_test.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/anagram.dir/anagram_test.cpp.o -c /Users/jxb4933/exercism/cpp/anagram/anagram_test.cpp

CMakeFiles/anagram.dir/anagram_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/anagram.dir/anagram_test.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jxb4933/exercism/cpp/anagram/anagram_test.cpp > CMakeFiles/anagram.dir/anagram_test.cpp.i

CMakeFiles/anagram.dir/anagram_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/anagram.dir/anagram_test.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jxb4933/exercism/cpp/anagram/anagram_test.cpp -o CMakeFiles/anagram.dir/anagram_test.cpp.s

CMakeFiles/anagram.dir/anagram.cpp.o: CMakeFiles/anagram.dir/flags.make
CMakeFiles/anagram.dir/anagram.cpp.o: ../anagram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jxb4933/exercism/cpp/anagram/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/anagram.dir/anagram.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/anagram.dir/anagram.cpp.o -c /Users/jxb4933/exercism/cpp/anagram/anagram.cpp

CMakeFiles/anagram.dir/anagram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/anagram.dir/anagram.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jxb4933/exercism/cpp/anagram/anagram.cpp > CMakeFiles/anagram.dir/anagram.cpp.i

CMakeFiles/anagram.dir/anagram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/anagram.dir/anagram.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jxb4933/exercism/cpp/anagram/anagram.cpp -o CMakeFiles/anagram.dir/anagram.cpp.s

CMakeFiles/anagram.dir/test/tests-main.cpp.o: CMakeFiles/anagram.dir/flags.make
CMakeFiles/anagram.dir/test/tests-main.cpp.o: ../test/tests-main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jxb4933/exercism/cpp/anagram/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/anagram.dir/test/tests-main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/anagram.dir/test/tests-main.cpp.o -c /Users/jxb4933/exercism/cpp/anagram/test/tests-main.cpp

CMakeFiles/anagram.dir/test/tests-main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/anagram.dir/test/tests-main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jxb4933/exercism/cpp/anagram/test/tests-main.cpp > CMakeFiles/anagram.dir/test/tests-main.cpp.i

CMakeFiles/anagram.dir/test/tests-main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/anagram.dir/test/tests-main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jxb4933/exercism/cpp/anagram/test/tests-main.cpp -o CMakeFiles/anagram.dir/test/tests-main.cpp.s

# Object files for target anagram
anagram_OBJECTS = \
"CMakeFiles/anagram.dir/anagram_test.cpp.o" \
"CMakeFiles/anagram.dir/anagram.cpp.o" \
"CMakeFiles/anagram.dir/test/tests-main.cpp.o"

# External object files for target anagram
anagram_EXTERNAL_OBJECTS =

anagram: CMakeFiles/anagram.dir/anagram_test.cpp.o
anagram: CMakeFiles/anagram.dir/anagram.cpp.o
anagram: CMakeFiles/anagram.dir/test/tests-main.cpp.o
anagram: CMakeFiles/anagram.dir/build.make
anagram: CMakeFiles/anagram.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jxb4933/exercism/cpp/anagram/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable anagram"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/anagram.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/anagram.dir/build: anagram

.PHONY : CMakeFiles/anagram.dir/build

CMakeFiles/anagram.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/anagram.dir/cmake_clean.cmake
.PHONY : CMakeFiles/anagram.dir/clean

CMakeFiles/anagram.dir/depend:
	cd /Users/jxb4933/exercism/cpp/anagram/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jxb4933/exercism/cpp/anagram /Users/jxb4933/exercism/cpp/anagram /Users/jxb4933/exercism/cpp/anagram/build /Users/jxb4933/exercism/cpp/anagram/build /Users/jxb4933/exercism/cpp/anagram/build/CMakeFiles/anagram.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/anagram.dir/depend

