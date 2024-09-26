	.cpu cortex-m4
	.arch armv7e-m
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "main.c"
	.align	1
	.p2align 2,,3
	.global	delay
	.syntax unified
	.thumb
	.thumb_func
	.type	delay, %function
delay:
.LVL0:
.LFB0:
	.loc 1 33 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 33 1 is_stmt 0 view .LVU1
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]
	.loc 1 35 5 is_stmt 1 view .LVU2
.L2:
	.loc 1 39 5 view .LVU3
	.loc 1 35 12 discriminator 1 view .LVU4
	.loc 1 35 17 is_stmt 0 discriminator 1 view .LVU5
	ldr	r3, [sp, #4]
	subs	r2, r3, #1
	str	r2, [sp, #4]
	.loc 1 35 12 discriminator 1 view .LVU6
	cmp	r3, #0
	bne	.L2
	.loc 1 40 1 view .LVU7
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE0:
	.size	delay, .-delay
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB1:
	.loc 1 44 1 is_stmt 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 52 5 view .LVU9
	ldr	r2, .L12
	.loc 1 63 5 is_stmt 0 view .LVU10
	ldr	r1, .L12+4
	.loc 1 52 5 view .LVU11
	ldr	r3, [r2, #2096]
	.loc 1 52 17 view .LVU12
	orr	r3, r3, #8
	str	r3, [r2, #2096]
	.loc 1 63 5 is_stmt 1 view .LVU13
	ldr	r3, [r1, #3072]
	.loc 1 63 17 is_stmt 0 view .LVU14
	bic	r3, r3, #50331648
	str	r3, [r1, #3072]
	.loc 1 66 5 is_stmt 1 view .LVU15
	ldr	r3, [r1, #3072]
	.loc 1 66 17 is_stmt 0 view .LVU16
	orr	r3, r3, #16777216
	str	r3, [r1, #3072]
.L9:
	.loc 1 73 5 is_stmt 1 view .LVU17
	.loc 1 78 9 view .LVU18
	ldr	r2, [r1, #3092]
	ldr	r3, .L12+8
	.loc 1 78 19 is_stmt 0 view .LVU19
	orr	r2, r2, #4096
	str	r2, [r1, #3092]
	.loc 1 81 9 is_stmt 1 view .LVU20
.LVL1:
.LBB6:
.LBI6:
	.loc 1 32 6 view .LVU21
.LBB7:
	.loc 1 35 5 view .LVU22
.L7:
	.loc 1 39 5 view .LVU23
	.loc 1 35 12 discriminator 1 view .LVU24
	.loc 1 35 17 is_stmt 0 discriminator 1 view .LVU25
	mov	r2, r3
	subs	r3, r3, #1
	.loc 1 35 12 discriminator 1 view .LVU26
	cmp	r2, #0
	bne	.L7
.LVL2:
	.loc 1 35 12 discriminator 1 view .LVU27
.LBE7:
.LBE6:
	.loc 1 86 9 is_stmt 1 view .LVU28
	ldr	r2, [r1, #3092]
	ldr	r3, .L12+8
	.loc 1 86 19 is_stmt 0 view .LVU29
	bic	r2, r2, #4096
	str	r2, [r1, #3092]
	.loc 1 89 9 is_stmt 1 discriminator 1 view .LVU30
.LVL3:
.LBB8:
.LBI8:
	.loc 1 32 6 view .LVU31
.LBB9:
	.loc 1 35 5 view .LVU32
.L8:
	.loc 1 39 5 view .LVU33
	.loc 1 35 12 discriminator 1 view .LVU34
	.loc 1 35 17 is_stmt 0 discriminator 1 view .LVU35
	mov	r2, r3
	subs	r3, r3, #1
	.loc 1 35 12 discriminator 1 view .LVU36
	cmp	r2, #0
	bne	.L8
	b	.L9
.L13:
	.align	2
.L12:
	.word	1073885184
	.word	1073872896
	.word	1000000
.LBE9:
.LBE8:
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/13.3 rel1/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/13.3 rel1/arm-none-eabi/include/sys/_stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x118
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x1d
	.4byte	.LASF12
	.4byte	.LASF13
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x55
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x49
	.uleb128 0x5
	.4byte	0x78
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2b
	.byte	0x5
	.4byte	0x6a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea
	.uleb128 0x7
	.4byte	0xea
	.4byte	.LBI6
	.byte	.LVU21
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.4byte	0xca
	.uleb128 0x8
	.4byte	0xf7
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x9
	.4byte	0xea
	.4byte	.LBI8
	.byte	.LVU31
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x59
	.byte	0x9
	.uleb128 0xa
	.4byte	0xf7
	.4byte	0xf4240
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.byte	0x1
	.4byte	0x104
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x20
	.byte	0x1e
	.4byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	0xea
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	0xf7
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 .LVU21
	.uleb128 .LVU27
.LLST0:
	.byte	0x8
	.4byte	.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x6
	.byte	0xc
	.4byte	0xf4240
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL1:
	.byte	0x7
	.4byte	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF16:
	.ascii	"count\000"
.LASF15:
	.ascii	"delay\000"
.LASF13:
	.ascii	"c:\\Users\\Dimitrije\\Desktop\\Diplomski\\gcc\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF14:
	.ascii	"main\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF6:
	.ascii	"long long int\000"
.LASF12:
	.ascii	"main.c\000"
.LASF2:
	.ascii	"short int\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"GNU C17 13.3.1 20240614 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"loat-abi=soft -march=armv7e-m -g -O3\000"
	.ident	"GCC: (Arm GNU Toolchain 13.3.Rel1 (Build arm-13.24)) 13.3.1 20240614"
