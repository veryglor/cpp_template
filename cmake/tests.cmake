option(BUILD_TESTS "Build the tests" ON)

if(BUILD_TESTS)
    find_package(GTest REQUIRED)
    enable_testing()

    # The function expects test's name as the first parameter,
    # it should be the same as the .cpp test file name.
    # Next parameters are the libraries to link against.
    function(add_test_executable test_name)
        add_executable(${test_name} ${test_name}.cpp)
        target_link_libraries(${test_name} GTest::gtest_main ${ARGN})
        add_test(NAME ${test_name} COMMAND ${test_name})
    endfunction(add_test_executable test_name)

else()
    function(add_test_executable test_name)
    endfunction(add_test_executable test_name)
endif()