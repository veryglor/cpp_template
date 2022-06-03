option(COVERAGE "Calculate code coverage" OFF)

if(COVERAGE)
    find_program(LCOV_PATH lcov)
    find_program(GENTHML_PATH genhtml)

    if(NOT LCOV_PATH)
        message(FATAL_ERROR "lcov not found! Aborting...")
    endif()

    if(NOT GENTHML_PATH)
        message(FATAL_ERROR "genhtml not found! Aborting...")
    endif()

    add_compile_options(-O0 -g)
    add_compile_options(--coverage)
    add_link_options(--coverage)

    add_custom_target(
        coverage
        COMMAND ${LCOV_PATH} --capture --directory ${CMAKE_CURRENT_SOURCE_DIR} --output-file coverage.info --no-external
        COMMAND ${LCOV_PATH} --remove coverage.info '**/tests/*' '**/test/*' --output-file coverage.info
        COMMAND ${GENTHML_PATH} coverage.info --output-directory ${CMAKE_BINARY_DIR}
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    )
endif()