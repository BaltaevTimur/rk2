cmake_minimum_required(VERSION 3.22)

project(example)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(ConceptualExample ${CMAKE_CURRENT_SOURCE_DIR}/ConceptualExample.cpp)
add_library(Vehicles ${CMAKE_CURRENT_SOURCE_DIR}/Vehicles.cpp)

add_executable(example ${CMAKE_CURRENT_SOURCE_DIR}/Program.cpp)

target_link_libraries(example ConceptualExample)
target_link_libraries(example Vehicles)

option(BUILD_TESTS "Build tests" OFF)

if(BUILD_TESTS)                   
  add_compile_options(--coverage) 
endif()

if(BUILD_TESTS)
  enable_testing()
  add_subdirectory(third-party/gtest)
  file(GLOB ConceptualExample_TEST_SOURCES test.cpp)
  add_executable(check ${ConceptualExample_TEST_SOURCES})
  target_link_libraries(check ConceptualExample gtest_main)
  add_test(NAME check COMMAND check)
install(TARGETS example
    RUNTIME DESTINATION bin
)

set(CPACK_PACKAGE_VERSION 1.0.0)

include(CPack.cmake)
