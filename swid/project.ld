DEFAULTS
{
    CODE_FLASH_Address = 0x10000000
    CODE_FLASH_Size = 4160K

    WORK_FLASH_Address = 0x14000000
    WORK_FLASH_Size = 256K

    SRAM_Address = 0x28000000
    SRAM_Size = 768K

    // CODE_FLASH usage

    BOOT_Address = CODE_FLASH_Address
    BOOT_Size = 128K

    RTSW_Address = BOOT_Address + BOOT_Size
    RTSW_Size = 

    RTSW_ID_Address = RTSW_Address + RTSW_Size
    RTSW_ID_Size = 64

    RTSW_Signature_Address = RTSW_ID_Address + RTSW_Signature_Size
    RTSW_Signature_Size = 8K

    CALIB_Address = RTSW_Signature_Address + RTSW_Signature_Size
    CALIB_Size = 8K

    CALIB_Signature_Address = CALIB_Address + CALIB_Size
    CALIB_Signature_Size = 8K

    FOTA_Config_Address = CALIB_Signature_Address + CALIB_Signature_Size
    FOTA_Config_Size = 1K

    // RAM usage

    SRAM_BOOT_Address = SRAM_Address
    SRAM_BOOT_Size = 8K

    SRAM_RTSW_Address = SRAM_BOOT_Address + SRAM_BOOT_Size
    SRAM_RTSW_Size = SRAM_Size - SRAM_BOOT_Size
}

MEMORY
{
    // CODE FLASH
    CODE_FLASH_BOOT        :   ORIGIN = BOOT_Address              ,   LENGTH = BOOT_Size
    CODE_FLASH_RTSW        :   ORIGIN = RTSW_Address              ,   LENGTH = RTSW_Size
    CODE_FLASH_RTSW_ID     :   ORIGIN = RTSW_ID_Address           ,   LENGTH = RTSW_ID_Size
    CODE_FLASH_RTSW_SIG    :   ORIGIN = RTSW_Signature_Address    ,   LENGTH = RTSW_Signature_Size
    CODE_FLASH_CALIB       :   ORIGIN = CALIB_Address             ,   LENGTH = CALIB_Size
    CODE_FLASH_CALIB_SIG   :   ORIGIN = CALIB_Signature_Address   ,   LENGTH = CALIB_Signature_Size
    CODE_FLASH_FOTA        :   ORIGIN = FOTA_Config_Address       ,   LENGTH = FOTA_Config_Size

    // WORK FLASH
    WORK_FLASH             :   ORIGIN = WORK_FLASH_Address        ,   LENGTH = WORK_FLASH_Size

    // RAM
    SRAM_BOOT              :   ORIGIN = SRAM_BOOT_Address         ,   LENGTH = SRAM_BOOT_Size
    SRAM_RTSW              :   ORIGIN = SRAM_RTSW_Address         ,   LENGTH = SRAM_RTSW_Size
}

SECTIONS
{
    // ROM sections
    .sw_info :   > FLASH_RTSW_ID
    .text    :   > FLASH_RTSW
    .rodata  :   > .

    // RAM sections
    .data    :   > SRAM_RTSW
    .bss     :   > .
    .heap    :   > .
    .stack   :   > .
}
