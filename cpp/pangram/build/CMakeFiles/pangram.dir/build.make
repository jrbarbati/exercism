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
CMAKE_SOURCE_DIR = /Users/jxb4933/exercism/cpp/pangram

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jxb4933/exercism/cpp/pangram/build

# Include any dependencies generated for this target.
include CMakeFiles/pangram.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pangram.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pangram.dir/flags.make

CMakeFiles/pangram.dir/pangram_test.cpp.o: CMakeFiles/pangram.dir/flags.make
CMakeFiles/pangram.dir/pangram_test.cpp.o: ../pangram_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jxb4933/exercism/cpp/pangram/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pangram.dir/pangram_test.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pangram.dir/pangram_test.cpp.o -c /Users/jxb4933/exercism/cpp/pangram/pangram_test.cpp

CMakeFiles/pangram.dir/pangram_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pangram.dir/pangram_test.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jxb4933/exercism/cpp/pangram/pangram_test.cpp > CMakeFiles/pangram.dir/pangram_test.cpp.i

CMakeFiles/pangram.dir/pangram_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pangram.dir/pangram_test.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jxb4933/exercism/cpp/pangram/pangram_test.cpp -o CMakeFiles/pangram.dir/pangram_test.cpp.s

CMakeFiles/pangram.dir/pangram.cpp.o: CMakeFiles/pangram.dir/flags.make
CMakeFiles/pangram.dir/pangram.cpp.o: ../pangram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jxb4933/exercism/cpp/pangram/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pangram.dir/pangram.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pangram.dir/pangram.cpp.o -c /Users/jxb4933/exercism/cpp/pangram/pangram.cpp

CMakeFiles/pangram.dir/pangram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pangram.dir/pangram.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jxb4933/exercism/cpp/pangram/pangram.cpp > CMakeFiles/pangram.dir/pangram.cpp.i

CMakeFiles/pangram.dir/pangram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pangram.dir/pangram.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jxb4933/exercism/cpp/pangram/pangram.cpp -o CMakeFiles/pangram.dir/pangram.cpp.s

CMakeFiles/pangram.dir/test/tests-main.cpp.o: CMakeFiles/pangram.dir/flags.make
CMakeFiles/pangram.dir/test/tests-main.cpp.o: ../test/tests-main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jxb4933/exercism/cpp/pangram/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/pangram.dir/test/tests-main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pangram.dir/test/tests-main.cpp.o -c /Users/jxb4933/exercism/cpp/pangram/test/tests-main.cpp

CMakeFiles/pangram.dir/test/tests-main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pangram.dir/test/tests-main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jxb4933/exercism/cpp/pangram/test/tests-main.cpp > CMakeFiles/pangram.dir/test/tests-main.cpp.i

CMakeFiles/pangram.dir/test/tests-main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pangram.dir/test/tests-main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jxb4933/exercism/cpp/pangram/test/tests-main.cpp -o CMakeFiles/pangram.dir/test/tests-main.cpp.s

# Object files for target pangram
pangram_OBJECTS = \
"CMakeFiles/pangram.dir/pangram_test.cpp.o" \
"CMakeFiles/pangram.dir/pangram.cpp.o" \
"CMakeFiles/pangram.dir/test/tests-main.cpp.o"

# External object files for target pangram
pangram_EXTERNAL_OBJECTS =

pangram: CMakeFiles/pangram.dir/pangram_test.cpp.o
pangram: CMakeFiles/pangram.dir/pangram.cpp.o
pangram: CMakeFiles/pangram.dir/test/tests-main.cpp.o
pangram: CMakeFiles/pangram.dir/build.make
pangram: CMakeFiles/pangram.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jxb4933/exercism/cpp/pangram/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable pangram"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pangram.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pangram.dir/build: pangram

.PHONY : CMakeFiles/pangram.dir/build

CMakeFiles/pangram.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pangram.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pangram.dir/clean

CMakeFiles/pangram.dir/depend:
	cd /Users/jxb4933/exercism/cpp/pangram/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jxb4933/exercism/cpp/pangram /Users/jxb4933/exercism/cpp/pangram /Users/jxb4933/exercism/cpp/pangram/build /Users/jxb4933/exercism/cpp/pangram/build /Users/jxb4933/exercism/cpp/pangram/build/CMakeFiles/pangram.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pangram.dir/depend

