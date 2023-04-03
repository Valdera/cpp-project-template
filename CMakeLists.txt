cmake_minimum_required(VERSION 3.16)

project("CppProjectTemplate" VERSION 1.0.0 LANGUAGES C CXX)

# Global CMake variables
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Options
option(ENABLE_TESTING "Enable a Unit Testing build" ON)
option(ENABLE_COVERAGE "Enable a Code Coverage build." OFF)
option(ENABLE_WARNINGS "Enable to add warnings to a target." OFF)

# Project/Library names
set(LIBRARY_NAME "lib")
set(UNIT_TEST_NAME "unit_tests")
set(EXECUTABLE_NAME "main")

# CMake modules
set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/")
include(AddGitSubmodule)
include(FetchContent)
include(Docs)
include(Warnings)

if(ENABLE_COVERAGE)
    include(CodeCoverage)
    append_coverage_compiler_flags()
endif()

## External Lib: Submodule
add_git_submodule(external/json)

## External Lib: Fetch Content
FetchContent_Declare(
    fmt
    GIT_REPOSITORY https://github.com/fmtlib/fmt
    GIT_TAG 9.1.0
)
FetchContent_MakeAvailable(fmt)
FetchContent_Declare(
    spdlog
    GIT_REPOSITORY https://github.com/gabime/spdlog
    GIT_TAG v1.11.0
)
FetchContent_MakeAvailable(spdlog)

## External Lib: CONAN
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

# Subdirectory
add_subdirectory(external)
add_subdirectory(configured)
add_subdirectory(src)
add_subdirectory(app)
add_subdirectory(tests)
