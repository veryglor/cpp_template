option(BUILD_BENCH "Build the benchmarks" OFF)

if(BUILD_BENCH)
    find_package(benchmark REQUIRED)
    
    # The function expects benchmark's name as the first parameter,
    # it should be the same as the .cpp benchmark file name.
    # Next parameters are the libraries to link against.
    function(add_benchmark benchmark_name)
        add_executable(${benchmark_name} ${benchmark_name}.cpp)
        target_link_libraries(${benchmark_name} benchmark::benchmark ${ARGN})
    endfunction(add_benchmark benchmark_name)
    
else()
    function(add_benchmark benchmark_name)
    endfunction(add_benchmark benchmark_name)
endif()