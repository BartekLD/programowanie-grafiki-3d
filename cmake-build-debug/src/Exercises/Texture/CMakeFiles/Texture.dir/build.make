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
include src/Exercises/Texture/CMakeFiles/Texture.dir/depend.make

# Include the progress variables for this target.
include src/Exercises/Texture/CMakeFiles/Texture.dir/progress.make

# Include the compile flags for this target's objects.
include src/Exercises/Texture/CMakeFiles/Texture.dir/flags.make

src/Exercises/Texture/CMakeFiles/Texture.dir/main.cpp.obj: src/Exercises/Texture/CMakeFiles/Texture.dir/flags.make
src/Exercises/Texture/CMakeFiles/Texture.dir/main.cpp.obj: src/Exercises/Texture/CMakeFiles/Texture.dir/includes_CXX.rsp
src/Exercises/Texture/CMakeFiles/Texture.dir/main.cpp.obj: ../src/Exercises/Texture/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/Exercises/Texture/CMakeFiles/Texture.dir/main.cpp.obj"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Texture && A:\Programy\MinGW\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Texture.dir\main.cpp.obj -c C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Texture\main.cpp

src/Exercises/Texture/CMakeFiles/Texture.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Texture.dir/main.cpp.i"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Texture && A:\Programy\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Texture\main.cpp > CMakeFiles\Texture.dir\main.cpp.i

src/Exercises/Texture/CMakeFiles/Texture.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Texture.dir/main.cpp.s"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Texture && A:\Programy\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Texture\main.cpp -o CMakeFiles\Texture.dir\main.cpp.s

src/Exercises/Texture/CMakeFiles/Texture.dir/app.cpp.obj: src/Exercises/Texture/CMakeFiles/Texture.dir/flags.make
src/Exercises/Texture/CMakeFiles/Texture.dir/app.cpp.obj: src/Exercises/Texture/CMakeFiles/Texture.dir/includes_CXX.rsp
src/Exercises/Texture/CMakeFiles/Texture.dir/app.cpp.obj: ../src/Exercises/Texture/app.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/Exercises/Texture/CMakeFiles/Texture.dir/app.cpp.obj"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Texture && A:\Programy\MinGW\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Texture.dir\app.cpp.obj -c C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Texture\app.cpp

src/Exercises/Texture/CMakeFiles/Texture.dir/app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Texture.dir/app.cpp.i"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Texture && A:\Programy\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Texture\app.cpp > CMakeFiles\Texture.dir\app.cpp.i

src/Exercises/Texture/CMakeFiles/Texture.dir/app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Texture.dir/app.cpp.s"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Texture && A:\Programy\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Texture\app.cpp -o CMakeFiles\Texture.dir\app.cpp.s

src/Exercises/Texture/CMakeFiles/Texture.dir/Pyramid.cpp.obj: src/Exercises/Texture/CMakeFiles/Texture.dir/flags.make
src/Exercises/Texture/CMakeFiles/Texture.dir/Pyramid.cpp.obj: src/Exercises/Texture/CMakeFiles/Texture.dir/includes_CXX.rsp
src/Exercises/Texture/CMakeFiles/Texture.dir/Pyramid.cpp.obj: ../src/Exercises/Texture/Pyramid.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/Exercises/Texture/CMakeFiles/Texture.dir/Pyramid.cpp.obj"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Texture && A:\Programy\MinGW\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Texture.dir\Pyramid.cpp.obj -c C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Texture\Pyramid.cpp

src/Exercises/Texture/CMakeFiles/Texture.dir/Pyramid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Texture.dir/Pyramid.cpp.i"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Texture && A:\Programy\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Texture\Pyramid.cpp > CMakeFiles\Texture.dir\Pyramid.cpp.i

src/Exercises/Texture/CMakeFiles/Texture.dir/Pyramid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Texture.dir/Pyramid.cpp.s"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Texture && A:\Programy\MinGW\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Texture\Pyramid.cpp -o CMakeFiles\Texture.dir\Pyramid.cpp.s

# Object files for target Texture
Texture_OBJECTS = \
"CMakeFiles/Texture.dir/main.cpp.obj" \
"CMakeFiles/Texture.dir/app.cpp.obj" \
"CMakeFiles/Texture.dir/Pyramid.cpp.obj"

# External object files for target Texture
Texture_EXTERNAL_OBJECTS = \
"C:/Users/domow/Documents/GitHub/programowanie-grafiki-3d/cmake-build-debug/CMakeFiles/glad.dir/src/3rdParty/src/glad/glad.c.obj"

src/Exercises/Texture/Texture.exe: src/Exercises/Texture/CMakeFiles/Texture.dir/main.cpp.obj
src/Exercises/Texture/Texture.exe: src/Exercises/Texture/CMakeFiles/Texture.dir/app.cpp.obj
src/Exercises/Texture/Texture.exe: src/Exercises/Texture/CMakeFiles/Texture.dir/Pyramid.cpp.obj
src/Exercises/Texture/Texture.exe: CMakeFiles/glad.dir/src/3rdParty/src/glad/glad.c.obj
src/Exercises/Texture/Texture.exe: src/Exercises/Texture/CMakeFiles/Texture.dir/build.make
src/Exercises/Texture/Texture.exe: src/3rdParty/src/glfw3/src/libglfw3.a
src/Exercises/Texture/Texture.exe: src/Application/libapplication.a
src/Exercises/Texture/Texture.exe: src/3rdParty/src/glfw3/src/libglfw3.a
src/Exercises/Texture/Texture.exe: src/Exercises/Texture/CMakeFiles/Texture.dir/linklibs.rsp
src/Exercises/Texture/Texture.exe: src/Exercises/Texture/CMakeFiles/Texture.dir/objects1.rsp
src/Exercises/Texture/Texture.exe: src/Exercises/Texture/CMakeFiles/Texture.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Texture.exe"
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Texture && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Texture.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Exercises/Texture/CMakeFiles/Texture.dir/build: src/Exercises/Texture/Texture.exe

.PHONY : src/Exercises/Texture/CMakeFiles/Texture.dir/build

src/Exercises/Texture/CMakeFiles/Texture.dir/clean:
	cd /d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Texture && $(CMAKE_COMMAND) -P CMakeFiles\Texture.dir\cmake_clean.cmake
.PHONY : src/Exercises/Texture/CMakeFiles/Texture.dir/clean

src/Exercises/Texture/CMakeFiles/Texture.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\src\Exercises\Texture C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Texture C:\Users\domow\Documents\GitHub\programowanie-grafiki-3d\cmake-build-debug\src\Exercises\Texture\CMakeFiles\Texture.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/Exercises/Texture/CMakeFiles/Texture.dir/depend
