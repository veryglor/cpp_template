generate_capnproto(addressbook.capnp)

add_executable(project_x main.cpp)
target_link_libraries(project_x TBB::tbb absl::flat_hash_map)

add_library(lib_file lib_file.cpp)
add_library(lib_file_x lib_file_x.cpp)
target_link_libraries(lib_file_x CapnProto::capnp)

add_subdirectory(tests)