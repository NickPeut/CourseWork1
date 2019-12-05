cmake_minimum_required(VERSION 3.15)
project(course1 C)

set(CMAKE_C_STANDARD 99)

add_executable(course1 main.c text.c text.h sentence.c sentence.h menu.c menu.h unique_sentence_in_text.c unique_sentence_in_text.h update_format_date.c update_format_date.h sort_sentence_product.c sort_sentence_product.h processign_text.c processign_text.h)