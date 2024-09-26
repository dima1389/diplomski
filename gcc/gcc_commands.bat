@REM gcc --version

del /Q /F *.s *.exe *.o *.bin *.s19 *.elf *.i

@REM Compile
@REM gcc -c hello.c -o hello.o
@REM @REM Link
@REM gcc hello.o -o hello
@REM @REM Create BIN
@REM objcopy -O binary hello.exe hello.bin
@REM @REM Create S19
@REM objcopy -O srec hello.exe hello.s19

@REM ldd ./hello

@REM gcc hello.c -o hello-static -static
@REM ldd ./hello-static

@REM gcc hello.c sw_info.c -o prog1
@REM objcopy -O binary prog1.exe prog1.bin
@REM objcopy -O srec prog1.exe prog1.s19
@REM objcopy -O elf32-little prog1.exe prog1.elf
@REM If objcopy cannot determine the input format automatically, you may need to specify it using the -I option.
@REM objcopy -I pe-i386 -O elf32-i386 prog1.exe prog1.elf
@REM -I pe-i386: Specifies the input format as a 32-bit PE (Portable Executable), common for Windows executables.
@REM -O elf32-i386: Specifies the output format as 32-bit ELF for the i386 architecture.

@REM gcc hello.c sw_info.c -o prog1-static -static



@REM It's generally more straightforward to generate the ELF file directly during the compilation and linking process.
@REM gcc -o prog2.elf hello.c sw_info.c
@REM objcopy -O binary prog2.elf prog2.bin
@REM objcopy -O srec prog2.elf prog2.s19

@REM gcc -o prog3.elf hello.c sw_info.c -T linker_script.ld
@REM objcopy -O binary prog3.elf prog3.bin
@REM objcopy -O srec prog3.elf prog3.s19

@REM gcc -o prog4.elf hello.c sw_info.c -Wl,--section-start=.sw_info=0x40001000
@REM objcopy -O binary prog4.elf prog4.bin
@REM objcopy -O srec prog4.elf prog4.s19

@REM hello.c is using the standard C library and system calls that are not available in a bare-metal environment
@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -o prog5.elf hello.c sw_info.c -T linker_script.ld
@REM arm-none-eabi-objcopy -O srec prog5.elf prog5.bin
@REM arm-none-eabi-objcopy -O srec prog5.elf prog5.s19
@REM Attempts to solve the dependencies
@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -o prog6.elf hello.c sw_info.c -T linker_script.ld --specs=nosys.specs
@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -o prog7.elf hello.c sw_info.c -T linker_script.ld -nostdlib -nostartfiles


@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -g -T linker_script.ld -o main.elf startup.c main.c --specs=nosys.specs
@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -g -T linker_script.ld                     -o main.elf startup.c main.c syscalls.c --specs=nosys.specs
@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -g -T linker_script.ld -Wl,-Map=output.map -o main.elf startup.c main.c syscalls.c --specs=nosys.specs




arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -g -T linker_script.ld -Wl,-Map=output.map -o main.elf startup.c main.c syscalls.c sw_info.c --specs=nosys.specs -nostartfiles -save-temps
arm-none-eabi-objcopy -O srec main.elf main.bin
arm-none-eabi-objcopy -O srec main.elf main.s19

@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O3 -g -T linker_script.ld -Wl,-Map=output.map -o main-O3.elf startup.c main.c syscalls.c sw_info.c --specs=nosys.specs -nostartfiles -save-temps
@REM arm-none-eabi-objcopy -O srec main-O3.elf main-O3.bin
@REM arm-none-eabi-objcopy -O srec main-O3.elf main-O3.s19

@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -Os -g -T linker_script.ld -Wl,-Map=output.map -o main-Os.elf startup.c main.c syscalls.c sw_info.c --specs=nosys.specs -nostartfiles -save-temps
@REM arm-none-eabi-objcopy -O srec main-Os.elf main-Os.bin
@REM arm-none-eabi-objcopy -O srec main-Os.elf main-Os.s19




@REM -S: Generate assembly code.
@REM -O0: No optimization.
@REM -O1: ?
@REM -O2: ?
@REM -g: Include debug information.
@REM -o startup-00.s: Output file name.


@REM Create assembly files
@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -S -O0 -g main.c -o main-O0.s
@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -S -O1 -g main.c -o main-O1.s
@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -S -O2 -g main.c -o main-O2.s
@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -S -O3 -g main.c -o main-O3.s
@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -S -Os -g main.c -o main-Os.s
@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -S -Ofast -g main.c -o main-Ofast.s

@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -S -O0 -g startup.c -o startup-O0.s
@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -S -O0 -g syscalls.c -o syscalls-O0.s
@REM arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -S -O0 -g sw_info.c -o sw_info-O0.s





@REM objdump -d hello.exe
@REM objdump -d hello-static.exe
