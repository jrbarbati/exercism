# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = "/Users/jxb4933/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.6603.37/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/jxb4933/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/192.6603.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jxb4933/exercism/cpp/robot-simulator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jxb4933/exercism/cpp/robot-simulator/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/robot-simulator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/robot-simulator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/robot-simulator.dir/flags.make

CMakeFiles/robot-simulator.dir/robot_simulator_test.cpp.o: CMakeFiles/robot-simulator.dir/flags.make
CMakeFiles/robot-simulator.dir/robot_simulator_test.cpp.o: ../robot_simulator_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jxb4933/exercism/cpp/robot-simulator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/robot-simulator.dir/robot_simulator_test.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robot-simulator.dir/robot_simulator_test.cpp.o -c /Users/jxb4933/exercism/cpp/robot-simulator/robot_simulator_test.cpp

CMakeFiles/robot-simulator.dir/robot_simulator_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robot-simulator.dir/robot_simulator_test.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jxb4933/exercism/cpp/robot-simulator/robot_simulator_test.cpp > CMakeFiles/robot-simulator.dir/robot_simulator_test.cpp.i

CMakeFiles/robot-simulator.dir/robot_simulator_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robot-simulator.dir/robot_simulator_test.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jxb4933/exercism/cpp/robot-simulator/robot_simulator_test.cpp -o CMakeFiles/robot-simulator.dir/robot_simulator_test.cpp.s

CMakeFiles/robot-simulator.dir/robot_simulator.cpp.o: CMakeFiles/robot-simulator.dir/flags.make
CMakeFiles/robot-simulator.dir/robot_simulator.cpp.o: ../robot_simulator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jxb4933/exercism/cpp/robot-simulator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/robot-simulator.dir/robot_simulator.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robot-simulator.dir/robot_simulator.cpp.o -c /Users/jxb4933/exercism/cpp/robot-simulator/robot_simulator.cpp

CMakeFiles/robot-simulator.dir/robot_simulator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robot-simulator.dir/robot_simulator.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jxb4933/exercism/cpp/robot-simulator/robot_simulator.cpp > CMakeFiles/robot-simulator.dir/robot_simulator.cpp.i

CMakeFiles/robot-simulator.dir/robot_simulator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robot-simulator.dir/robot_simulator.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jxb4933/exercism/cpp/robot-simulator/robot_simulator.cpp -o CMakeFiles/robot-simulator.dir/robot_simulator.cpp.s

CMakeFiles/robot-simulator.dir/test/tests-main.cpp.o: CMakeFiles/robot-simulator.dir/flags.make
CMakeFiles/robot-simulator.dir/test/tests-main.cpp.o: ../test/tests-main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jxb4933/exercism/cpp/robot-simulator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/robot-simulator.dir/test/tests-main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robot-simulator.dir/test/tests-main.cpp.o -c /Users/jxb4933/exercism/cpp/robot-simulator/test/tests-main.cpp

CMakeFiles/robot-simulator.dir/test/tests-main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robot-simulator.dir/test/tests-main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jxb4933/exercism/cpp/robot-simulator/test/tests-main.cpp > CMakeFiles/robot-simulator.dir/test/tests-main.cpp.i

CMakeFiles/robot-simulator.dir/test/tests-main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robot-simulator.dir/test/tests-main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jxb4933/exercism/cpp/robot-simulator/test/tests-main.cpp -o CMakeFiles/robot-simulator.dir/test/tests-main.cpp.s

# Object files for target robot-simulator
robot__simulator_OBJECTS = \
"CMakeFiles/robot-simulator.dir/robot_simulator_test.cpp.o" \
"CMakeFiles/robot-simulator.dir/robot_simulator.cpp.o" \
"CMakeFiles/robot-simulator.dir/test/tests-main.cpp.o"

# External object files for target robot-simulator
robot__simulator_EXTERNAL_OBJECTS =

robot-simulator: CMakeFiles/robot-simulator.dir/robot_simulator_test.cpp.o
robot-simulator: CMakeFiles/robot-simulator.dir/robot_simulator.cpp.o
robot-simulator: CMakeFiles/robot-simulator.dir/test/tests-main.cpp.o
robot-simulator: CMakeFiles/robot-simulator.dir/build.make
robot-simulator: CMakeFiles/robot-simulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jxb4933/exercism/cpp/robot-simulator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable robot-simulator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/robot-simulator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/robot-simulator.dir/build: robot-simulator

.PHONY : CMakeFiles/robot-simulator.dir/build

CMakeFiles/robot-simulator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/robot-simulator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/robot-simulator.dir/clean

CMakeFiles/robot-simulator.dir/depend:
	cd /Users/jxb4933/exercism/cpp/robot-simulator/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jxb4933/exercism/cpp/robot-simulator /Users/jxb4933/exercism/cpp/robot-simulator /Users/jxb4933/exercism/cpp/robot-simulator/cmake-build-debug /Users/jxb4933/exercism/cpp/robot-simulator/cmake-build-debug /Users/jxb4933/exercism/cpp/robot-simulator/cmake-build-debug/CMakeFiles/robot-simulator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/robot-simulator.dir/depend
