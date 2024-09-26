// sw_info_copy.c

#include <stdint.h>

/* SW version */
#define MAJOR_RELEASE_VERSION 0x11
#define MINOR_RELEASE_VERSION 0x11

/* SW release date */
#define SW_BUILD_DAY 0x11
#define SW_BUILD_MONTH 0x11
#define SW_BUILD_YEAR_HI 0x11
#define SW_BUILD_YEAR_LO 0x11

/* Common configuration */
#define CUSTOMER_ID 0x11
#define PRODUCT_ID 0x11
#define PRODUCT_TYPE 0x11

/* Compatibility indexes */
#define BOOT_APP_INDEX 0x11
#define APP_CALIB_INDEX 0x11

/* Custom data type - unsigned byte */
typedef uint8_t UBYTE;

/* Definition of the SW info structure */
typedef struct
{
    uint8_t major_release_version;
    uint8_t minor_release_version;
    uint8_t sw_build_day;
    uint8_t sw_build_month;
    uint8_t sw_build_year_hi;
    uint8_t sw_build_year_lo;
    uint8_t customer_id;
    uint8_t product_id;
    uint8_t product_type;
    uint8_t boot_app_index;
    uint8_t app_calib_index;
    uint8_t a;
    uint8_t b;
    uint8_t c;
    uint8_t d;
    uint8_t e;
} sw_info;

/* Place the variable in the .sw_info section and mark it as used */
const sw_info id __attribute__((section(".sw_info"), used)) =
{
    MAJOR_RELEASE_VERSION,
    MINOR_RELEASE_VERSION,
    SW_BUILD_DAY,
    SW_BUILD_MONTH,
    SW_BUILD_YEAR_HI,
    SW_BUILD_YEAR_LO,
    CUSTOMER_ID,
    PRODUCT_ID,
    PRODUCT_TYPE,
    BOOT_APP_INDEX,
    APP_CALIB_INDEX,
    0x11,
    0x11,
    0x11,
    0x11,
    0x11
};
