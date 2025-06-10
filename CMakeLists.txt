set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR X86_64)
set(triple x86_64-windows-msvc)

set(CMAKE_C_COMPILER clang)
set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_CXX_COMPILER_TARGET ${triple})
set(CMAKE_LINKER_TYPE LLD)
set(CMAKE_AR llvm-ar)
set(CMAKE_RANLIB llvm-ranlib)
set(CMAKE_MT llvm-mt)
set(CMAKE_ASM_COMPILER llvm-as)

set(CMAKE_SYSROOT "C:/Program Files (x86)/Microsoft SDKs/Windows Kits/10")
list(APPEND CMAKE_FIND_ROOT_PATH "C:/dev/toolchains/llvm")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE BOTH)

cmake_minimum_required(VERSION 4.0.2)
set(CMAKE_EXPERIMENTAL_CXX_MODULE_CMAKE_API "OFF")
set(CMAKE_CXX_SCAN_FOR_MODULES OFF)
project(
    CrossFun
    VERSION 1.0
    DESCRIPTION "Lmao"
    LANGUAGES C CXX
)
set(CMAKE_CXX_STANDARD 23)
set(Qt6_DIR "C:/Qt/6.9.1/msvc2022_64/lib/cmake/Qt6")
set(VULKAN_SDK "C:/VulkanSDK/1.4.313.1")
find_package(Qt6 REQUIRED COMPONENTS Widgets)
add_executable(main main.cpp)
target_link_libraries(main PRIVATE Qt6::Widgets)
add_custom_command(TARGET main POST_BUILD
    COMMAND "${Qt6_DIR}/../../../bin/windeployqt.exe"
        "$<TARGET_FILE:main>"
        --no-translations
    COMMENT "Running windeployqt on the built executable"
)
