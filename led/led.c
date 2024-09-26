// simple_embedded_program.c

#include <stdint.h>

// Simulated hardware register (for illustrative purposes)
volatile uint32_t *LED_PORT = (uint32_t *)0x40020C14;

void delay(volatile uint32_t count) {
    while (count--) {
        // Just looping to create a delay
    }
}

int main(void) {
    // Initialize hardware (e.g., configure LED port as output)
    // This is hardware-specific and would normally involve setting
    // particular bits in control registers.

    while (1) {
        // Toggle LED
        *LED_PORT ^= 0x1;

        // Delay
        delay(100000);
    }

    return 0;
}
