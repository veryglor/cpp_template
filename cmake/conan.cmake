find_program(CONAN_PATH conan)

if(NOT CONAN_PATH)
    message(FATAL_ERROR "conan not found! Please install using 'pip install conan' Aborting...")
endif()

exec_program(${CONAN_PATH} ${CMAKE_BINARY_DIR} ARGS install ${CMAKE_SOURCE_DIR} --build missing)