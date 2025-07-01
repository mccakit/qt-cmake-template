wasm
```
C:\dev\toolchains\emsdk_qt\emsdk_env.ps1
C:\Qt\6.9.1\wasm_multithread\bin\qt-cmake.bat -S . -B build/wasm32 -G Ninja
```
android
```
C:\Qt\6.9.1\android_arm64_v8a\bin\qt-cmake.bat `
-S . `
-B "build/android-arm64" `
-G "Ninja" `
-DANDROID_SDK_ROOT="C:\Users\cakit\scoop\apps\android-clt\current" `
-DANDROID_NDK_ROOT="C:\Users\cakit\scoop\apps\android-clt\current\ndk\29.0.13113456" `
-DANDROID_PLATFORM=android-35
```

Works for
- Android ARM64
- WASM32 
- Windows x64
- Windows ARM64
- Linux x64
- Linux ARM64
- MacOS x64
- MacOS ARM64
