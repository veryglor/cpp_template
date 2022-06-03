cmake_minimum_required(VERSION 3.23)

project(Template VERSION 1.0)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake" ${CMAKE_BINARY_DIR} ${CMAKE_MODULE_PATH})
set(CMAKE_PREFIX_PATH ${CMAKE_BINARY_DIR} ${CMAKE_PREFIX_PATH})

include(compiler-options)
include(clang-tidy)
include(sanitizers)
include(conan)
include(benchmarks)
include(tests)
include(coverage)

find_package(absl REQUIRED)
find_package(Boost REQUIRED)
find_package(CapnProto REQUIRED)
find_package(Eigen3 REQUIRED)
find_package(jemalloc REQUIRED)
find_package(TBB REQUIRED)
find_package(spdlog REQUIRED)
find_package(thrust REQUIRED)
find_package(zmqpp REQUIRED) 

add_subdirectory(src)
