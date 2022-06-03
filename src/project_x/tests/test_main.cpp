#include "../lib_file_x.hpp"
#include <gtest/gtest.h>
#include <iostream>

TEST(TestSuiteName, TestName) // NOLINT
{
    for (size_t i = 0; i < 1000; i++) { // NOLINT
        std::cout << get_a_number();
    } // NOLINT
}