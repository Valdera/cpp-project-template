#include "my_lib.h"
#include <catch2/catch.hpp>
#include <iostream>
#include "config.hpp"

int print_hello_world() {
  std::cout << project_name << '\n';

  std::cout << project_version << '\n';

  std::cout << "Hello World\n";

  return 1;
}

unsigned int factorial(unsigned int n) {
  return n <= 1 ? 1 : factorial(n - 1) * n;
}
