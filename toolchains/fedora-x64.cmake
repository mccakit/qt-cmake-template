set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR x86_64)
set(triple x86_64-redhat-linux)

set(CMAKE_C_COMPILER /home/mccakit/dev/llvm/bin/clang)
set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER /home/mccakit/dev/llvm/bin/clang++)
set(CMAKE_CXX_COMPILER_TARGET ${triple})
set(CMAKE_ASM_COMPILER /home/mccakit/dev/llvm/bin/clang)
set(CMAKE_ASM_COMPILER_TARGET ${triple})
set(CMAKE_RC_COMPILER /home/mccakit/dev/llvm/bin/llvm-rc)
set(CMAKE_LINKER_TYPE LLD)
set(CMAKE_AR /home/mccakit/dev/llvm/bin/llvm-ar)
set(CMAKE_RANLIB /home/mccakit/dev/llvm/bin/llvm-ranlib)
set(CMAKE_MT /home/mccakit/dev/llvm/bin/llvm-mt)

set(CMAKE_SYSROOT /home/mccakit/dev/sysroots/fedora-x64)
set(CMAKE_FIND_ROOT_PATH
    ${CMAKE_SYSROOT}
    /home/mccakit/dev/qt
    /home/mccakit/dev/libcxx
)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
add_compile_options(
    -w
    -flto=thin
    --gcc-install-dir=${CMAKE_SYSROOT}/lib/gcc/${triple}/15
)
add_link_options(
    -w
    -flto=thin
    --gcc-install-dir=${CMAKE_SYSROOT}/lib/gcc/${triple}/15
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -nostdinc++ -nostdlib++ -stdlib=libc++ -isystem /home/mccakit/dev/libcxx/fedora-x64/include/c++/v1 -L/home/mccakit/dev/libcxx/fedora-x64/lib")
link_libraries(stdc++ gcc_s gcc /home/mccakit/dev/libcxx/fedora-x64/lib/libc++.a)
set(Qt6_DIR /home/mccakit/dev/qt/static/fedora-x64/lib/cmake/Qt6)
