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
	.file	"syscalls.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "syscalls.c"
	.align	1
	.global	_exit
	.syntax unified
	.thumb
	.thumb_func
	.type	_exit, %function
_exit:
.LFB0:
	.loc 1 7 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
.L2:
	.loc 1 8 11
	b	.L2
	.cfi_endproc
.LFE0:
	.size	_exit, .-_exit
	.align	1
	.global	_close
	.syntax unified
	.thumb
	.thumb_func
	.type	_close, %function
_close:
.LFB1:
	.loc 1 11 22
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 11 31
	mov	r3, #-1
	.loc 1 11 35
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE1:
	.size	_close, .-_close
	.align	1
	.global	_fstat
	.syntax unified
	.thumb
	.thumb_func
	.type	_fstat, %function
_fstat:
.LFB2:
	.loc 1 12 39
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 12 53
	ldr	r3, [r7]
	mov	r2, #8192
	str	r2, [r3, #4]
	.loc 1 12 71
	movs	r3, #0
	.loc 1 12 74
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE2:
	.size	_fstat, .-_fstat
	.align	1
	.global	_isatty
	.syntax unified
	.thumb
	.thumb_func
	.type	_isatty, %function
_isatty:
.LFB3:
	.loc 1 13 23
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 13 32
	movs	r3, #1
	.loc 1 13 35
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE3:
	.size	_isatty, .-_isatty
	.align	1
	.global	_lseek
	.syntax unified
	.thumb
	.thumb_func
	.type	_lseek, %function
_lseek:
.LFB4:
	.loc 1 14 40
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 14 49
	movs	r3, #0
	.loc 1 14 52
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE4:
	.size	_lseek, .-_lseek
	.align	1
	.global	_read
	.syntax unified
	.thumb
	.thumb_func
	.type	_read, %function
_read:
.LFB5:
	.loc 1 15 41
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 15 50
	movs	r3, #0
	.loc 1 15 53
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE5:
	.size	_read, .-_read
	.align	1
	.global	_write
	.syntax unified
	.thumb
	.thumb_func
	.type	_write, %function
_write:
.LFB6:
	.loc 1 16 42
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 16 51
	ldr	r3, [r7, #4]
	.loc 1 16 56
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE6:
	.size	_write, .-_write
	.align	1
	.global	_sbrk
	.syntax unified
	.thumb
	.thumb_func
	.type	_sbrk, %function
_sbrk:
.LFB7:
	.loc 1 17 25
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 17 34
	mov	r3, #-1
	.loc 1 17 47
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE7:
	.size	_sbrk, .-_sbrk
	.align	1
	.global	_kill
	.syntax unified
	.thumb
	.thumb_func
	.type	_kill, %function
_kill:
.LFB8:
	.loc 1 18 29
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 18 38
	mov	r3, #-1
	.loc 1 18 42
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE8:
	.size	_kill, .-_kill
	.align	1
	.global	_getpid
	.syntax unified
	.thumb
	.thumb_func
	.type	_getpid, %function
_getpid:
.LFB9:
	.loc 1 19 19
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 19 28
	movs	r3, #1
	.loc 1 19 31
	mov	r0, r3
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE9:
	.size	_getpid, .-_getpid
.Letext0:
	.file 2 "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/13.3 rel1/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/13.3 rel1/arm-none-eabi/include/sys/_types.h"
	.file 4 "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/13.3 rel1/arm-none-eabi/include/sys/_timeval.h"
	.file 5 "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/13.3 rel1/arm-none-eabi/include/sys/_timespec.h"
	.file 6 "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/13.3 rel1/arm-none-eabi/include/sys/types.h"
	.file 7 "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/13.3 rel1/arm-none-eabi/include/sys/stat.h"
	.file 8 "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/13.3 rel1/arm-none-eabi/include/sys/unistd.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x475
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x1d
	.4byte	.LASF64
	.4byte	.LASF65
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x55
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.4byte	.LASF9
	.byte	0x2
	.byte	0xc8
	.byte	0x1e
	.4byte	0x5c
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1
	.4byte	.LASF12
	.byte	0x3
	.byte	0x1e
	.byte	0xe
	.4byte	0x42
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.4byte	0x42
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2e
	.byte	0xe
	.4byte	0x42
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x3
	.byte	0x38
	.byte	0xf
	.4byte	0x34
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x3
	.byte	0x3c
	.byte	0x18
	.4byte	0x3b
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x3
	.byte	0x3f
	.byte	0x18
	.4byte	0x3b
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x3
	.byte	0x4b
	.byte	0x18
	.4byte	0x3b
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x3
	.byte	0x5a
	.byte	0x14
	.4byte	0x49
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x3
	.byte	0x66
	.byte	0x10
	.4byte	0xa3
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x3
	.byte	0xd5
	.byte	0x18
	.4byte	0x3b
	.uleb128 0x7
	.4byte	0x108
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2a
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x10
	.byte	0x5
	.byte	0x2f
	.4byte	0x142
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x5
	.byte	0x30
	.byte	0x9
	.4byte	0x10f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x5
	.byte	0x31
	.byte	0x7
	.4byte	0x42
	.byte	0x8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x6
	.byte	0x61
	.byte	0x14
	.4byte	0x8b
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x6
	.byte	0x66
	.byte	0x15
	.4byte	0x97
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x6
	.byte	0x79
	.byte	0x10
	.4byte	0x103
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x6
	.byte	0x89
	.byte	0x12
	.4byte	0xd3
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x6
	.byte	0x9b
	.byte	0x12
	.4byte	0xeb
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x6
	.byte	0x9f
	.byte	0x12
	.4byte	0xaf
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x6
	.byte	0xa3
	.byte	0x12
	.4byte	0xbb
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x6
	.byte	0xa7
	.byte	0x12
	.4byte	0xc7
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0xdf
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x6
	.byte	0xc0
	.byte	0x13
	.4byte	0xf7
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x58
	.byte	0x7
	.byte	0x1b
	.4byte	0x27d
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x7
	.byte	0x1d
	.byte	0xa
	.4byte	0x17e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x7
	.byte	0x1e
	.byte	0xa
	.4byte	0x166
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x7
	.byte	0x1f
	.byte	0xa
	.4byte	0x1a2
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x7
	.byte	0x20
	.byte	0xb
	.4byte	0x1ae
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x7
	.byte	0x21
	.byte	0xa
	.4byte	0x18a
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x7
	.byte	0x22
	.byte	0xa
	.4byte	0x196
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x7
	.byte	0x23
	.byte	0xa
	.4byte	0x17e
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x7
	.byte	0x24
	.byte	0xa
	.4byte	0x172
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x7
	.byte	0x2a
	.byte	0x13
	.4byte	0x11b
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x7
	.byte	0x2b
	.byte	0x13
	.4byte	0x11b
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x11b
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x7
	.byte	0x2d
	.byte	0x11
	.4byte	0x14e
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x7
	.byte	0x2e
	.byte	0xc
	.4byte	0x142
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x7
	.byte	0x30
	.byte	0x9
	.4byte	0x27d
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.4byte	0x42
	.4byte	0x28d
	.uleb128 0xc
	.4byte	0x7d
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x1
	.byte	0x13
	.byte	0x5
	.4byte	0x76
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0x12
	.byte	0x5
	.4byte	0x76
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d9
	.uleb128 0x4
	.ascii	"pid\000"
	.byte	0x12
	.byte	0xf
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.ascii	"sig\000"
	.byte	0x12
	.byte	0x18
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0x11
	.byte	0x9
	.4byte	0x15a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x301
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x11
	.byte	0x13
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x5
	.4byte	.LASF55
	.byte	0x10
	.byte	0x5
	.4byte	0x76
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x345
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x10
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.ascii	"ptr\000"
	.byte	0x10
	.byte	0x1c
	.4byte	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x4
	.ascii	"len\000"
	.byte	0x10
	.byte	0x25
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0xf
	.byte	0x5
	.4byte	0x76
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x389
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xf
	.byte	0xf
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.ascii	"ptr\000"
	.byte	0xf
	.byte	0x1b
	.4byte	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x4
	.ascii	"len\000"
	.byte	0xf
	.byte	0x24
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0xe
	.byte	0x5
	.4byte	0x76
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cd
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xe
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.ascii	"ptr\000"
	.byte	0xe
	.byte	0x1a
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x4
	.ascii	"dir\000"
	.byte	0xe
	.byte	0x23
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0xd
	.byte	0x5
	.4byte	0x76
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f5
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xd
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x5
	.4byte	.LASF60
	.byte	0xc
	.byte	0x5
	.4byte	0x76
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42a
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xc
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.ascii	"st\000"
	.byte	0xc
	.byte	0x23
	.4byte	0x42a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x7
	.4byte	0x1ba
	.uleb128 0x5
	.4byte	.LASF61
	.byte	0xb
	.byte	0x5
	.4byte	0x76
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x457
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xb
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x8
	.byte	0x12
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x6
	.byte	0x10
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x87
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
.LASF20:
	.ascii	"__off_t\000"
.LASF17:
	.ascii	"__gid_t\000"
.LASF48:
	.ascii	"st_ctim\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF50:
	.ascii	"st_blocks\000"
.LASF9:
	.ascii	"__int_least64_t\000"
.LASF37:
	.ascii	"stat\000"
.LASF67:
	.ascii	"_exit\000"
.LASF6:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF39:
	.ascii	"st_ino\000"
.LASF19:
	.ascii	"__mode_t\000"
.LASF12:
	.ascii	"__blkcnt_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF58:
	.ascii	"_lseek\000"
.LASF60:
	.ascii	"_fstat\000"
.LASF66:
	.ascii	"_getpid\000"
.LASF46:
	.ascii	"st_atim\000"
.LASF35:
	.ascii	"nlink_t\000"
.LASF30:
	.ascii	"off_t\000"
.LASF33:
	.ascii	"gid_t\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF15:
	.ascii	"__dev_t\000"
.LASF42:
	.ascii	"st_uid\000"
.LASF51:
	.ascii	"st_spare4\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF61:
	.ascii	"_close\000"
.LASF26:
	.ascii	"blkcnt_t\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF32:
	.ascii	"uid_t\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF21:
	.ascii	"__nlink_t\000"
.LASF59:
	.ascii	"_isatty\000"
.LASF45:
	.ascii	"st_size\000"
.LASF55:
	.ascii	"_write\000"
.LASF40:
	.ascii	"st_mode\000"
.LASF25:
	.ascii	"tv_nsec\000"
.LASF11:
	.ascii	"long double\000"
.LASF24:
	.ascii	"tv_sec\000"
.LASF63:
	.ascii	"GNU C17 13.3.1 20240614 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"loat-abi=soft -march=armv7e-m -g -O0\000"
.LASF13:
	.ascii	"__blksize_t\000"
.LASF14:
	.ascii	"_off_t\000"
.LASF31:
	.ascii	"dev_t\000"
.LASF23:
	.ascii	"time_t\000"
.LASF57:
	.ascii	"_read\000"
.LASF41:
	.ascii	"st_nlink\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF2:
	.ascii	"short int\000"
.LASF56:
	.ascii	"file\000"
.LASF49:
	.ascii	"st_blksize\000"
.LASF36:
	.ascii	"timespec\000"
.LASF18:
	.ascii	"__ino_t\000"
.LASF28:
	.ascii	"caddr_t\000"
.LASF44:
	.ascii	"st_rdev\000"
.LASF22:
	.ascii	"char\000"
.LASF16:
	.ascii	"__uid_t\000"
.LASF52:
	.ascii	"_kill\000"
.LASF64:
	.ascii	"syscalls.c\000"
.LASF43:
	.ascii	"st_gid\000"
.LASF62:
	.ascii	"status\000"
.LASF34:
	.ascii	"mode_t\000"
.LASF38:
	.ascii	"st_dev\000"
.LASF27:
	.ascii	"blksize_t\000"
.LASF47:
	.ascii	"st_mtim\000"
.LASF65:
	.ascii	"c:\\Users\\Dimitrije\\Desktop\\Diplomski\\gcc\000"
.LASF54:
	.ascii	"incr\000"
.LASF53:
	.ascii	"_sbrk\000"
.LASF29:
	.ascii	"ino_t\000"
	.ident	"GCC: (Arm GNU Toolchain 13.3.Rel1 (Build arm-13.24)) 13.3.1 20240614"
