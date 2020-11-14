#include <string>
#include <iostream>
#include <snappy.h>


int main() {
    std::string input{"xxxxzczx"};
    std::string output;
    snappy::Compress(input.data(), input.size(), &output);
    std::cout << output << std::endl;
}

