# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /opt/clion-2019.2.5/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2019.2.5/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nuka/CLionProjects/CourseWork

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuka/CLionProjects/CourseWork/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/course1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/course1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/course1.dir/flags.make

CMakeFiles/course1.dir/main.c.o: CMakeFiles/course1.dir/flags.make
CMakeFiles/course1.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuka/CLionProjects/CourseWork/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/course1.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/course1.dir/main.c.o   -c /home/nuka/CLionProjects/CourseWork/main.c

CMakeFiles/course1.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/course1.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nuka/CLionProjects/CourseWork/main.c > CMakeFiles/course1.dir/main.c.i

CMakeFiles/course1.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/course1.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nuka/CLionProjects/CourseWork/main.c -o CMakeFiles/course1.dir/main.c.s

CMakeFiles/course1.dir/text.c.o: CMakeFiles/course1.dir/flags.make
CMakeFiles/course1.dir/text.c.o: ../text.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuka/CLionProjects/CourseWork/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/course1.dir/text.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/course1.dir/text.c.o   -c /home/nuka/CLionProjects/CourseWork/text.c

CMakeFiles/course1.dir/text.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/course1.dir/text.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nuka/CLionProjects/CourseWork/text.c > CMakeFiles/course1.dir/text.c.i

CMakeFiles/course1.dir/text.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/course1.dir/text.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nuka/CLionProjects/CourseWork/text.c -o CMakeFiles/course1.dir/text.c.s

CMakeFiles/course1.dir/sentence.c.o: CMakeFiles/course1.dir/flags.make
CMakeFiles/course1.dir/sentence.c.o: ../sentence.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuka/CLionProjects/CourseWork/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/course1.dir/sentence.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/course1.dir/sentence.c.o   -c /home/nuka/CLionProjects/CourseWork/sentence.c

CMakeFiles/course1.dir/sentence.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/course1.dir/sentence.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nuka/CLionProjects/CourseWork/sentence.c > CMakeFiles/course1.dir/sentence.c.i

CMakeFiles/course1.dir/sentence.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/course1.dir/sentence.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nuka/CLionProjects/CourseWork/sentence.c -o CMakeFiles/course1.dir/sentence.c.s

CMakeFiles/course1.dir/menu.c.o: CMakeFiles/course1.dir/flags.make
CMakeFiles/course1.dir/menu.c.o: ../menu.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuka/CLionProjects/CourseWork/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/course1.dir/menu.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/course1.dir/menu.c.o   -c /home/nuka/CLionProjects/CourseWork/menu.c

CMakeFiles/course1.dir/menu.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/course1.dir/menu.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nuka/CLionProjects/CourseWork/menu.c > CMakeFiles/course1.dir/menu.c.i

CMakeFiles/course1.dir/menu.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/course1.dir/menu.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nuka/CLionProjects/CourseWork/menu.c -o CMakeFiles/course1.dir/menu.c.s

CMakeFiles/course1.dir/unique_sentence_in_text.c.o: CMakeFiles/course1.dir/flags.make
CMakeFiles/course1.dir/unique_sentence_in_text.c.o: ../unique_sentence_in_text.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuka/CLionProjects/CourseWork/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/course1.dir/unique_sentence_in_text.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/course1.dir/unique_sentence_in_text.c.o   -c /home/nuka/CLionProjects/CourseWork/unique_sentence_in_text.c

CMakeFiles/course1.dir/unique_sentence_in_text.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/course1.dir/unique_sentence_in_text.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nuka/CLionProjects/CourseWork/unique_sentence_in_text.c > CMakeFiles/course1.dir/unique_sentence_in_text.c.i

CMakeFiles/course1.dir/unique_sentence_in_text.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/course1.dir/unique_sentence_in_text.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nuka/CLionProjects/CourseWork/unique_sentence_in_text.c -o CMakeFiles/course1.dir/unique_sentence_in_text.c.s

CMakeFiles/course1.dir/update_format_date.c.o: CMakeFiles/course1.dir/flags.make
CMakeFiles/course1.dir/update_format_date.c.o: ../update_format_date.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuka/CLionProjects/CourseWork/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/course1.dir/update_format_date.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/course1.dir/update_format_date.c.o   -c /home/nuka/CLionProjects/CourseWork/update_format_date.c

CMakeFiles/course1.dir/update_format_date.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/course1.dir/update_format_date.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nuka/CLionProjects/CourseWork/update_format_date.c > CMakeFiles/course1.dir/update_format_date.c.i

CMakeFiles/course1.dir/update_format_date.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/course1.dir/update_format_date.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nuka/CLionProjects/CourseWork/update_format_date.c -o CMakeFiles/course1.dir/update_format_date.c.s

CMakeFiles/course1.dir/sort_sentence_product.c.o: CMakeFiles/course1.dir/flags.make
CMakeFiles/course1.dir/sort_sentence_product.c.o: ../sort_sentence_product.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuka/CLionProjects/CourseWork/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/course1.dir/sort_sentence_product.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/course1.dir/sort_sentence_product.c.o   -c /home/nuka/CLionProjects/CourseWork/sort_sentence_product.c

CMakeFiles/course1.dir/sort_sentence_product.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/course1.dir/sort_sentence_product.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nuka/CLionProjects/CourseWork/sort_sentence_product.c > CMakeFiles/course1.dir/sort_sentence_product.c.i

CMakeFiles/course1.dir/sort_sentence_product.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/course1.dir/sort_sentence_product.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nuka/CLionProjects/CourseWork/sort_sentence_product.c -o CMakeFiles/course1.dir/sort_sentence_product.c.s

# Object files for target course1
course1_OBJECTS = \
"CMakeFiles/course1.dir/main.c.o" \
"CMakeFiles/course1.dir/text.c.o" \
"CMakeFiles/course1.dir/sentence.c.o" \
"CMakeFiles/course1.dir/menu.c.o" \
"CMakeFiles/course1.dir/unique_sentence_in_text.c.o" \
"CMakeFiles/course1.dir/update_format_date.c.o" \
"CMakeFiles/course1.dir/sort_sentence_product.c.o"

# External object files for target course1
course1_EXTERNAL_OBJECTS =

course1: CMakeFiles/course1.dir/main.c.o
course1: CMakeFiles/course1.dir/text.c.o
course1: CMakeFiles/course1.dir/sentence.c.o
course1: CMakeFiles/course1.dir/menu.c.o
course1: CMakeFiles/course1.dir/unique_sentence_in_text.c.o
course1: CMakeFiles/course1.dir/update_format_date.c.o
course1: CMakeFiles/course1.dir/sort_sentence_product.c.o
course1: CMakeFiles/course1.dir/build.make
course1: CMakeFiles/course1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nuka/CLionProjects/CourseWork/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C executable course1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/course1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/course1.dir/build: course1

.PHONY : CMakeFiles/course1.dir/build

CMakeFiles/course1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/course1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/course1.dir/clean

CMakeFiles/course1.dir/depend:
	cd /home/nuka/CLionProjects/CourseWork/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuka/CLionProjects/CourseWork /home/nuka/CLionProjects/CourseWork /home/nuka/CLionProjects/CourseWork/cmake-build-debug /home/nuka/CLionProjects/CourseWork/cmake-build-debug /home/nuka/CLionProjects/CourseWork/cmake-build-debug/CMakeFiles/course1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/course1.dir/depend

