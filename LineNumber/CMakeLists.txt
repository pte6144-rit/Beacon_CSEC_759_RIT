cmake_minimum_required(VERSION 3.11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(line_numbers VERSION 1.0)
add_executable(lineNumbers src/lineNumbers.cpp)

target_include_directories(lineNumbers PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
