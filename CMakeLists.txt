cmake_minimum_required(VERSION 4.0.2)
set(CMAKE_EXPERIMENTAL_CXX_MODULE_CMAKE_API "OFF")
set(CMAKE_CXX_SCAN_FOR_MODULES OFF)
project(
    QT_template
    VERSION 1.0
    DESCRIPTION "Lmao"
    LANGUAGES C CXX
)
set(CMAKE_CXX_STANDARD 26)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
add_subdirectory(extern)
add_subdirectory(apps)
