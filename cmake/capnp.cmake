find_package(CapnProto REQUIRED)

set(ENV{PATH} ${CapnProto_INCLUDE_DIR}/../bin/:$ENV{PATH})

function(generate_capnproto schema_name)
    set(EXECUTE_COMMAND ${CapnProto_INCLUDE_DIR}/../bin/capnp compile -oc++ ${CMAKE_CURRENT_SOURCE_DIR}/${schema_name} --src-prefix=${CMAKE_CURRENT_SOURCE_DIR})

    execute_process(
        COMMAND ${EXECUTE_COMMAND}
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    )
endfunction(generate_capnproto schema_name)