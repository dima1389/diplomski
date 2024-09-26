
@REM Update the Package Database and Core Packages
pacman -Syu

@REM Install arm-none-eabi-gcc
@REM Use pacman to install the ARM GCC toolchain:
pacman -S arm-none-eabi-gcc

@REM Verify the Installation
arm-none-eabi-gcc --version
@REM OUTPUT: error: target not found: arm-none-eabi-gcc

@REM Install Additional Tools (Optional)
pacman -S arm-none-eabi-binutils arm-none-eabi-gdb arm-none-eabi-newlib
@REM arm-none-eabi-binutils: Provides assembler, linker, and other binary utilities.
@REM arm-none-eabi-gdb: Debugger for ARM embedded systems.
@REM arm-none-eabi-newlib: C standard library for embedded systems.



@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -o prog2.elf hello.c sw_info_copy.c -T linker.ld
@REM arm-none-eabi-objcopy -O srec prog2.elf prog2.s19



@REM https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads
@REM https://developer.arm.com/-/media/Files/downloads/gnu/13.3.rel1/binrel/arm-gnu-toolchain-13.3.rel1-mingw-w64-i686-arm-none-eabi.exe
@REM C:\Program Files (x86)\Arm GNU Toolchain arm-none-eabi\13.3 rel1
@REM PATH = C:\Program Files (x86)\Arm GNU Toolchain arm-none-eabi\13.3 rel1\bin
@REM where arm-none-eabi-gcc
@REM arm-none-eabi-gcc --version
