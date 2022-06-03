set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_CXX_FLAGS_RELEASE "-O3")

add_compile_options(-Wall
                    -Wextra
                    -Wshadow
                    -Wnon-virtual-dtor
                    -Wold-style-cast
                    -Wcast-align
                    -Woverloaded-virtual
                    -Wformat-security
                    -Wunused
                    -Wconversion
                    -Werror
                    -fstack-protector-strong)

if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    add_compile_options(-fdiagnostics-color=always)
elseif("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    add_compile_options(-fcolor-diagnostics)
endif()
                
