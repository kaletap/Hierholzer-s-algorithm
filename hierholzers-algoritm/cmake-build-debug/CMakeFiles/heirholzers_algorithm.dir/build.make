# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /home/przemyslaw/Clion/clion-2018.1.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/przemyslaw/Clion/clion-2018.1.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/heirholzers_algorithm.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/heirholzers_algorithm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/heirholzers_algorithm.dir/flags.make

CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o: CMakeFiles/heirholzers_algorithm.dir/flags.make
CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o: ../src/main/edge/Edge.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o -c /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/src/main/edge/Edge.cpp

CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/src/main/edge/Edge.cpp > CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.i

CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/src/main/edge/Edge.cpp -o CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.s

CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o.requires:

.PHONY : CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o.requires

CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o.provides: CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o.requires
	$(MAKE) -f CMakeFiles/heirholzers_algorithm.dir/build.make CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o.provides.build
.PHONY : CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o.provides

CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o.provides.build: CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o


CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o: CMakeFiles/heirholzers_algorithm.dir/flags.make
CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o: ../src/main/graph/Graph.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o -c /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/src/main/graph/Graph.cpp

CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/src/main/graph/Graph.cpp > CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.i

CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/src/main/graph/Graph.cpp -o CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.s

CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o.requires:

.PHONY : CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o.requires

CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o.provides: CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o.requires
	$(MAKE) -f CMakeFiles/heirholzers_algorithm.dir/build.make CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o.provides.build
.PHONY : CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o.provides

CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o.provides.build: CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o


CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o: CMakeFiles/heirholzers_algorithm.dir/flags.make
CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o: ../src/main/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o -c /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/src/main/main.cpp

CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/src/main/main.cpp > CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.i

CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/src/main/main.cpp -o CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.s

CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o.requires:

.PHONY : CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o.requires

CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o.provides: CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/heirholzers_algorithm.dir/build.make CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o.provides.build
.PHONY : CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o.provides

CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o.provides.build: CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o


CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o: CMakeFiles/heirholzers_algorithm.dir/flags.make
CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o: ../src/test/UnitTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o -c /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/src/test/UnitTest.cpp

CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/src/test/UnitTest.cpp > CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.i

CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/src/test/UnitTest.cpp -o CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.s

CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o.requires:

.PHONY : CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o.requires

CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o.provides: CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o.requires
	$(MAKE) -f CMakeFiles/heirholzers_algorithm.dir/build.make CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o.provides.build
.PHONY : CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o.provides

CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o.provides.build: CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o


# Object files for target heirholzers_algorithm
heirholzers_algorithm_OBJECTS = \
"CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o" \
"CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o" \
"CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o" \
"CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o"

# External object files for target heirholzers_algorithm
heirholzers_algorithm_EXTERNAL_OBJECTS =

heirholzers_algorithm: CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o
heirholzers_algorithm: CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o
heirholzers_algorithm: CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o
heirholzers_algorithm: CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o
heirholzers_algorithm: CMakeFiles/heirholzers_algorithm.dir/build.make
heirholzers_algorithm: CMakeFiles/heirholzers_algorithm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable heirholzers_algorithm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/heirholzers_algorithm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/heirholzers_algorithm.dir/build: heirholzers_algorithm

.PHONY : CMakeFiles/heirholzers_algorithm.dir/build

CMakeFiles/heirholzers_algorithm.dir/requires: CMakeFiles/heirholzers_algorithm.dir/src/main/edge/Edge.cpp.o.requires
CMakeFiles/heirholzers_algorithm.dir/requires: CMakeFiles/heirholzers_algorithm.dir/src/main/graph/Graph.cpp.o.requires
CMakeFiles/heirholzers_algorithm.dir/requires: CMakeFiles/heirholzers_algorithm.dir/src/main/main.cpp.o.requires
CMakeFiles/heirholzers_algorithm.dir/requires: CMakeFiles/heirholzers_algorithm.dir/src/test/UnitTest.cpp.o.requires

.PHONY : CMakeFiles/heirholzers_algorithm.dir/requires

CMakeFiles/heirholzers_algorithm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/heirholzers_algorithm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/heirholzers_algorithm.dir/clean

CMakeFiles/heirholzers_algorithm.dir/depend:
	cd /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/cmake-build-debug /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/cmake-build-debug /home/przemyslaw/Cpp/hierholzers-algoritm/hierholzers-algoritm/cmake-build-debug/CMakeFiles/heirholzers_algorithm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/heirholzers_algorithm.dir/depend
