find_package(Qt6 REQUIRED COMPONENTS Quick)
add_executable(main main.cpp)
target_link_libraries(main PRIVATE Qt6::Quick)
add_custom_command(TARGET main POST_BUILD
    COMMAND "${Qt6_DIR}/../../../bin/windeployqt.exe"
        "$<TARGET_FILE:main>"
        --no-translations
    COMMENT "Running windeployqt on the built executable"
)
if(EMSCRIPTEN)
    target_link_libraries(
        main
        PRIVATE
            "--preload-file ${CMAKE_CURRENT_LIST_DIR}/main.qml@/"
    )
endif()
macro(copy_helper filename)
    if(ANDROID)
        set(outname ${CMAKE_SOURCE_DIR}/gradle/app/src/main/assets)
    else()
        set(outname ${CMAKE_BINARY_DIR}/apps)
    endif()
    add_custom_command(
        TARGET main
        POST_BUILD
        COMMAND
            ${CMAKE_COMMAND} -E copy_if_different
            "${CMAKE_CURRENT_LIST_DIR}/${filename}" "${outname}"
    )
endmacro()
macro(copy_directory_helper foldername)
    if(ANDROID)
        set(outdir ${CMAKE_SOURCE_DIR}/gradle/app/src/main/assets)
    else()
        set(outdir ${CMAKE_BINARY_DIR}/apps)
    endif()
    add_custom_command(
        TARGET main
        POST_BUILD
        COMMAND
            ${CMAKE_COMMAND} -E copy_directory
            "${CMAKE_CURRENT_LIST_DIR}/${foldername}" "${outdir}/${foldername}"
    )
endmacro()
if(NOT EMSCRIPTEN)
    copy_helper("main.qml")
endif()
