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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jerry/Code/ASCII-Clock

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jerry/Code/ASCII-Clock/build

# Include any dependencies generated for this target.
include CMakeFiles/Clock.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Clock.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Clock.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Clock.dir/flags.make

CMakeFiles/Clock.dir/clock.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/clock.cpp.o: /home/jerry/Code/ASCII-Clock/clock.cpp
CMakeFiles/Clock.dir/clock.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Clock.dir/clock.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/clock.cpp.o -MF CMakeFiles/Clock.dir/clock.cpp.o.d -o CMakeFiles/Clock.dir/clock.cpp.o -c /home/jerry/Code/ASCII-Clock/clock.cpp

CMakeFiles/Clock.dir/clock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/clock.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/clock.cpp > CMakeFiles/Clock.dir/clock.cpp.i

CMakeFiles/Clock.dir/clock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/clock.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/clock.cpp -o CMakeFiles/Clock.dir/clock.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Common/Common.cpp
CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Common/Common.cpp

CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Common/Common.cpp > CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Common/Common.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Common/Pixel.cpp
CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Common/Pixel.cpp

CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Common/Pixel.cpp > CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Common/Pixel.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Common/Stylable.cpp
CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Common/Stylable.cpp

CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Common/Stylable.cpp > CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Common/Stylable.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Display/BaseDisplayObject.cpp
CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Display/BaseDisplayObject.cpp

CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Display/BaseDisplayObject.cpp > CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Display/BaseDisplayObject.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Display/Display.cpp
CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Display/Display.cpp

CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Display/Display.cpp > CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Display/Display.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Display/Layout.cpp
CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Display/Layout.cpp

CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Display/Layout.cpp > CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Display/Layout.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Circle.cpp
CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Circle.cpp

CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Circle.cpp > CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Circle.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/CompositeShape.cpp
CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/CompositeShape.cpp

CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/CompositeShape.cpp > CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/CompositeShape.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Ellipse.cpp
CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Ellipse.cpp

CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Ellipse.cpp > CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Ellipse.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/GenericShapeObjcet.cpp
CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/GenericShapeObjcet.cpp

CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/GenericShapeObjcet.cpp > CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/GenericShapeObjcet.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Line.cpp
CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Line.cpp

CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Line.cpp > CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Line.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Rectangle.cpp
CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Rectangle.cpp

CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Rectangle.cpp > CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Shapes/Rectangle.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Utils/Converter.cpp
CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Utils/Converter.cpp

CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Utils/Converter.cpp > CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Utils/Converter.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Utils/Logger.cpp
CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Utils/Logger.cpp

CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Utils/Logger.cpp > CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Utils/Logger.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Widgets/GenericTextObject.cpp
CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Widgets/GenericTextObject.cpp

CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Widgets/GenericTextObject.cpp > CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Widgets/GenericTextObject.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Widgets/TextField.cpp
CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Widgets/TextField.cpp

CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Widgets/TextField.cpp > CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Widgets/TextField.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Window/DataWindow.cpp
CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Window/DataWindow.cpp

CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Window/DataWindow.cpp > CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Window/DataWindow.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Window/GenericWindowObject.cpp
CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Window/GenericWindowObject.cpp

CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Window/GenericWindowObject.cpp > CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Window/GenericWindowObject.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.s

CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.o: /home/jerry/Code/ASCII-Clock/Xcurse/src/Window/GridWindow.cpp
CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.o: CMakeFiles/Clock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building CXX object CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.o -MF CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.o.d -o CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.o -c /home/jerry/Code/ASCII-Clock/Xcurse/src/Window/GridWindow.cpp

CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerry/Code/ASCII-Clock/Xcurse/src/Window/GridWindow.cpp > CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.i

CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerry/Code/ASCII-Clock/Xcurse/src/Window/GridWindow.cpp -o CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.s

# Object files for target Clock
Clock_OBJECTS = \
"CMakeFiles/Clock.dir/clock.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.o" \
"CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.o"

# External object files for target Clock
Clock_EXTERNAL_OBJECTS =

Clock: CMakeFiles/Clock.dir/clock.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Common/Common.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Common/Pixel.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Common/Stylable.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Display/BaseDisplayObject.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Display/Display.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Display/Layout.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Shapes/Circle.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Shapes/CompositeShape.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Shapes/Ellipse.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Shapes/GenericShapeObjcet.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Shapes/Line.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Shapes/Rectangle.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Utils/Converter.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Utils/Logger.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Widgets/GenericTextObject.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Widgets/TextField.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Window/DataWindow.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Window/GenericWindowObject.cpp.o
Clock: CMakeFiles/Clock.dir/Xcurse/src/Window/GridWindow.cpp.o
Clock: CMakeFiles/Clock.dir/build.make
Clock: CMakeFiles/Clock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jerry/Code/ASCII-Clock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Linking CXX executable Clock"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Clock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Clock.dir/build: Clock
.PHONY : CMakeFiles/Clock.dir/build

CMakeFiles/Clock.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Clock.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Clock.dir/clean

CMakeFiles/Clock.dir/depend:
	cd /home/jerry/Code/ASCII-Clock/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jerry/Code/ASCII-Clock /home/jerry/Code/ASCII-Clock /home/jerry/Code/ASCII-Clock/build /home/jerry/Code/ASCII-Clock/build /home/jerry/Code/ASCII-Clock/build/CMakeFiles/Clock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Clock.dir/depend

