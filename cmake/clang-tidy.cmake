option(CLANG_TIDY "Lint with Clang-Tidy" OFF)

if(CLANG_TIDY)
    find_program(CLANG_TIDY_PATH clang-tidy clang-tidy-6.0 clang-tidy-10 clang-tidy-12)

    if(NOT CLANG_TIDY_PATH)
        message(FATAL_ERROR "clang-tidy not found! Aborting...")
    endif()

    set(CMAKE_CXX_CLANG_TIDY ${CLANG_TIDY_PATH})
endif()
