
del /Q /F *.s *.exe *.o *.bin *.s19 *.elf

@REM Use the appropriate GCC cross-compiler for your target architecture. 
@REM For example, if you're targeting an ARM Cortex-M microcontroller, you might use arm-none-eabi-gcc.
arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -g -O0 -T linker_directive.ld -o led.elf led.c
@REM -mcpu=cortex-m4: Specifies the target CPU.
@REM -mthumb: Generates code for the Thumb instruction set.
@REM -g: Includes debug information.
@REM -O0: Disables optimizations.
@REM -T linker_script.ld: Uses a linker script specific to your hardware.
@REM -o simple_embedded_program.elf: Names the output ELF file.

@REM Use objcopy to convert the ELF file into the S19 (Motorola S-record) format.
arm-none-eabi-objcopy -O srec led.elf led.s19
@REM -O srec: Specifies the output format as S-record.
@REM led.elf: Input ELF file.
@REM led.s19: Output S19 file.
