find_package(CapnProto REQUIRED)

set(ENV{PATH} ${CapnProto_capnpc_LIB_DIRS}/../bin/:$ENV{PATH})

function(generate_capnproto schema_name)
    exec_program(
        ${CapnProto_capnpc_LIB_DIRS}/../bin/capnp
        ${CMAKE_CURRENT_SOURCE_DIR}
        ARGS 
        compile -oc++ --src-prefix="${CMAKE_CURRENT_SOURCE_DIR}" ${CMAKE_CURRENT_SOURCE_DIR}/${schema_name})
endfunction(generate_capnproto schema_name)