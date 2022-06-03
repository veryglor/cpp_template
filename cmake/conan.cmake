option(RUN_CONAN "Run conan install" ON)

if(RUN_CONAN)
    find_program(CONAN_PATH conan)

    if(NOT CONAN_PATH)
        message(FATAL_ERROR "conan not found! Please install using 'pip install conan' Aborting...")
    endif()

    exec_program(${CONAN_PATH} ${CMAKE_BINARY_DIR} ARGS install ${CMAKE_SOURCE_DIR} --build missing --settings=build_type=${CMAKE_BUILD_TYPE})
endif()