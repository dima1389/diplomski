
// #include "sw_info.h"
#ifndef SW_INFO
#define SW_INFO

/* SW version */
#define MAJOR_RELEASE_VERSION 0xFF
#define MINOR_RELEASE_VERSION 0xFF

/* SW release date */
#define SW_BUILD_DAY 0xFF
#define SW_BUILD_MONTH 0xFF
#define SW_BUILD_YEAR_HI 0xFF
#define SW_BUILD_YEAR_LO 0xFF

/* Common configuration */
#define CUSTOMER_ID 0xFF
#define PRODUCT_ID 0xFF
#define PRODUCT_TYPE 0xFF

/* Compatibility indexes */
#define BOOT_APP_INDEX 0xFF
#define APP_CALIB_INDEX 0xFF

/* Custom data type - unsigned byte */
typedef unsigned char UBYTE;

/* Definition of the SW info structure */
typedef struct
{
    UBYTE major_release_version;
    UBYTE minor_release_version;
    UBYTE sw_build_day;
    UBYTE sw_build_month;
    UBYTE sw_build_year_hi;
    UBYTE sw_build_year_lo;
    UBYTE customer_id;
    UBYTE product_id;
    UBYTE product_type;
    UBYTE boot_app_index;
    UBYTE app_calib_index;

} sw_info;

/* Start of the .sw_info memory segment */
#pragma startdata
#pragma section rodata = '.sw_info'

/* Read-only SW info */
const sw_info id =
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
    APP_CALIB_INDEX
};

/* End of the .sw_info memory segment */
#pragma enddata
#pragma section rodata = default

#endif
