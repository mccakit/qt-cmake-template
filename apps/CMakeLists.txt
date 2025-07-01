find_package(Qt6 REQUIRED COMPONENTS Core Quick)
qt_add_executable(main main.cpp)
target_link_libraries(main PRIVATE Qt6::Quick)
if(APPLE)
    set_target_properties(main PROPERTIES MACOSX_BUNDLE TRUE)
elseif(WIN32)
    set_property(TARGET main PROPERTY WIN32_EXECUTABLE TRUE)
endif()
qt_add_resources(RESOURCES main.qrc)
target_sources(main PRIVATE ${RESOURCES})

if(WIN32)
    add_custom_command(TARGET main POST_BUILD
        COMMAND "C:/Qt/6.9.1/msvc2022_64/bin/windeployqt.exe"
        --qmldir "${CMAKE_SOURCE_DIR}"
            "$<TARGET_FILE:main>"
    )
endif()
