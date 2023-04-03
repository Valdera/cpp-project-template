# C++ Project Template

![C++](https://img.shields.io/badge/C%2B%2B-11%2F14%2F17%2F20%2F23-blue)
![License](https://camo.githubusercontent.com/890acbdcb87868b382af9a4b1fac507b9659d9bf/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6c6963656e73652d4d49542d626c75652e737667)
![Linux Build](https://github.com/Valdera/cpp-project-template/workflows/Ubuntu%20CI%20Test/badge.svg)
![Windows Build](https://github.com/Valdera/cpp-project-template/workflows/Windows%20CI%20Test/badge.svg)
![MacOS Build](https://github.com/Valdera/cpp-project-template/workflows/MacOS%20CI%20Test/badge.svg)

- Use of modern CMake for building and compiling
- External libraries installed and managed by
  - CMake's [FetchContent](https://cmake.org/cmake/help/latest/module/FetchContent.html) OR
  - [Conan](https://conan.io/) Package Manager OR
  - [VCPKG](https://github.com/microsoft/vcpkg) Package Manager
- Unit testing using [Catch2](https://github.com/catchorg/Catch2)
- General purpose libraries: [JSON](https://github.com/nlohmann/json), [spdlog](https://github.com/gabime/spdlog), [cxxopts](https://github.com/jarro2783/cxxopts) and [fmt](https://github.com/fmtlib/fmt)
- Continuous integration testing with Github Actions and [pre-commit](https://pre-commit.com/)
- Code coverage reports, including automatic upload to [Codecov](https://codecov.io)
- Code documentation with [Doxygen](https://doxygen.nl/) and [Github Pages](https://franneck94.github.io/CppProjectTemplate/)

## Structure

``` text
├── CMakeLists.txt
├── app
│   ├── CMakesLists.txt
│   └── main.cc
├── cmake
│   └── cmake modules
├── docs
│   ├── Doxyfile
│   └── html/
├── external
│   ├── CMakesLists.txt
│   ├── ...
├── src
│   ├── CMakesLists.txt
│   ├── my_lib.h
│   └── my_lib.cc
└── tests
    ├── CMakeLists.txt
    └── main.cc
```

Library code goes into [src/](src/), main program code in [app/](app) and tests go in [tests/](tests/).

## Software Requirements

- CMake 3.16+
- GNU Makefile
- Doxygen
- Conan (<= 2) or VCPKG
- MSVC 2017 (or higher), G++9 (or higher), Clang++9 (or higher)
- Code Coverage (only on GNU|Clang): lcov, gcovr

## Reference

- [C++ Project Template](https://github.com/franneck94/CppProjectTemplate)
- [Google Style Clang Format](https://github.com/kehanXue/google-style-clang-format)
