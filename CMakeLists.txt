cmake_minimum_required(VERSION 3.15)
project(course1 C)

set(CMAKE_C_STANDARD 99)

add_executable(course1 main.c text.c text.h sentence.c sentence.h)