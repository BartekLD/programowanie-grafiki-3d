# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "A:\Programy\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "A:\Programy\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug

# Include any dependencies generated for this target.
include src/Exercises/Zoom/CMakeFiles/Zoom.dir/depend.make

# Include the progress variables for this target.
include src/Exercises/Zoom/CMakeFiles/Zoom.dir/progress.make

# Include the compile flags for this target's objects.
include src/Exercises/Zoom/CMakeFiles/Zoom.dir/flags.make

src/Exercises/Zoom/CMakeFiles/Zoom.dir/main.cpp.obj: src/Exercises/Zoom/CMakeFiles/Zoom.dir/flags.make
src/Exercises/Zoom/CMakeFiles/Zoom.dir/main.cpp.obj: src/Exercises/Zoom/CMakeFiles/Zoom.dir/includes_CXX.rsp
src/Exercises/Zoom/CMakeFiles/Zoom.dir/main.cpp.obj: ../src/Exercises/Zoom/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Exercises/Zoom/CMakeFiles/Zoom.dir/main.cpp.obj"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Zoom && A:\Programy\MinGW\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Zoom.dir\main.cpp.obj -c C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Zoom\main.cpp

src/Exercises/Zoom/CMakeFiles/Zoom.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Zoom.dir/main.cpp.i"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Zoom && A:\Programy\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Zoom\main.cpp > CMakeFiles\Zoom.dir\main.cpp.i

src/Exercises/Zoom/CMakeFiles/Zoom.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Zoom.dir/main.cpp.s"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Zoom && A:\Programy\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Zoom\main.cpp -o CMakeFiles\Zoom.dir\main.cpp.s

src/Exercises/Zoom/CMakeFiles/Zoom.dir/app.cpp.obj: src/Exercises/Zoom/CMakeFiles/Zoom.dir/flags.make
src/Exercises/Zoom/CMakeFiles/Zoom.dir/app.cpp.obj: src/Exercises/Zoom/CMakeFiles/Zoom.dir/includes_CXX.rsp
src/Exercises/Zoom/CMakeFiles/Zoom.dir/app.cpp.obj: ../src/Exercises/Zoom/app.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/Exercises/Zoom/CMakeFiles/Zoom.dir/app.cpp.obj"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Zoom && A:\Programy\MinGW\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Zoom.dir\app.cpp.obj -c C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Zoom\app.cpp

src/Exercises/Zoom/CMakeFiles/Zoom.dir/app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Zoom.dir/app.cpp.i"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Zoom && A:\Programy\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Zoom\app.cpp > CMakeFiles\Zoom.dir\app.cpp.i

src/Exercises/Zoom/CMakeFiles/Zoom.dir/app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Zoom.dir/app.cpp.s"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Zoom && A:\Programy\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Zoom\app.cpp -o CMakeFiles\Zoom.dir\app.cpp.s

# Object files for target Zoom
Zoom_OBJECTS = \
"CMakeFiles/Zoom.dir/main.cpp.obj" \
"CMakeFiles/Zoom.dir/app.cpp.obj"

# External object files for target Zoom
Zoom_EXTERNAL_OBJECTS = \
"C:/Users/domow/Documents/GitHub/programowanie-grafiki-3d/cmake-build-debug/CMakeFiles/glad.dir/src/3rdParty/src/glad/glad.c.obj"

src/Exercises/Zoom/Zoom.exe: src/Exercises/Zoom/CMakeFiles/Zoom.dir/main.cpp.obj
src/Exercises/Zoom/Zoom.exe: src/Exercises/Zoom/CMakeFiles/Zoom.dir/app.cpp.obj
src/Exercises/Zoom/Zoom.exe: CMakeFiles/glad.dir/src/3rdParty/src/glad/glad.c.obj
src/Exercises/Zoom/Zoom.exe: src/Exercises/Zoom/CMakeFiles/Zoom.dir/build.make
src/Exercises/Zoom/Zoom.exe: src/3rdParty/src/glfw3/src/libglfw3.a
src/Exercises/Zoom/Zoom.exe: src/Application/libapplication.a
src/Exercises/Zoom/Zoom.exe: src/3rdParty/src/glfw3/src/libglfw3.a
src/Exercises/Zoom/Zoom.exe: src/Exercises/Zoom/CMakeFiles/Zoom.dir/linklibs.rsp
src/Exercises/Zoom/Zoom.exe: src/Exercises/Zoom/CMakeFiles/Zoom.dir/objects1.rsp
src/Exercises/Zoom/Zoom.exe: src/Exercises/Zoom/CMakeFiles/Zoom.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Zoom.exe"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Zoom && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Zoom.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Exercises/Zoom/CMakeFiles/Zoom.dir/build: src/Exercises/Zoom/Zoom.exe

.PHONY : src/Exercises/Zoom/CMakeFiles/Zoom.dir/build

src/Exercises/Zoom/CMakeFiles/Zoom.dir/clean:
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Zoom && $(CMAKE_COMMAND) -P CMakeFiles\Zoom.dir\cmake_clean.cmake
.PHONY : src/Exercises/Zoom/CMakeFiles/Zoom.dir/clean

src/Exercises/Zoom/CMakeFiles/Zoom.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Zoom C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Zoom C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Zoom\CMakeFiles\Zoom.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/Exercises/Zoom/CMakeFiles/Zoom.dir/depend

