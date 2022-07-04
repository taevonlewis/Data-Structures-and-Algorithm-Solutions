// String Repeat

#include <string>

std::string repeat_str(size_t repeat, const std::string& str) {
  std::string newStr {};
  
  for (int i = 0; i < repeat; i++)
    {
    newStr += str;
  }
  return newStr;
}