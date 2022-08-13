#include <absl/strings/str_cat.h>
#include <absl/strings/str_format.h>
#include <inttypes.h>
#include <iostream>

int main () {
  std::cout << absl::StrFormat("%020" PRIu64"", 12) << std::endl;

  return 0;
}