# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /opt/cmake-3.24.0-rc1-linux-x86_64/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.24.0-rc1-linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /data/yyw/code_repo/OpenCLv1.2-Wrapper

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/yyw/code_repo/OpenCLv1.2-Wrapper/build

# Include any dependencies generated for this target.
include CMakeFiles/simulator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/simulator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/simulator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simulator.dir/flags.make

CMakeFiles/simulator.dir/template.cpp.o: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/template.cpp.o: /data/yyw/code_repo/OpenCLv1.2-Wrapper/template.cpp
CMakeFiles/simulator.dir/template.cpp.o: CMakeFiles/simulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/yyw/code_repo/OpenCLv1.2-Wrapper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simulator.dir/template.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/simulator.dir/template.cpp.o -MF CMakeFiles/simulator.dir/template.cpp.o.d -o CMakeFiles/simulator.dir/template.cpp.o -c /data/yyw/code_repo/OpenCLv1.2-Wrapper/template.cpp

CMakeFiles/simulator.dir/template.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/template.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/yyw/code_repo/OpenCLv1.2-Wrapper/template.cpp > CMakeFiles/simulator.dir/template.cpp.i

CMakeFiles/simulator.dir/template.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/template.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/yyw/code_repo/OpenCLv1.2-Wrapper/template.cpp -o CMakeFiles/simulator.dir/template.cpp.s

CMakeFiles/simulator.dir/utils/envRela.cpp.o: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/utils/envRela.cpp.o: /data/yyw/code_repo/OpenCLv1.2-Wrapper/utils/envRela.cpp
CMakeFiles/simulator.dir/utils/envRela.cpp.o: CMakeFiles/simulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/yyw/code_repo/OpenCLv1.2-Wrapper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/simulator.dir/utils/envRela.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/simulator.dir/utils/envRela.cpp.o -MF CMakeFiles/simulator.dir/utils/envRela.cpp.o.d -o CMakeFiles/simulator.dir/utils/envRela.cpp.o -c /data/yyw/code_repo/OpenCLv1.2-Wrapper/utils/envRela.cpp

CMakeFiles/simulator.dir/utils/envRela.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/utils/envRela.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/yyw/code_repo/OpenCLv1.2-Wrapper/utils/envRela.cpp > CMakeFiles/simulator.dir/utils/envRela.cpp.i

CMakeFiles/simulator.dir/utils/envRela.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/utils/envRela.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/yyw/code_repo/OpenCLv1.2-Wrapper/utils/envRela.cpp -o CMakeFiles/simulator.dir/utils/envRela.cpp.s

CMakeFiles/simulator.dir/utils/mm.cpp.o: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/utils/mm.cpp.o: /data/yyw/code_repo/OpenCLv1.2-Wrapper/utils/mm.cpp
CMakeFiles/simulator.dir/utils/mm.cpp.o: CMakeFiles/simulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/yyw/code_repo/OpenCLv1.2-Wrapper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/simulator.dir/utils/mm.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/simulator.dir/utils/mm.cpp.o -MF CMakeFiles/simulator.dir/utils/mm.cpp.o.d -o CMakeFiles/simulator.dir/utils/mm.cpp.o -c /data/yyw/code_repo/OpenCLv1.2-Wrapper/utils/mm.cpp

CMakeFiles/simulator.dir/utils/mm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/utils/mm.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/yyw/code_repo/OpenCLv1.2-Wrapper/utils/mm.cpp > CMakeFiles/simulator.dir/utils/mm.cpp.i

CMakeFiles/simulator.dir/utils/mm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/utils/mm.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/yyw/code_repo/OpenCLv1.2-Wrapper/utils/mm.cpp -o CMakeFiles/simulator.dir/utils/mm.cpp.s

CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.o: CMakeFiles/simulator.dir/flags.make
CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.o: /data/yyw/code_repo/OpenCLv1.2-Wrapper/utils/pgAndKernel.cpp
CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.o: CMakeFiles/simulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/yyw/code_repo/OpenCLv1.2-Wrapper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.o -MF CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.o.d -o CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.o -c /data/yyw/code_repo/OpenCLv1.2-Wrapper/utils/pgAndKernel.cpp

CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/yyw/code_repo/OpenCLv1.2-Wrapper/utils/pgAndKernel.cpp > CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.i

CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/yyw/code_repo/OpenCLv1.2-Wrapper/utils/pgAndKernel.cpp -o CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.s

# Object files for target simulator
simulator_OBJECTS = \
"CMakeFiles/simulator.dir/template.cpp.o" \
"CMakeFiles/simulator.dir/utils/envRela.cpp.o" \
"CMakeFiles/simulator.dir/utils/mm.cpp.o" \
"CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.o"

# External object files for target simulator
simulator_EXTERNAL_OBJECTS =

simulator: CMakeFiles/simulator.dir/template.cpp.o
simulator: CMakeFiles/simulator.dir/utils/envRela.cpp.o
simulator: CMakeFiles/simulator.dir/utils/mm.cpp.o
simulator: CMakeFiles/simulator.dir/utils/pgAndKernel.cpp.o
simulator: CMakeFiles/simulator.dir/build.make
simulator: CMakeFiles/simulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data/yyw/code_repo/OpenCLv1.2-Wrapper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable simulator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simulator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simulator.dir/build: simulator
.PHONY : CMakeFiles/simulator.dir/build

CMakeFiles/simulator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simulator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simulator.dir/clean

CMakeFiles/simulator.dir/depend:
	cd /data/yyw/code_repo/OpenCLv1.2-Wrapper/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/yyw/code_repo/OpenCLv1.2-Wrapper /data/yyw/code_repo/OpenCLv1.2-Wrapper /data/yyw/code_repo/OpenCLv1.2-Wrapper/build /data/yyw/code_repo/OpenCLv1.2-Wrapper/build /data/yyw/code_repo/OpenCLv1.2-Wrapper/build/CMakeFiles/simulator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simulator.dir/depend

