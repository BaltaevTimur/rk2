cmake_minimum_required(VERSION 3.22)

project(example)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(ConceptualExample ${CMAKE_CURRENT_SOURCE_DIR}/ConceptualExample.cpp)
add_library(Vehicles ${CMAKE_CURRENT_SOURCE_DIR}/Vehicles.cpp)

add_executable(example ${CMAKE_CURRENT_SOURCE_DIR}/Program.cpp)

target_link_libraries(example ConceptualExample)
target_link_libraries(example Vehicles)

set(CPACK_PACKAGE_VERSION 1.0.0)

include(CPack.cmake)
