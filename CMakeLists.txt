cmake_minimum_required(VERSION 3.23)

project(Template VERSION 1.0)

if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release")
endif()

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake" ${CMAKE_BINARY_DIR}/${CMAKE_BUILD_TYPE}/generators ${CMAKE_MODULE_PATH})
set(CMAKE_PREFIX_PATH ${CMAKE_BINARY_DIR}/${CMAKE_BUILD_TYPE}/generators ${CMAKE_PREFIX_PATH})

include(conan)
include(ccache)
include(compiler-options)
include(clang-tidy)
include(sanitizers)
include(benchmarks)
include(tests)
include(coverage)
include(capnp)

find_package(absl REQUIRED)
find_package(Boost REQUIRED)
find_package(Eigen3 REQUIRED)
find_package(jemalloc REQUIRED)
find_package(TBB REQUIRED)
find_package(spdlog REQUIRED)
find_package(thrust REQUIRED)
find_package(zmqpp REQUIRED) 

add_subdirectory(src)
