cmake_minimum_required(VERSION 3.15)
project(course1 C)

set(CMAKE_C_STANDARD 99)

include_directories(include)

add_executable(course1 src/main.c src/text.c include/text.h src/sentence.c include/sentence.h src/menu.c include/menu.h src/unique_sentence_in_text.c include/unique_sentence_in_text.h src/update_format_date.c include/update_format_date.h src/sort_sentence_product.c include/sort_sentence_product.h src/processing_text.c include/processing_text.h)