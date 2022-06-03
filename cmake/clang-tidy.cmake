option(CLANG_TIDY "Lint with Clang-Tidy" ON)

find_program(CLANG_TIDY_PATH clang-tidy clang-tidy-6.0 clang-tidy-10 clang-tidy-12)

if(NOT CLANG_TIDY_PATH)
    message(FATAL_ERROR "clang-tidy not found! Aborting...")
endif()

if(CLANG_TIDY)
    set(CMAKE_CXX_CLANG_TIDY
    ${CLANG_TIDY_PATH};
    -header-filter=.;
    -checks=*,-modernize-use-trailing-return-type,-llvm-*,-llvmlibc-*;
    -warnings-as-errors=*;)
endif()
