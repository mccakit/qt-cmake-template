qt_add_executable(main main.cpp)
set_property(TARGET main PROPERTY WIN32_EXECUTABLE TRUE)
target_link_libraries(main PRIVATE Qt6::Quick)

qt_add_resources(RESOURCES main.qrc)
target_sources(main PRIVATE ${RESOURCES})

if(WIN32)
    add_custom_command(TARGET main POST_BUILD
        COMMAND "C:/Qt/6.9.1/msvc2022_64/bin/windeployqt.exe"
            "$<TARGET_FILE:main>"
    )
endif()
