# Dependencies
Managed by *conan* https://conan.io/

List of used dependencies is in the **conanfile.txt**

To use a dependency mention it in the **CMakeLists.txt**, e.g.: `find_package(absl REQUIRED)` for the `abseil` library.

# Options
**BUILD_BENCH**, default=**OFF**: build benchmarks, declared with `add_benchmark` function.

**BUILD_TESTS**, default=**ON**: build tests declared with `add_test_executable` function.

**CLANG_TIDY**, default=**ON**: use clang-tidy for linting.

**COVERAGE**, default=**OFF**: collect code coverage information.

**RUN_CONAN**, default=**OFF**: whether to run conan or not (usually needed only for initial configuration or when dependencies changed)

**USE_SANITIZERS**, default=**OFF**: use address and undefined behavior sanitizers

# Building (need to run conan at least first time)
```
mkdir -p build && cd build && cmake .. -DRUN_CONAN=1 && make -j12
```

# Coverage
To collect coverage - build project with *COVERAGE* option enabled and then run:
```
make test && make coverage
```
It will generate as `coverage.info` file as the html representation, which can be accessed through the `index.html`.

# Benchmarks
Benchmarks can be declared with `add_benchmark` function, see `cmake/benchmarks.cmake` for usage details.

# Tests
Tests can be declared with `add_test_executable` function, see `cmake/tests.cmake` for usage details.

# CapNproto
To use capNproto compiler, utilize the `generate_capnproto` function.
