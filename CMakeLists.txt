cmake_minimum_required(VERSION 3.22)

project(example)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


add_library(ConceptualExample ${CMAKE_CURRENT_SOURCE_DIR}/ConceptualExample.cpp)
add_library(Vehicles ${CMAKE_CURRENT_SOURCE_DIR}/Vehicles.cpp)

add_executable(example ${CMAKE_CURRENT_SOURCE_DIR}/Program.cpp)

target_link_libraries(example ConceptualExample)
target_link_libraries(example Vehicles)


install(TARGETS example
    RUNTIME DESTINATION bin
)

include(CPack.cmake)
