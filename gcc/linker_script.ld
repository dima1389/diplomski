/* linker_script.ld */

/* Define memory regions based on your MCU specifications */
MEMORY
{
    FLASH (rx)  : ORIGIN = 0x08000000, LENGTH = 512K  /* Adjust based on your MCU */
    RAM   (rwx) : ORIGIN = 0x20000000, LENGTH = 128K  /* Adjust based on your MCU */
}

/* Define sections */
SECTIONS
{
    /* Interrupt vector table placed at the beginning of FLASH */
    .isr_vector :
    {
        . = ALIGN(4);
        KEEP(*(.isr_vector))      /* Keep the interrupt vector table */
        . = ALIGN(4);
    } > FLASH

    /* Discard .init and .fini sections if not used */
    /DISCARD/ :
    {
        *(.init)
        *(.fini)
    }

    /* Code and read-only data */
    .text :
    {
        . = ALIGN(4);
        *(.text)                  /* All .text sections */
        *(.text*)                 /* All .text* sections */
        *(.rodata)                /* All .rodata sections */
        *(.rodata*)               /* All .rodata* sections */
        . = ALIGN(4);
    } > FLASH

    /* Initialized data */
    .data : AT (LOADADDR(.text) + SIZEOF(.text))
    {
        . = ALIGN(4);
        _sdata = .;               /* Start of .data in RAM */
        *(.data)                  /* All .data sections */
        *(.data*)                 /* All .data* sections */
        . = ALIGN(4);
        _edata = .;               /* End of .data in RAM */
    } > RAM

    /* Uninitialized data (zero-initialized variables) */
    .bss :
    {
        . = ALIGN(4);
        _sbss = .;                /* Start of .bss in RAM */
        *(.bss)
        *(.bss*)
        *(COMMON)
        . = ALIGN(4);
        _ebss = .;                /* End of .bss in RAM */
    } > RAM

    /* Define symbols expected by standard libraries */
    __bss_start__ = _sbss;
    __bss_end__ = _ebss;

    /* Stack and heap */
    ._user_heap_stack :
    {
        . = ALIGN(8);
        PROVIDE(end = .);
        PROVIDE(_end = .);
        . = . + _Min_Heap_Size;    /* Allocate heap */
        . = . + _Min_Stack_Size;   /* Allocate stack */
        . = ALIGN(8);
    } > RAM

    /* Place the .sw_info section at 0x0800A0A0 in FLASH */
    .sw_info 0x0800A0A0 :
    {
        . = ALIGN(4);
        KEEP(*(.sw_info))         /* Keep the .sw_info section */
        . = ALIGN(4);
    } > FLASH

    /* Define symbols for data initialization */
    _sidata = LOADADDR(.data);     /* Start of .data in FLASH */
    _estack = ORIGIN(RAM) + LENGTH(RAM); /* Top of the stack */

    /* End of the program */
    _end = .;
}

/* Define minimum stack and heap sizes */
_Min_Heap_Size = 0x400;     /* 1KB heap */
_Min_Stack_Size = 0x400;    /* 1KB stack */
