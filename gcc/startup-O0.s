	.cpu cortex-m4
	.arch armv7e-m
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"startup.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "startup.c"
	.global	isr_vectors
	.section	.isr_vector,"aw"
	.align	2
	.type	isr_vectors, %object
	.size	isr_vectors, 16
isr_vectors:
	.word	_estack
	.word	Reset_Handler
	.word	NMI_Handler
	.word	HardFault_Handler
	.text
	.align	1
	.global	Reset_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	Reset_Handler, %function
Reset_Handler:
.LFB0:
	.loc 1 29 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 33 9
	ldr	r3, .L7
	str	r3, [r7, #4]
	.loc 1 34 9
	ldr	r3, .L7+4
	str	r3, [r7]
	.loc 1 35 11
	b	.L2
.L3:
	.loc 1 37 22
	ldr	r2, [r7, #4]
	adds	r3, r2, #4
	str	r3, [r7, #4]
	.loc 1 37 13
	ldr	r3, [r7]
	adds	r1, r3, #4
	str	r1, [r7]
	.loc 1 37 18
	ldr	r2, [r2]
	.loc 1 37 16
	str	r2, [r3]
.L2:
	.loc 1 35 16
	ldr	r3, [r7]
	ldr	r2, .L7+8
	cmp	r3, r2
	bcc	.L3
	.loc 1 41 9
	ldr	r3, .L7+12
	str	r3, [r7]
	.loc 1 42 11
	b	.L4
.L5:
	.loc 1 44 13
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	.loc 1 44 16
	movs	r2, #0
	str	r2, [r3]
.L4:
	.loc 1 42 16
	ldr	r3, [r7]
	ldr	r2, .L7+16
	cmp	r3, r2
	bcc	.L5
	.loc 1 48 5
	bl	main
.L6:
	.loc 1 51 11
	b	.L6
.L8:
	.align	2
.L7:
	.word	_sidata
	.word	_sdata
	.word	_edata
	.word	_sbss
	.word	_ebss
	.cfi_endproc
.LFE0:
	.size	Reset_Handler, .-Reset_Handler
	.align	1
	.global	Default_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	Default_Handler, %function
Default_Handler:
.LFB1:
	.loc 1 56 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L10:
	.loc 1 57 11
	b	.L10
	.cfi_endproc
.LFE1:
	.size	Default_Handler, .-Default_Handler
	.weak	HardFault_Handler
	.thumb_set HardFault_Handler,Default_Handler
	.weak	NMI_Handler
	.thumb_set NMI_Handler,Default_Handler
.Letext0:
	.file 2 "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/13.3 rel1/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/13.3 rel1/arm-none-eabi/include/sys/_stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x130
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x1d
	.4byte	.LASF19
	.4byte	.LASF20
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
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
	.uleb128 0x3
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
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x11
	.4byte	0x78
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x1a
	.4byte	0x78
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x22
	.4byte	0x78
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x2a
	.4byte	0x78
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x31
	.4byte	0x78
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x38
	.4byte	0x78
	.uleb128 0x7
	.4byte	0xd0
	.4byte	0xd0
	.uleb128 0x8
	.4byte	0x71
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x78
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x13
	.byte	0xb
	.4byte	0xc0
	.uleb128 0x5
	.byte	0x3
	.4byte	isr_vectors
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6
	.byte	0xc
	.4byte	0x6a
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.ascii	"src\000"
	.byte	0xf
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.ascii	"dst\000"
	.byte	0x15
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 30
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xd
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF19:
	.ascii	"startup.c\000"
.LASF12:
	.ascii	"_sdata\000"
.LASF14:
	.ascii	"_sbss\000"
.LASF15:
	.ascii	"_ebss\000"
.LASF23:
	.ascii	"Reset_Handler\000"
.LASF20:
	.ascii	"c:\\Users\\Dimitrije\\Desktop\\Diplomski\\gcc\000"
.LASF13:
	.ascii	"_edata\000"
.LASF11:
	.ascii	"_sidata\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF21:
	.ascii	"main\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF6:
	.ascii	"long long int\000"
.LASF22:
	.ascii	"Default_Handler\000"
.LASF17:
	.ascii	"isr_vectors\000"
.LASF2:
	.ascii	"short int\000"
.LASF16:
	.ascii	"_estack\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF18:
	.ascii	"GNU C17 13.3.1 20240614 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"loat-abi=soft -march=armv7e-m -g -O0\000"
	.ident	"GCC: (Arm GNU Toolchain 13.3.Rel1 (Build arm-13.24)) 13.3.1 20240614"
