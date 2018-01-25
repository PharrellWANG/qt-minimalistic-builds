# mingw-w64-qt5-builds
This is attempt to build Qt 5 libraries in minimalistic mode. Output binaries have fewer dependencies, are lighter and thus are smaller.

This projects aims to provide only x64 variant of Qt 5 library and its dependencies. Both release and debug builds are provided.

All original licenses of all used components (Qt, qtbinpatcher, MinGW-w64) are respected!!! Unmodified source code of Qt is used and the license of produced Qt binaries is the same as license used in original OSS Qt libraries.

Note that there are also official [MSYS2 Qt packages](https://github.com/Alexpux/MINGW-packages). These differ from these packages. They are compiled with almost all features/modules enabled, thus are probably bigger and have more dependencies across themselves.

**You can support me on [Liberapay](https://liberapay.com/martinrotter).**

## How this differs from official Qt Windows binaries?
Well, there are some differences:

* these binaries are compiled with **MinGW-w64** toolchain and are **x64** (while official Windows MinGW Qt binaries are only x86 and used MinGW is very outdated),
* **some features and modules are disabled**, which makes dependency tree smaller (details are specified in description of each release),
* distribution is relocatable (via `qtbinpatcher.exe`) and coinstallable with original MSYS2 Qt 5 packages,
* debug/release builds are available,
* static/dynamic builds are available,
* allmost all 3rd-party libs used by Qt are compiled directly into libraries.

## How to use
1. Install MinGW-w64 x64 compiler toolchain:
    1. You can use [MSYS2](http://www.msys2.org/) which contains the compiler. In that case install MSYS2, then run its shell and update all MSYS2 packages with `pacman -Syu`. Then install the compiler with `pacman -S mingw-w64-x86_64-toolchain`. **This is the recommended way.**
    1. Or you can get only the [MinGW-w64 x64 compiler](https://sourceforge.net/projects/mingw-w64).
1. Download [prebuilt Qt binaries](https://github.com/martinrotter/mingw-w64-qt5-builds/releases) and unpack them to folder of your choice, for example `C:\Qt\XX`.
1. Use command line to navigate to folder `C:\Qt\XX\bin` and run `qtbinpatcher.exe` and wait for it to finish its job. At this point, installation is complete and Qt library is ready for usage.

Special thanks to MSYS2/MinGW-w64 teams for their amazing job.