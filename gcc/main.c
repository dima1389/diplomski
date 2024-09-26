// File: main.c

// Include standard integer definitions
#include <stdint.h>

// Define base addresses for peripheral registers (specific to the microcontroller)
// For this example, we'll assume we're using an STM32F4 microcontroller.
// Always refer to your MCU's datasheet to get the correct addresses.

// Base address for GPIO Port D
#define GPIOD_BASE       0x40020C00U

// Base address for Reset and Clock Control (RCC)
#define RCC_BASE         0x40023800U

// Offset addresses for specific registers within peripherals
#define RCC_AHB1ENR_OFFSET   0x30U    // RCC AHB1 peripheral clock enable register offset
#define GPIO_MODER_OFFSET    0x00U    // GPIO port mode register offset
#define GPIO_ODR_OFFSET      0x14U    // GPIO port output data register offset

// Define pointers to the actual registers by adding offsets to base addresses
#define RCC_AHB1ENR    (*(volatile uint32_t *)(RCC_BASE + RCC_AHB1ENR_OFFSET))
#define GPIOD_MODER    (*(volatile uint32_t *)(GPIOD_BASE + GPIO_MODER_OFFSET))
#define GPIOD_ODR      (*(volatile uint32_t *)(GPIOD_BASE + GPIO_ODR_OFFSET))

// Define the LED pin number (e.g., Pin 12 on GPIOD)
#define LED_PIN        12U

// Function to create a simple delay
// For accurate delays, consider using hardware timers instead of loop-based delays.
// Example: Configure a timer peripheral to generate delays or interrupts.
void delay(volatile uint32_t count)
{
    // Decrement the count variable until it reaches zero
    while (count--)
    {
        // This loop does nothing; it's just a time delay
        // The 'volatile' keyword prevents the compiler from optimizing this empty loop away
    }
}

// The main function where the program execution begins
int main(void)
{
    // -----------------------------
    // Peripheral Clock Configuration
    // -----------------------------

    // Enable the clock for GPIOD peripheral in the RCC AHB1 peripheral clock enable register
    // Each bit in RCC_AHB1ENR corresponds to a different peripheral
    // Bit 3 (starting from 0) corresponds to GPIOD
    RCC_AHB1ENR |= (1U << 3);

    // -----------------------------
    // GPIO Configuration
    // -----------------------------

    // Configure the mode of the LED pin to output mode

    // Clear the mode bits for the LED pin (set them to 00)
    // Each pin has two bits in the MODER register
    // For pin 12, we need to clear bits 24 and 25 (since 12 * 2 = 24)
    GPIOD_MODER &= ~(0x3U << (LED_PIN * 2U));

    // Set the mode bits for the LED pin to 01 (general purpose output mode)
    GPIOD_MODER |= (0x1U << (LED_PIN * 2U));

    // -----------------------------
    // Main Loop
    // -----------------------------

    // Infinite loop to toggle the LED on and off
    while (1)
    {
        // Turn the LED on

        // Set the output data register (ODR) bit corresponding to the LED pin to 1
        GPIOD_ODR |= (1U << LED_PIN);

        // Call the delay function to keep the LED on for some time
        delay(1000000U);  // Adjust the count value to control the delay duration

        // Turn the LED off

        // Clear the ODR bit corresponding to the LED pin to 0
        GPIOD_ODR &= ~(1U << LED_PIN);

        // Call the delay function to keep the LED off for some time
        delay(1000000U);  // Adjust the count value to control the delay duration
    }

    // The program should never reach this point
    // In embedded applications, main typically doesn't return
    return 0;
}
