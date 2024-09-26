// startup.c

#include <stdint.h>

/* External declarations */
extern int main(void);
extern uint32_t _sidata, _sdata, _edata, _sbss, _ebss, _estack;

/* Function prototypes */
void Reset_Handler(void);
void Default_Handler(void);

/* Weak aliases for exception handlers */
void NMI_Handler(void)          __attribute__ ((weak, alias("Default_Handler")));
void HardFault_Handler(void)    __attribute__ ((weak, alias("Default_Handler")));

/* Interrupt vector table */
__attribute__ ((section(".isr_vector")))
uint32_t *isr_vectors[] = {
    &_estack,                   /* Initial stack pointer */
    (uint32_t *)Reset_Handler,  /* Reset handler */
    (uint32_t *)NMI_Handler,    /* NMI handler */
    (uint32_t *)HardFault_Handler, /* Hard fault handler */
    /* Add other handlers here */
};

/* Reset handler */
void Reset_Handler(void)
{
    uint32_t *src, *dst;

    /* Copy .data section from FLASH to RAM */
    src = &_sidata;
    dst = &_sdata;
    while (dst < &_edata)
    {
        *dst++ = *src++;
    }

    /* Zero initialize the .bss section */
    dst = &_sbss;
    while (dst < &_ebss)
    {
        *dst++ = 0;
    }

    /* Call the main function */
    main();

    /* Infinite loop if main returns */
    while (1) { }
}

/* Default handler for exceptions/interrupts */
void Default_Handler(void)
{
    while (1) { }
}
