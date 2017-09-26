	.section .mdebug.abi32
	.previous
	.abicalls
	.file 1 "tp0.c"
	.section	.debug_abbrev,"",@progbits
$Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.section	.debug_line,"",@progbits
$Ldebug_line0:
	.text
$Ltext0:
	.file 2 "/usr/include/mips/int_types.h"
	.file 3 "/usr/include/sys/ansi.h"
	.file 4 "/usr/include/mips/ansi.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/mips/types.h"
	.file 7 "/usr/include/sys/types.h"
	.file 8 "/usr/include/sys/endian.h"
	.file 9 "/usr/include/pthread_types.h"
	.file 10 "/usr/include/stdlib.h"
	.rdata
	.align	2
$LC0:
	.ascii	"%s\n\000"
	.align	2
$LC1:
	.ascii	"1.5\000"
	.text
	.align	2
	.globl	print_version
$LFB29:
	.loc 1 3 0
	.ent	print_version
print_version:
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
$LCFI0:
	sw	$31,32($sp)
$LCFI1:
	sw	$fp,28($sp)
$LCFI2:
	sw	$28,24($sp)
$LCFI3:
	move	$fp,$sp
$LCFI4:
	.loc 1 4 0
	la	$4,$LC0
	la	$5,$LC1
	la	$25,printf
	jal	$31,$25
	.loc 1 5 0
	move	$sp,$fp
	lw	$31,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$31
	.end	print_version
$LFE29:
	.size	print_version, .-print_version
	.rdata
	.align	2
$LC2:
	.ascii	"Usage:\n\000"
	.align	2
$LC3:
	.ascii	"\ttp0 -h\n\000"
	.align	2
$LC4:
	.ascii	"\ttp0 -V\n\000"
	.align	2
$LC5:
	.ascii	"\ttp0 [options]\n\000"
	.align	2
$LC6:
	.ascii	"Options:\n\000"
	.align	2
$LC7:
	.ascii	"\t-V, --version\tPrint version and quit.\n\000"
	.align	2
$LC8:
	.ascii	"\t-h, --help\tPrint this information.\n\000"
	.align	2
$LC9:
	.ascii	"\t-i, --input\tLocation of the input file.\n\000"
	.align	2
$LC10:
	.ascii	"\t-o, --output\tLocation of the output file.\n\000"
	.align	2
$LC11:
	.ascii	"Examples:\n\000"
	.align	2
$LC12:
	.ascii	"\ttp0 -i ~/input -o ~/output\n\000"
	.text
	.align	2
	.globl	print_usage
$LFB31:
	.loc 1 7 0
	.ent	print_usage
print_usage:
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
$LCFI5:
	sw	$31,32($sp)
$LCFI6:
	sw	$fp,28($sp)
$LCFI7:
	sw	$28,24($sp)
$LCFI8:
	move	$fp,$sp
$LCFI9:
	.loc 1 8 0
	la	$4,$LC2
	la	$25,printf
	jal	$31,$25
	.loc 1 9 0
	la	$4,$LC3
	la	$25,printf
	jal	$31,$25
	.loc 1 10 0
	la	$4,$LC4
	la	$25,printf
	jal	$31,$25
	.loc 1 11 0
	la	$4,$LC5
	la	$25,printf
	jal	$31,$25
	.loc 1 12 0
	la	$4,$LC6
	la	$25,printf
	jal	$31,$25
	.loc 1 13 0
	la	$4,$LC7
	la	$25,printf
	jal	$31,$25
	.loc 1 14 0
	la	$4,$LC8
	la	$25,printf
	jal	$31,$25
	.loc 1 15 0
	la	$4,$LC9
	la	$25,printf
	jal	$31,$25
	.loc 1 16 0
	la	$4,$LC10
	la	$25,printf
	jal	$31,$25
	.loc 1 17 0
	la	$4,$LC11
	la	$25,printf
	jal	$31,$25
	.loc 1 18 0
	la	$4,$LC12
	la	$25,printf
	jal	$31,$25
	.loc 1 19 0
	move	$sp,$fp
	lw	$31,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$31
	.end	print_usage
$LFE31:
	.size	print_usage, .-print_usage
	.align	2
	.globl	is_pal
$LFB33:
	.loc 1 21 0
	.ent	is_pal
is_pal:
	.frame	$fp,56,$31		# vars= 16, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,56
	.cprestore 16
$LCFI10:
	sw	$31,48($sp)
$LCFI11:
	sw	$fp,44($sp)
$LCFI12:
	sw	$28,40($sp)
$LCFI13:
	move	$fp,$sp
$LCFI14:
	sw	$4,56($fp)
	.loc 1 23 0
$LBB2:
	li	$2,1			# 0x1
	sw	$2,32($fp)
	.loc 1 24 0
	lw	$4,56($fp)
	la	$25,strlen
	jal	$31,$25
	addu	$2,$2,-1
	sw	$2,28($fp)
	.loc 1 25 0
	sw	$0,24($fp)
$L20:
	lw	$4,56($fp)
	la	$25,strlen
	jal	$31,$25
	srl	$3,$2,1
	lw	$2,24($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L23
	b	$L21
$L23:
	.loc 1 26 0
	lw	$3,56($fp)
	lw	$2,24($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	sll	$3,$2,1
	lw	$2,_tolower_tab_
	addu	$2,$3,$2
	addu	$4,$2,2
	lw	$3,56($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	sll	$3,$2,1
	lw	$2,_tolower_tab_
	addu	$2,$3,$2
	addu	$2,$2,2
	lh	$3,0($4)
	lh	$2,0($2)
	beq	$3,$2,$L22
	.loc 1 27 0
	sw	$0,32($fp)
	.loc 1 28 0
	b	$L21
	.loc 1 25 0
$L22:
	lw	$2,24($fp)
	addu	$2,$2,1
	sw	$2,24($fp)
	lw	$2,28($fp)
	addu	$2,$2,-1
	sw	$2,28($fp)
	b	$L20
$L21:
	.loc 1 31 0
	lw	$2,32($fp)
	.loc 1 32 0
	move	$sp,$fp
	lw	$31,48($sp)
	lw	$fp,44($sp)
	addu	$sp,$sp,56
	j	$31
$LBE2:
	.end	is_pal
$LFE33:
	.size	is_pal, .-is_pal
	.align	2
	.globl	chomp
$LFB35:
	.loc 1 34 0
	.ent	chomp
chomp:
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
$LCFI15:
	sw	$31,32($sp)
$LCFI16:
	sw	$fp,28($sp)
$LCFI17:
	sw	$28,24($sp)
$LCFI18:
	move	$fp,$sp
$LCFI19:
	sw	$4,40($fp)
	.loc 1 35 0
	lw	$4,40($fp)
	la	$25,strlen
	jal	$31,$25
	move	$3,$2
	lw	$2,40($fp)
	addu	$2,$3,$2
	addu	$2,$2,-1
	lb	$3,0($2)
	li	$2,10			# 0xa
	bne	$3,$2,$L25
	.loc 1 36 0
	lw	$4,40($fp)
	la	$25,strlen
	jal	$31,$25
	move	$3,$2
	lw	$2,40($fp)
	addu	$2,$3,$2
	addu	$2,$2,-1
	sb	$0,0($2)
	.loc 1 38 0
$L25:
	move	$sp,$fp
	lw	$31,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$31
	.end	chomp
$LFE35:
	.size	chomp, .-chomp
	.rdata
	.align	2
$LC13:
	.ascii	" \000"
	.align	2
$LC14:
	.ascii	"\n\000"
	.text
	.align	2
	.globl	handle_line
$LFB37:
	.loc 1 40 0
	.ent	handle_line
handle_line:
	.frame	$fp,48,$31		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
$LCFI20:
	sw	$31,40($sp)
$LCFI21:
	sw	$fp,36($sp)
$LCFI22:
	sw	$28,32($sp)
$LCFI23:
	move	$fp,$sp
$LCFI24:
	sw	$4,48($fp)
	sw	$5,52($fp)
	.loc 1 41 0
$LBB3:
	lw	$4,48($fp)
	la	$5,$LC13
	la	$25,strtok
	jal	$31,$25
	sw	$2,24($fp)
	.loc 1 42 0
$L28:
	lw	$2,24($fp)
	bne	$2,$0,$L30
	b	$L27
$L30:
	.loc 1 43 0
	lw	$4,24($fp)
	la	$25,chomp
	jal	$31,$25
	.loc 1 44 0
	lw	$4,24($fp)
	la	$25,is_pal
	jal	$31,$25
	beq	$2,$0,$L31
	.loc 1 45 0
	lw	$4,24($fp)
	lw	$5,52($fp)
	la	$25,fputs
	jal	$31,$25
	.loc 1 46 0
	la	$4,$LC14
	lw	$5,52($fp)
	la	$25,fputs
	jal	$31,$25
$L31:
	.loc 1 48 0
	move	$4,$0
	la	$5,$LC13
	la	$25,strtok
	jal	$31,$25
	sw	$2,24($fp)
	b	$L28
	.loc 1 50 0
$L27:
	move	$sp,$fp
	lw	$31,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$31
$LBE3:
	.end	handle_line
$LFE37:
	.size	handle_line, .-handle_line
	.rdata
	.align	2
$LC15:
	.ascii	"-\000"
	.align	2
$LC16:
	.ascii	"r\000"
	.align	2
$LC17:
	.ascii	"ERROR:\n"
	.ascii	"No se pudo abrir el archivo de entrada: %s\n\000"
	.align	2
$LC18:
	.ascii	"Saliendo con error\000"
	.align	2
$LC19:
	.ascii	"w\000"
	.align	2
$LC20:
	.ascii	"No se pudo abrir el archivo de salida: %s\n\000"
	.text
	.align	2
	.globl	handle
$LFB39:
	.loc 1 52 0
	.ent	handle
handle:
	.frame	$fp,304,$31		# vars= 264, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,304
	.cprestore 16
$LCFI25:
	sw	$31,296($sp)
$LCFI26:
	sw	$fp,292($sp)
$LCFI27:
	sw	$28,288($sp)
$LCFI28:
	move	$fp,$sp
$LCFI29:
	sw	$4,304($fp)
	sw	$5,308($fp)
	.loc 1 57 0
$LBB4:
	lw	$2,304($fp)
	beq	$2,$0,$L33
	lw	$4,304($fp)
	la	$5,$LC15
	la	$25,strcmp
	jal	$31,$25
	beq	$2,$0,$L33
	.loc 1 58 0
	lw	$4,304($fp)
	la	$5,$LC16
	la	$25,fopen
	jal	$31,$25
	sw	$2,24($fp)
	.loc 1 60 0
	lw	$2,24($fp)
	bne	$2,$0,$L35
	.loc 1 61 0
	la	$4,__sF+176
	la	$5,$LC17
	lw	$6,304($fp)
	la	$25,fprintf
	jal	$31,$25
	.loc 1 62 0
	la	$4,$LC18
	la	$25,perror
	jal	$31,$25
	.loc 1 63 0
	li	$4,1			# 0x1
	la	$25,exit
	jal	$31,$25
$L33:
	.loc 1 66 0
	la	$2,__sF
	sw	$2,24($fp)
$L35:
	.loc 1 69 0
	lw	$2,308($fp)
	beq	$2,$0,$L36
	lw	$4,308($fp)
	la	$5,$LC15
	la	$25,strcmp
	jal	$31,$25
	beq	$2,$0,$L36
	.loc 1 70 0
	lw	$4,308($fp)
	la	$5,$LC19
	la	$25,fopen
	jal	$31,$25
	sw	$2,28($fp)
	.loc 1 72 0
	lw	$2,28($fp)
	bne	$2,$0,$L39
	.loc 1 73 0
	la	$4,__sF+176
	la	$5,$LC20
	lw	$6,308($fp)
	la	$25,fprintf
	jal	$31,$25
	.loc 1 74 0
	la	$4,$LC18
	la	$25,perror
	jal	$31,$25
	.loc 1 75 0
	li	$4,2			# 0x2
	la	$25,exit
	jal	$31,$25
$L36:
	.loc 1 79 0
	la	$2,__sF+88
	sw	$2,28($fp)
	.loc 1 83 0
$L39:
	addu	$2,$fp,32
	move	$4,$2
	li	$5,256			# 0x100
	lw	$6,24($fp)
	la	$25,fgets
	jal	$31,$25
	bne	$2,$0,$L41
	b	$L40
$L41:
	.loc 1 84 0
	addu	$2,$fp,32
	move	$4,$2
	lw	$5,28($fp)
	la	$25,handle_line
	jal	$31,$25
	b	$L39
$L40:
	.loc 1 87 0
	lw	$2,24($fp)
	beq	$2,$0,$L42
	lw	$3,24($fp)
	la	$2,__sF
	beq	$3,$2,$L42
	.loc 1 88 0
	lw	$4,24($fp)
	la	$25,fclose
	jal	$31,$25
$L42:
	.loc 1 91 0
	lw	$2,28($fp)
	beq	$2,$0,$L43
	lw	$3,28($fp)
	la	$2,__sF+88
	beq	$3,$2,$L43
	.loc 1 92 0
	lw	$4,28($fp)
	la	$25,fclose
	jal	$31,$25
$L43:
	.loc 1 95 0
	move	$4,$0
	la	$25,exit
	jal	$31,$25
	.loc 1 96 0
$LBE4:
	.end	handle
$LFE39:
	.size	handle, .-handle
	.rdata
	.align	2
$LC21:
	.ascii	"-h\000"
	.align	2
$LC22:
	.ascii	"--help\000"
	.align	2
$LC23:
	.ascii	"-V\000"
	.align	2
$LC24:
	.ascii	"--version\000"
	.align	2
$LC25:
	.ascii	"-i\000"
	.align	2
$LC26:
	.ascii	"-o\000"
	.text
	.align	2
	.globl	main
$LFB41:
	.loc 1 98 0
	.ent	main
main:
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
$LCFI30:
	sw	$31,32($sp)
$LCFI31:
	sw	$fp,28($sp)
$LCFI32:
	sw	$28,24($sp)
$LCFI33:
	move	$fp,$sp
$LCFI34:
	sw	$4,40($fp)
	sw	$5,44($fp)
	.loc 1 100 0
	lw	$3,40($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L45
	.loc 1 101 0
	move	$4,$0
	move	$5,$0
	la	$25,handle
	jal	$31,$25
	b	$L46
$L45:
	.loc 1 103 0
	lw	$3,40($fp)
	li	$2,2			# 0x2
	bne	$3,$2,$L47
	.loc 1 104 0
	lw	$2,44($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC21
	la	$25,strcmp
	jal	$31,$25
	beq	$2,$0,$L49
	lw	$2,44($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC22
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L48
$L49:
	.loc 1 105 0
	la	$25,print_usage
	jal	$31,$25
$L48:
	.loc 1 108 0
	lw	$2,44($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC23
	la	$25,strcmp
	jal	$31,$25
	beq	$2,$0,$L51
	lw	$2,44($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC24
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L46
$L51:
	.loc 1 109 0
	la	$25,print_version
	jal	$31,$25
	b	$L46
$L47:
	.loc 1 112 0
	lw	$3,40($fp)
	li	$2,3			# 0x3
	bne	$3,$2,$L53
	.loc 1 113 0
	lw	$2,44($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC25
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L54
	.loc 1 114 0
	lw	$2,44($fp)
	addu	$2,$2,8
	lw	$4,0($2)
	move	$5,$0
	la	$25,handle
	jal	$31,$25
$L54:
	.loc 1 117 0
	lw	$2,44($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC26
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L46
	.loc 1 118 0
	lw	$2,44($fp)
	addu	$2,$2,8
	move	$4,$0
	lw	$5,0($2)
	la	$25,handle
	jal	$31,$25
	b	$L46
$L53:
	.loc 1 121 0
	lw	$3,40($fp)
	li	$2,5			# 0x5
	bne	$3,$2,$L46
	.loc 1 122 0
	lw	$2,44($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC25
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L58
	lw	$2,44($fp)
	addu	$2,$2,12
	lw	$4,0($2)
	la	$5,$LC26
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L58
	.loc 1 123 0
	lw	$2,44($fp)
	addu	$3,$2,8
	lw	$2,44($fp)
	addu	$2,$2,16
	lw	$4,0($3)
	lw	$5,0($2)
	la	$25,handle
	jal	$31,$25
$L58:
	.loc 1 126 0
	lw	$2,44($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC26
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L46
	lw	$2,44($fp)
	addu	$2,$2,12
	lw	$4,0($2)
	la	$5,$LC25
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L46
	.loc 1 127 0
	lw	$2,44($fp)
	addu	$3,$2,16
	lw	$2,44($fp)
	addu	$2,$2,8
	lw	$4,0($3)
	lw	$5,0($2)
	la	$25,handle
	jal	$31,$25
$L46:
	.loc 1 131 0
	la	$25,print_usage
	jal	$31,$25
	.loc 1 133 0
	move	$2,$0
	.loc 1 134 0
	move	$sp,$fp
	lw	$31,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$31
	.end	main
$LFE41:
	.size	main, .-main
	.file 11 "/usr/include/ctype.h"
	.section	.debug_frame,"",@progbits
$Lframe0:
	.4byte	$LECIE0-$LSCIE0
$LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 4
	.byte	0x40
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x0
	.align	2
$LECIE0:
$LSFDE0:
	.4byte	$LEFDE0-$LASFDE0
$LASFDE0:
	.4byte	$Lframe0
	.4byte	$LFB29
	.4byte	$LFE29-$LFB29
	.byte	0x4
	.4byte	$LCFI0-$LFB29
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	$LCFI3-$LCFI0
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI4-$LCFI3
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x28
	.align	2
$LEFDE0:
$LSFDE2:
	.4byte	$LEFDE2-$LASFDE2
$LASFDE2:
	.4byte	$Lframe0
	.4byte	$LFB31
	.4byte	$LFE31-$LFB31
	.byte	0x4
	.4byte	$LCFI5-$LFB31
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	$LCFI8-$LCFI5
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI9-$LCFI8
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x28
	.align	2
$LEFDE2:
$LSFDE4:
	.4byte	$LEFDE4-$LASFDE4
$LASFDE4:
	.4byte	$Lframe0
	.4byte	$LFB33
	.4byte	$LFE33-$LFB33
	.byte	0x4
	.4byte	$LCFI10-$LFB33
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	$LCFI13-$LCFI10
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI14-$LCFI13
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x38
	.align	2
$LEFDE4:
$LSFDE6:
	.4byte	$LEFDE6-$LASFDE6
$LASFDE6:
	.4byte	$Lframe0
	.4byte	$LFB35
	.4byte	$LFE35-$LFB35
	.byte	0x4
	.4byte	$LCFI15-$LFB35
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	$LCFI18-$LCFI15
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI19-$LCFI18
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x28
	.align	2
$LEFDE6:
$LSFDE8:
	.4byte	$LEFDE8-$LASFDE8
$LASFDE8:
	.4byte	$Lframe0
	.4byte	$LFB37
	.4byte	$LFE37-$LFB37
	.byte	0x4
	.4byte	$LCFI20-$LFB37
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	$LCFI23-$LCFI20
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI24-$LCFI23
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x30
	.align	2
$LEFDE8:
$LSFDE10:
	.4byte	$LEFDE10-$LASFDE10
$LASFDE10:
	.4byte	$Lframe0
	.4byte	$LFB39
	.4byte	$LFE39-$LFB39
	.byte	0x4
	.4byte	$LCFI25-$LFB39
	.byte	0xe
	.uleb128 0x130
	.byte	0x4
	.4byte	$LCFI28-$LCFI25
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI29-$LCFI28
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x130
	.align	2
$LEFDE10:
$LSFDE12:
	.4byte	$LEFDE12-$LASFDE12
$LASFDE12:
	.4byte	$Lframe0
	.4byte	$LFB41
	.4byte	$LFE41-$LFB41
	.byte	0x4
	.4byte	$LCFI30-$LFB41
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	$LCFI33-$LCFI30
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI34-$LCFI33
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x28
	.align	2
$LEFDE12:
	.align	0
	.text
$Letext0:
	.section	.debug_info
	.4byte	0xd38
	.2byte	0x2
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$Ldebug_line0
	.4byte	$Letext0
	.4byte	$Ltext0
	.4byte	$LC245
	.4byte	$LC246
	.4byte	$LC247
	.byte	0x1
	.uleb128 0x2
	.4byte	$LC27
	.byte	0x2
	.byte	0x30
	.4byte	0x30
	.uleb128 0x3
	.4byte	$LC29
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.4byte	$LC28
	.byte	0x2
	.byte	0x31
	.4byte	0x42
	.uleb128 0x3
	.4byte	$LC30
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.4byte	$LC31
	.byte	0x2
	.byte	0x32
	.4byte	0x54
	.uleb128 0x3
	.4byte	$LC32
	.byte	0x2
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC33
	.byte	0x2
	.byte	0x33
	.4byte	0x66
	.uleb128 0x3
	.4byte	$LC34
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC35
	.byte	0x2
	.byte	0x34
	.4byte	0x78
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC36
	.byte	0x2
	.byte	0x35
	.4byte	0x8a
	.uleb128 0x3
	.4byte	$LC37
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC38
	.byte	0x2
	.byte	0x3e
	.4byte	0x9c
	.uleb128 0x3
	.4byte	$LC39
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC40
	.byte	0x2
	.byte	0x40
	.4byte	0xae
	.uleb128 0x3
	.4byte	$LC41
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC42
	.byte	0x2
	.byte	0x4b
	.4byte	0x78
	.uleb128 0x2
	.4byte	$LC43
	.byte	0x2
	.byte	0x4c
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC44
	.byte	0x3
	.byte	0x2c
	.4byte	0xd6
	.uleb128 0x5
	.byte	0x4
	.4byte	0xdc
	.uleb128 0x3
	.4byte	$LC45
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.4byte	$LC46
	.byte	0x3
	.byte	0x2d
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC47
	.byte	0x3
	.byte	0x2e
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC48
	.byte	0x3
	.byte	0x2f
	.4byte	0x5b
	.uleb128 0x2
	.4byte	$LC49
	.byte	0x3
	.byte	0x30
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC50
	.byte	0x3
	.byte	0x31
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC51
	.byte	0x3
	.byte	0x32
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC52
	.byte	0x3
	.byte	0x33
	.4byte	0x37
	.uleb128 0x2
	.4byte	$LC53
	.byte	0x3
	.byte	0x34
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC54
	.byte	0x3
	.byte	0x35
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC55
	.byte	0x3
	.byte	0x36
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC56
	.byte	0x3
	.byte	0x37
	.4byte	0xa3
	.uleb128 0x6
	.4byte	0x17b
	.byte	0x80
	.byte	0x4
	.byte	0x65
	.uleb128 0x7
	.4byte	$LC57
	.byte	0x4
	.byte	0x63
	.4byte	0x17b
	.uleb128 0x7
	.4byte	$LC58
	.byte	0x4
	.byte	0x64
	.4byte	0x91
	.byte	0x0
	.uleb128 0x8
	.4byte	0x18b
	.4byte	0xdc
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x7f
	.byte	0x0
	.uleb128 0x3
	.4byte	$LC37
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC59
	.byte	0x4
	.byte	0x65
	.4byte	0x15c
	.uleb128 0x2
	.4byte	$LC60
	.byte	0x5
	.byte	0x2e
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC61
	.byte	0x5
	.byte	0x3a
	.4byte	0x10f
	.uleb128 0xa
	.4byte	0x1dc
	.4byte	$LC64
	.byte	0x8
	.byte	0x5
	.byte	0x4a
	.uleb128 0xb
	.4byte	$LC62
	.byte	0x5
	.byte	0x4b
	.4byte	0x1dc
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC63
	.byte	0x5
	.byte	0x4c
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x42
	.uleb128 0xa
	.4byte	0x304
	.4byte	$LC65
	.byte	0x58
	.byte	0x5
	.byte	0x69
	.uleb128 0xc
	.ascii	"_p\000"
	.byte	0x5
	.byte	0x6a
	.4byte	0x1dc
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"_r\000"
	.byte	0x5
	.byte	0x6b
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xc
	.ascii	"_w\000"
	.byte	0x5
	.byte	0x6c
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC66
	.byte	0x5
	.byte	0x6d
	.4byte	0x54
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.uleb128 0xb
	.4byte	$LC67
	.byte	0x5
	.byte	0x6e
	.4byte	0x54
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.uleb128 0xc
	.ascii	"_bf\000"
	.byte	0x5
	.byte	0x6f
	.4byte	0x1b3
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC68
	.byte	0x5
	.byte	0x70
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.uleb128 0xb
	.4byte	$LC69
	.byte	0x5
	.byte	0x73
	.4byte	0x304
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	$LC70
	.byte	0x5
	.byte	0x74
	.4byte	0x316
	.byte	0x2
	.byte	0x10
	.uleb128 0x20
	.uleb128 0xb
	.4byte	$LC71
	.byte	0x5
	.byte	0x75
	.4byte	0x336
	.byte	0x2
	.byte	0x10
	.uleb128 0x24
	.uleb128 0xb
	.4byte	$LC72
	.byte	0x5
	.byte	0x76
	.4byte	0x356
	.byte	0x2
	.byte	0x10
	.uleb128 0x28
	.uleb128 0xb
	.4byte	$LC73
	.byte	0x5
	.byte	0x77
	.4byte	0x381
	.byte	0x2
	.byte	0x10
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	$LC74
	.byte	0x5
	.byte	0x7a
	.4byte	0x1b3
	.byte	0x2
	.byte	0x10
	.uleb128 0x30
	.uleb128 0xc
	.ascii	"_up\000"
	.byte	0x5
	.byte	0x7d
	.4byte	0x1dc
	.byte	0x2
	.byte	0x10
	.uleb128 0x38
	.uleb128 0xc
	.ascii	"_ur\000"
	.byte	0x5
	.byte	0x7e
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	$LC75
	.byte	0x5
	.byte	0x81
	.4byte	0x387
	.byte	0x2
	.byte	0x10
	.uleb128 0x40
	.uleb128 0xb
	.4byte	$LC76
	.byte	0x5
	.byte	0x82
	.4byte	0x397
	.byte	0x2
	.byte	0x10
	.uleb128 0x43
	.uleb128 0xc
	.ascii	"_lb\000"
	.byte	0x5
	.byte	0x85
	.4byte	0x1b3
	.byte	0x2
	.byte	0x10
	.uleb128 0x44
	.uleb128 0xb
	.4byte	$LC77
	.byte	0x5
	.byte	0x88
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	$LC78
	.byte	0x5
	.byte	0x89
	.4byte	0x1a8
	.byte	0x2
	.byte	0x10
	.uleb128 0x50
	.byte	0x0
	.uleb128 0xd
	.byte	0x4
	.uleb128 0xe
	.4byte	0x316
	.byte	0x1
	.4byte	0x78
	.uleb128 0xf
	.4byte	0x304
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x306
	.uleb128 0xe
	.4byte	0x336
	.byte	0x1
	.4byte	0x78
	.uleb128 0xf
	.4byte	0x304
	.uleb128 0xf
	.4byte	0xd6
	.uleb128 0xf
	.4byte	0x78
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x31c
	.uleb128 0xe
	.4byte	0x356
	.byte	0x1
	.4byte	0x1a8
	.uleb128 0xf
	.4byte	0x304
	.uleb128 0xf
	.4byte	0x1a8
	.uleb128 0xf
	.4byte	0x78
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x33c
	.uleb128 0xe
	.4byte	0x376
	.byte	0x1
	.4byte	0x78
	.uleb128 0xf
	.4byte	0x304
	.uleb128 0xf
	.4byte	0x376
	.uleb128 0xf
	.4byte	0x78
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x37c
	.uleb128 0x10
	.4byte	0xdc
	.uleb128 0x5
	.byte	0x4
	.4byte	0x35c
	.uleb128 0x8
	.4byte	0x397
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x2
	.byte	0x0
	.uleb128 0x8
	.4byte	0x3a7
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC79
	.byte	0x5
	.byte	0x8a
	.4byte	0x1e2
	.uleb128 0x11
	.4byte	$LC80
	.byte	0x5
	.2byte	0x160
	.4byte	0x10f
	.uleb128 0x2
	.4byte	$LC81
	.byte	0x6
	.byte	0x3b
	.4byte	0x3c9
	.uleb128 0x3
	.4byte	$LC82
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC83
	.byte	0x6
	.byte	0x3c
	.4byte	0x3db
	.uleb128 0x3
	.4byte	$LC84
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC85
	.byte	0x6
	.byte	0x3d
	.4byte	0x3c9
	.uleb128 0x2
	.4byte	$LC86
	.byte	0x6
	.byte	0x46
	.4byte	0x3db
	.uleb128 0x2
	.4byte	$LC87
	.byte	0x6
	.byte	0x47
	.4byte	0x3db
	.uleb128 0x2
	.4byte	$LC88
	.byte	0x6
	.byte	0x49
	.4byte	0x3db
	.uleb128 0x2
	.4byte	$LC89
	.byte	0x6
	.byte	0x4a
	.4byte	0x3db
	.uleb128 0x2
	.4byte	$LC90
	.byte	0x6
	.byte	0x51
	.4byte	0x3c9
	.uleb128 0x2
	.4byte	$LC91
	.byte	0x6
	.byte	0x5a
	.4byte	0x42f
	.uleb128 0x12
	.4byte	0x78
	.uleb128 0x2
	.4byte	$LC92
	.byte	0x7
	.byte	0x36
	.4byte	0x25
	.uleb128 0x2
	.4byte	$LC93
	.byte	0x7
	.byte	0x3b
	.4byte	0x37
	.uleb128 0x2
	.4byte	$LC94
	.byte	0x7
	.byte	0x40
	.4byte	0x49
	.uleb128 0x2
	.4byte	$LC95
	.byte	0x7
	.byte	0x45
	.4byte	0x5b
	.uleb128 0x2
	.4byte	$LC96
	.byte	0x7
	.byte	0x4a
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC97
	.byte	0x7
	.byte	0x4f
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC98
	.byte	0x7
	.byte	0x54
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC99
	.byte	0x7
	.byte	0x59
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC100
	.byte	0x7
	.byte	0x5d
	.4byte	0x37
	.uleb128 0x2
	.4byte	$LC101
	.byte	0x7
	.byte	0x5e
	.4byte	0x5b
	.uleb128 0x2
	.4byte	$LC102
	.byte	0x7
	.byte	0x5f
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC103
	.byte	0x7
	.byte	0x60
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC104
	.byte	0x8
	.byte	0x3a
	.4byte	0xee
	.uleb128 0x2
	.4byte	$LC105
	.byte	0x8
	.byte	0x3f
	.4byte	0xf9
	.uleb128 0x2
	.4byte	$LC106
	.byte	0x7
	.byte	0x65
	.4byte	0x42
	.uleb128 0x2
	.4byte	$LC107
	.byte	0x7
	.byte	0x66
	.4byte	0x66
	.uleb128 0x2
	.4byte	$LC108
	.byte	0x7
	.byte	0x67
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC109
	.byte	0x7
	.byte	0x68
	.4byte	0x3db
	.uleb128 0x2
	.4byte	$LC110
	.byte	0x7
	.byte	0x6a
	.4byte	0x42
	.uleb128 0x2
	.4byte	$LC111
	.byte	0x7
	.byte	0x6b
	.4byte	0x66
	.uleb128 0x2
	.4byte	$LC112
	.byte	0x7
	.byte	0x6c
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC113
	.byte	0x7
	.byte	0x6d
	.4byte	0x3db
	.uleb128 0x2
	.4byte	$LC114
	.byte	0x7
	.byte	0x6f
	.4byte	0x4ef
	.uleb128 0x2
	.4byte	$LC115
	.byte	0x7
	.byte	0x72
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC116
	.byte	0x7
	.byte	0x73
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC117
	.byte	0x7
	.byte	0x74
	.4byte	0x552
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53c
	.uleb128 0x2
	.4byte	$LC118
	.byte	0x7
	.byte	0x80
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC119
	.byte	0x7
	.byte	0x81
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC120
	.byte	0x7
	.byte	0x83
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC121
	.byte	0x7
	.byte	0x84
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC122
	.byte	0x7
	.byte	0x87
	.4byte	0x146
	.uleb128 0x2
	.4byte	$LC123
	.byte	0x7
	.byte	0x8c
	.4byte	0x151
	.uleb128 0x2
	.4byte	$LC124
	.byte	0x7
	.byte	0x91
	.4byte	0xcb
	.uleb128 0x2
	.4byte	$LC125
	.byte	0x7
	.byte	0x99
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC126
	.byte	0x7
	.byte	0x9c
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC127
	.byte	0x7
	.byte	0x9d
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC128
	.byte	0x7
	.byte	0xa0
	.4byte	0xe3
	.uleb128 0x2
	.4byte	$LC129
	.byte	0x7
	.byte	0xa4
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC130
	.byte	0x7
	.byte	0xa5
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC131
	.byte	0x7
	.byte	0xa6
	.4byte	0x3c9
	.uleb128 0x2
	.4byte	$LC132
	.byte	0x7
	.byte	0xa9
	.4byte	0x104
	.uleb128 0x2
	.4byte	$LC133
	.byte	0x7
	.byte	0xad
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC134
	.byte	0x7
	.byte	0xb5
	.4byte	0x11a
	.uleb128 0x2
	.4byte	$LC135
	.byte	0x7
	.byte	0xb8
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC136
	.byte	0x7
	.byte	0xb9
	.4byte	0x53c
	.uleb128 0x2
	.4byte	$LC137
	.byte	0x7
	.byte	0xba
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC138
	.byte	0x7
	.byte	0xbb
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC139
	.byte	0x7
	.byte	0xbe
	.4byte	0x13b
	.uleb128 0x2
	.4byte	$LC140
	.byte	0x7
	.byte	0xc2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC141
	.byte	0x7
	.byte	0xfc
	.4byte	0x3db
	.uleb128 0x11
	.4byte	$LC142
	.byte	0x7
	.2byte	0x107
	.4byte	0x78
	.uleb128 0x11
	.4byte	$LC143
	.byte	0x7
	.2byte	0x10c
	.4byte	0x3c9
	.uleb128 0x11
	.4byte	$LC144
	.byte	0x7
	.2byte	0x111
	.4byte	0x78
	.uleb128 0x11
	.4byte	$LC145
	.byte	0x7
	.2byte	0x116
	.4byte	0x78
	.uleb128 0x11
	.4byte	$LC146
	.byte	0x7
	.2byte	0x11b
	.4byte	0x78
	.uleb128 0x11
	.4byte	$LC147
	.byte	0x7
	.2byte	0x120
	.4byte	0x8a
	.uleb128 0x11
	.4byte	$LC148
	.byte	0x7
	.2byte	0x12d
	.4byte	0x6d
	.uleb128 0x13
	.4byte	0x6d1
	.4byte	$LC149
	.byte	0x20
	.byte	0x7
	.2byte	0x142
	.uleb128 0x14
	.4byte	$LC150
	.byte	0x7
	.2byte	0x143
	.4byte	0x6d1
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0x6e1
	.4byte	0x6a8
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x7
	.byte	0x0
	.uleb128 0x11
	.4byte	$LC149
	.byte	0x7
	.2byte	0x144
	.4byte	0x6b4
	.uleb128 0x2
	.4byte	$LC151
	.byte	0x9
	.byte	0x2e
	.4byte	0x42f
	.uleb128 0xa
	.4byte	0x721
	.4byte	$LC152
	.byte	0x8
	.byte	0x9
	.byte	0x39
	.uleb128 0xb
	.4byte	$LC153
	.byte	0x9
	.byte	0x39
	.4byte	0x727
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC154
	.byte	0x9
	.byte	0x39
	.4byte	0x72d
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.4byte	$LC242
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x721
	.uleb128 0x5
	.byte	0x4
	.4byte	0x727
	.uleb128 0x2
	.4byte	$LC155
	.byte	0x9
	.byte	0x47
	.4byte	0x727
	.uleb128 0x2
	.4byte	$LC156
	.byte	0x9
	.byte	0x48
	.4byte	0x749
	.uleb128 0xa
	.4byte	0x780
	.4byte	$LC157
	.byte	0xc
	.byte	0x9
	.byte	0x3c
	.uleb128 0xb
	.4byte	$LC158
	.byte	0x9
	.byte	0x56
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC159
	.byte	0x9
	.byte	0x58
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC160
	.byte	0x9
	.byte	0x59
	.4byte	0x304
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC161
	.byte	0x9
	.byte	0x49
	.4byte	0x78b
	.uleb128 0xa
	.4byte	0x7ec
	.4byte	$LC162
	.byte	0x1c
	.byte	0x9
	.byte	0x3d
	.uleb128 0xb
	.4byte	$LC163
	.byte	0x9
	.byte	0x5d
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC164
	.byte	0x9
	.byte	0x66
	.4byte	0x42f
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC165
	.byte	0x9
	.byte	0x69
	.4byte	0x42f
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC166
	.byte	0x9
	.byte	0x6a
	.4byte	0x733
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.uleb128 0xb
	.4byte	$LC167
	.byte	0x9
	.byte	0x6b
	.4byte	0x6f8
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC168
	.byte	0x9
	.byte	0x6c
	.4byte	0x304
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC169
	.byte	0x9
	.byte	0x4a
	.4byte	0x7f7
	.uleb128 0xa
	.4byte	0x820
	.4byte	$LC170
	.byte	0x8
	.byte	0x9
	.byte	0x3e
	.uleb128 0xb
	.4byte	$LC171
	.byte	0x9
	.byte	0x7c
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC172
	.byte	0x9
	.byte	0x7d
	.4byte	0x304
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC173
	.byte	0x9
	.byte	0x4b
	.4byte	0x82b
	.uleb128 0xa
	.4byte	0x87e
	.4byte	$LC174
	.byte	0x18
	.byte	0x9
	.byte	0x3f
	.uleb128 0xb
	.4byte	$LC175
	.byte	0x9
	.byte	0x85
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC176
	.byte	0x9
	.byte	0x88
	.4byte	0x42f
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC177
	.byte	0x9
	.byte	0x89
	.4byte	0x6f8
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC178
	.byte	0x9
	.byte	0x8b
	.4byte	0xa8f
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC179
	.byte	0x9
	.byte	0x8c
	.4byte	0x304
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC180
	.byte	0x9
	.byte	0x4c
	.4byte	0x889
	.uleb128 0xa
	.4byte	0x8b2
	.4byte	$LC181
	.byte	0x8
	.byte	0x9
	.byte	0x40
	.uleb128 0xb
	.4byte	$LC182
	.byte	0x9
	.byte	0x9a
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC183
	.byte	0x9
	.byte	0x9b
	.4byte	0x304
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC184
	.byte	0x9
	.byte	0x4d
	.4byte	0x8bd
	.uleb128 0xa
	.4byte	0x8e6
	.4byte	$LC185
	.byte	0x20
	.byte	0x9
	.byte	0x4d
	.uleb128 0xb
	.4byte	$LC186
	.byte	0x9
	.byte	0xa2
	.4byte	0x780
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC187
	.byte	0x9
	.byte	0xa3
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC188
	.byte	0x9
	.byte	0x4e
	.4byte	0x8f1
	.uleb128 0xa
	.4byte	0x928
	.4byte	$LC189
	.byte	0xc
	.byte	0x9
	.byte	0x4e
	.uleb128 0xb
	.4byte	$LC190
	.byte	0x9
	.byte	0xa9
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC191
	.byte	0x9
	.byte	0xaa
	.4byte	0x42f
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC192
	.byte	0x9
	.byte	0xab
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC193
	.byte	0x9
	.byte	0x4f
	.4byte	0x933
	.uleb128 0xa
	.4byte	0x9a2
	.4byte	$LC194
	.byte	0x24
	.byte	0x9
	.byte	0x42
	.uleb128 0xb
	.4byte	$LC195
	.byte	0x9
	.byte	0xb9
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC196
	.byte	0x9
	.byte	0xbc
	.4byte	0x42f
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC197
	.byte	0x9
	.byte	0xbe
	.4byte	0x6f8
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC198
	.byte	0x9
	.byte	0xbf
	.4byte	0x6f8
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC199
	.byte	0x9
	.byte	0xc0
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.uleb128 0xb
	.4byte	$LC200
	.byte	0x9
	.byte	0xc1
	.4byte	0x733
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	$LC201
	.byte	0x9
	.byte	0xc2
	.4byte	0x304
	.byte	0x2
	.byte	0x10
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC202
	.byte	0x9
	.byte	0x50
	.4byte	0x9ad
	.uleb128 0xa
	.4byte	0x9d6
	.4byte	$LC203
	.byte	0x8
	.byte	0x9
	.byte	0x43
	.uleb128 0xb
	.4byte	$LC204
	.byte	0x9
	.byte	0xd2
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC205
	.byte	0x9
	.byte	0xd3
	.4byte	0x304
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC206
	.byte	0x9
	.byte	0x51
	.4byte	0x9e1
	.uleb128 0xa
	.4byte	0xa50
	.4byte	$LC207
	.byte	0x20
	.byte	0x9
	.byte	0x44
	.uleb128 0xb
	.4byte	$LC208
	.byte	0x9
	.byte	0xda
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC209
	.byte	0x9
	.byte	0xdd
	.4byte	0x42f
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC210
	.byte	0x9
	.byte	0xdf
	.4byte	0x6f8
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC211
	.byte	0x9
	.byte	0xe0
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC212
	.byte	0x9
	.byte	0xe1
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.uleb128 0xb
	.4byte	$LC213
	.byte	0x9
	.byte	0xe2
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.uleb128 0xb
	.4byte	$LC214
	.byte	0x9
	.byte	0xe4
	.4byte	0x304
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC215
	.byte	0x9
	.byte	0x52
	.4byte	0xa5b
	.uleb128 0xa
	.4byte	0xa84
	.4byte	$LC216
	.byte	0x8
	.byte	0x9
	.byte	0x45
	.uleb128 0xb
	.4byte	$LC217
	.byte	0x9
	.byte	0xeb
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC218
	.byte	0x9
	.byte	0xec
	.4byte	0x304
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC219
	.byte	0x9
	.byte	0x53
	.4byte	0x78
	.uleb128 0x5
	.byte	0x4
	.4byte	0x780
	.uleb128 0x2
	.4byte	$LC220
	.byte	0xa
	.byte	0x34
	.4byte	0x78
	.uleb128 0x16
	.4byte	0xac5
	.byte	0x8
	.byte	0xa
	.byte	0x3b
	.uleb128 0xb
	.4byte	$LC221
	.byte	0xa
	.byte	0x39
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"rem\000"
	.byte	0xa
	.byte	0x3a
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC222
	.byte	0xa
	.byte	0x3b
	.4byte	0xaa0
	.uleb128 0x16
	.4byte	0xaf5
	.byte	0x8
	.byte	0xa
	.byte	0x40
	.uleb128 0xb
	.4byte	$LC221
	.byte	0xa
	.byte	0x3e
	.4byte	0x3c9
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"rem\000"
	.byte	0xa
	.byte	0x3f
	.4byte	0x3c9
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC223
	.byte	0xa
	.byte	0x40
	.4byte	0xad0
	.uleb128 0x16
	.4byte	0xb25
	.byte	0x10
	.byte	0xa
	.byte	0x4a
	.uleb128 0xb
	.4byte	$LC221
	.byte	0xa
	.byte	0x47
	.4byte	0x9c
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"rem\000"
	.byte	0xa
	.byte	0x49
	.4byte	0x9c
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC224
	.byte	0xa
	.byte	0x4a
	.4byte	0xb00
	.uleb128 0x16
	.4byte	0xb55
	.byte	0x10
	.byte	0xa
	.byte	0x51
	.uleb128 0xb
	.4byte	$LC221
	.byte	0xa
	.byte	0x4f
	.4byte	0x53c
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"rem\000"
	.byte	0xa
	.byte	0x50
	.4byte	0x53c
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC225
	.byte	0xa
	.byte	0x51
	.4byte	0xb30
	.uleb128 0x17
	.byte	0x1
	.4byte	$LC226
	.byte	0x1
	.byte	0x3
	.4byte	$LFB29
	.4byte	$LFE29
	.4byte	$LSFDE0
	.byte	0x1
	.byte	0x6e
	.uleb128 0x17
	.byte	0x1
	.4byte	$LC227
	.byte	0x1
	.byte	0x7
	.4byte	$LFB31
	.4byte	$LFE31
	.4byte	$LSFDE2
	.byte	0x1
	.byte	0x6e
	.uleb128 0x18
	.4byte	0xbe0
	.byte	0x1
	.4byte	$LC228
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.4byte	0x78
	.4byte	$LFB33
	.4byte	$LFE33
	.4byte	$LSFDE4
	.byte	0x1
	.byte	0x6e
	.uleb128 0x19
	.4byte	$LC230
	.byte	0x1
	.byte	0x15
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x16
	.4byte	0x8a
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1a
	.ascii	"j\000"
	.byte	0x1
	.byte	0x16
	.4byte	0x8a
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x1b
	.4byte	$LC228
	.byte	0x1
	.byte	0x17
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0x0
	.uleb128 0x1c
	.4byte	0xc08
	.byte	0x1
	.4byte	$LC229
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.4byte	$LFB35
	.4byte	$LFE35
	.4byte	$LSFDE6
	.byte	0x1
	.byte	0x6e
	.uleb128 0x1d
	.ascii	"s\000"
	.byte	0x1
	.byte	0x22
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.byte	0x0
	.uleb128 0x1c
	.4byte	0xc4e
	.byte	0x1
	.4byte	$LC231
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.4byte	$LFB37
	.4byte	$LFE37
	.4byte	$LSFDE8
	.byte	0x1
	.byte	0x6e
	.uleb128 0x19
	.4byte	$LC232
	.byte	0x1
	.byte	0x28
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x19
	.4byte	$LC233
	.byte	0x1
	.byte	0x28
	.4byte	0xc4e
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x1b
	.4byte	$LC230
	.byte	0x1
	.byte	0x29
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a7
	.uleb128 0x1c
	.4byte	0xcb8
	.byte	0x1
	.4byte	$LC234
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.4byte	$LFB39
	.4byte	$LFE39
	.4byte	$LSFDE10
	.byte	0x1
	.byte	0x6e
	.uleb128 0x19
	.4byte	$LC235
	.byte	0x1
	.byte	0x34
	.4byte	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 304
	.uleb128 0x19
	.4byte	$LC236
	.byte	0x1
	.byte	0x34
	.4byte	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 308
	.uleb128 0x1b
	.4byte	$LC237
	.byte	0x1
	.byte	0x36
	.4byte	0xc4e
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1b
	.4byte	$LC233
	.byte	0x1
	.byte	0x37
	.4byte	0xc4e
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x1b
	.4byte	$LC232
	.byte	0x1
	.byte	0x52
	.4byte	0xcb8
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0x0
	.uleb128 0x8
	.4byte	0xcc8
	.4byte	0xdc
	.uleb128 0x9
	.4byte	0x18b
	.byte	0xff
	.byte	0x0
	.uleb128 0x18
	.4byte	0xd04
	.byte	0x1
	.4byte	$LC238
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.4byte	0x78
	.4byte	$LFB41
	.4byte	$LFE41
	.4byte	$LSFDE12
	.byte	0x1
	.byte	0x6e
	.uleb128 0x19
	.4byte	$LC239
	.byte	0x1
	.byte	0x62
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x19
	.4byte	$LC240
	.byte	0x1
	.byte	0x62
	.4byte	0xd04
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x3a7
	.uleb128 0x1f
	.4byte	$LC241
	.byte	0x5
	.byte	0x8d
	.4byte	0xd0a
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	$LC243
	.byte	0x1
	.uleb128 0x1f
	.4byte	$LC244
	.byte	0xb
	.byte	0x37
	.4byte	0xd30
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd36
	.uleb128 0x10
	.4byte	0x54
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x2001
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x2001
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x2001
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x69
	.2byte	0x2
	.4byte	$Ldebug_info0
	.4byte	0xd3c
	.4byte	0xb60
	.ascii	"print_version\000"
	.4byte	0xb76
	.ascii	"print_usage\000"
	.4byte	0xb8c
	.ascii	"is_pal\000"
	.4byte	0xbe0
	.ascii	"chomp\000"
	.4byte	0xc08
	.ascii	"handle_line\000"
	.4byte	0xc54
	.ascii	"handle\000"
	.4byte	0xcc8
	.ascii	"main\000"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	$Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
$LC74:
	.ascii	"_ext\000"
$LC63:
	.ascii	"_size\000"
$LC145:
	.ascii	"timer_t\000"
$LC161:
	.ascii	"pthread_mutex_t\000"
$LC203:
	.ascii	"__pthread_rwlockattr_st\000"
$LC157:
	.ascii	"__pthread_attr_st\000"
$LC97:
	.ascii	"uint32_t\000"
$LC165:
	.ascii	"ptm_interlock\000"
$LC164:
	.ascii	"ptm_lock\000"
$LC34:
	.ascii	"short unsigned int\000"
$LC68:
	.ascii	"_lbfsize\000"
$LC152:
	.ascii	"pthread_queue_t\000"
$LC30:
	.ascii	"unsigned char\000"
$LC185:
	.ascii	"__pthread_once_st\000"
$LC132:
	.ascii	"mode_t\000"
$LC147:
	.ascii	"useconds_t\000"
$LC210:
	.ascii	"ptb_waiters\000"
$LC205:
	.ascii	"ptra_private\000"
$LC172:
	.ascii	"ptma_private\000"
$LC80:
	.ascii	"off_t\000"
$LC199:
	.ascii	"ptr_nreaders\000"
$LC201:
	.ascii	"ptr_private\000"
$LC64:
	.ascii	"__sbuf\000"
$LC72:
	.ascii	"_seek\000"
$LC48:
	.ascii	"__in_port_t\000"
$LC60:
	.ascii	"size_t\000"
$LC118:
	.ascii	"longlong_t\000"
$LC129:
	.ascii	"id_t\000"
$LC71:
	.ascii	"_read\000"
$LC119:
	.ascii	"u_longlong_t\000"
$LC50:
	.ascii	"__off_t\000"
$LC195:
	.ascii	"ptr_magic\000"
$LC232:
	.ascii	"line\000"
$LC204:
	.ascii	"ptra_magic\000"
$LC233:
	.ascii	"out_f\000"
$LC187:
	.ascii	"pto_done\000"
$LC85:
	.ascii	"mips_fpreg_t\000"
$LC56:
	.ascii	"__fsfilcnt_t\000"
$LC146:
	.ascii	"suseconds_t\000"
$LC123:
	.ascii	"fsfilcnt_t\000"
$LC114:
	.ascii	"cpuid_t\000"
$LC65:
	.ascii	"__sFILE\000"
$LC57:
	.ascii	"__mbstate8\000"
$LC83:
	.ascii	"mips_ureg_t\000"
$LC153:
	.ascii	"ptqh_first\000"
$LC108:
	.ascii	"u_int\000"
$LC92:
	.ascii	"int8_t\000"
$LC148:
	.ascii	"__fd_mask\000"
$LC58:
	.ascii	"__mbstateL\000"
$LC191:
	.ascii	"pts_spin\000"
$LC110:
	.ascii	"unchar\000"
$LC121:
	.ascii	"blksize_t\000"
$LC173:
	.ascii	"pthread_cond_t\000"
$LC168:
	.ascii	"ptm_private\000"
$LC171:
	.ascii	"ptma_magic\000"
$LC222:
	.ascii	"div_t\000"
$LC225:
	.ascii	"qdiv_t\000"
$LC87:
	.ascii	"psize_t\000"
$LC209:
	.ascii	"ptb_lock\000"
$LC70:
	.ascii	"_close\000"
$LC198:
	.ascii	"ptr_wblocked\000"
$LC130:
	.ascii	"ino_t\000"
$LC61:
	.ascii	"fpos_t\000"
$LC40:
	.ascii	"__uint64_t\000"
$LC239:
	.ascii	"argc\000"
$LC134:
	.ascii	"pid_t\000"
$LC89:
	.ascii	"vsize_t\000"
$LC99:
	.ascii	"uint64_t\000"
$LC149:
	.ascii	"fd_set\000"
$LC240:
	.ascii	"argv\000"
$LC69:
	.ascii	"_cookie\000"
$LC234:
	.ascii	"handle\000"
$LC224:
	.ascii	"lldiv_t\000"
$LC84:
	.ascii	"long unsigned int\000"
$LC183:
	.ascii	"ptca_private\000"
$LC241:
	.ascii	"__sF\000"
$LC51:
	.ascii	"__pid_t\000"
$LC77:
	.ascii	"_blksize\000"
$LC62:
	.ascii	"_base\000"
$LC131:
	.ascii	"key_t\000"
$LC117:
	.ascii	"qaddr_t\000"
$LC231:
	.ascii	"handle_line\000"
$LC236:
	.ascii	"output_file_name\000"
$LC36:
	.ascii	"__uint32_t\000"
$LC206:
	.ascii	"pthread_barrier_t\000"
$LC179:
	.ascii	"ptc_private\000"
$LC221:
	.ascii	"quot\000"
$LC126:
	.ascii	"dev_t\000"
$LC141:
	.ascii	"clock_t\000"
$LC135:
	.ascii	"lwpid_t\000"
$LC75:
	.ascii	"_ubuf\000"
$LC76:
	.ascii	"_nbuf\000"
$LC245:
	.ascii	"tp0.c\000"
$LC32:
	.ascii	"short int\000"
$LC100:
	.ascii	"u_int8_t\000"
$LC180:
	.ascii	"pthread_condattr_t\000"
$LC98:
	.ascii	"int64_t\000"
$LC139:
	.ascii	"uid_t\000"
$LC217:
	.ascii	"ptba_magic\000"
$LC39:
	.ascii	"long long int\000"
$LC216:
	.ascii	"__pthread_barrierattr_st\000"
$LC202:
	.ascii	"pthread_rwlockattr_t\000"
$LC127:
	.ascii	"fixpt_t\000"
$LC125:
	.ascii	"daddr_t\000"
$LC238:
	.ascii	"main\000"
$LC41:
	.ascii	"long long unsigned int\000"
$LC247:
	.ascii	"GNU C 3.3.3 (NetBSD nb3 20040520) -g\000"
$LC54:
	.ascii	"__uid_t\000"
$LC79:
	.ascii	"FILE\000"
$LC33:
	.ascii	"__uint16_t\000"
$LC133:
	.ascii	"nlink_t\000"
$LC138:
	.ascii	"swblk_t\000"
$LC151:
	.ascii	"pthread_spin_t\000"
$LC137:
	.ascii	"segsz_t\000"
$LC215:
	.ascii	"pthread_barrierattr_t\000"
$LC140:
	.ascii	"dtime_t\000"
$LC45:
	.ascii	"char\000"
$LC223:
	.ascii	"ldiv_t\000"
$LC182:
	.ascii	"ptca_magic\000"
$LC86:
	.ascii	"paddr_t\000"
$LC244:
	.ascii	"_tolower_tab_\000"
$LC212:
	.ascii	"ptb_curcount\000"
$LC96:
	.ascii	"int32_t\000"
$LC184:
	.ascii	"pthread_once_t\000"
$LC88:
	.ascii	"vaddr_t\000"
$LC218:
	.ascii	"ptba_private\000"
$LC159:
	.ascii	"pta_flags\000"
$LC226:
	.ascii	"print_version\000"
$LC93:
	.ascii	"uint8_t\000"
$LC176:
	.ascii	"ptc_lock\000"
$LC81:
	.ascii	"mips_reg_t\000"
$LC230:
	.ascii	"word\000"
$LC197:
	.ascii	"ptr_rblocked\000"
$LC124:
	.ascii	"caddr_t\000"
$LC189:
	.ascii	"__pthread_spinlock_st\000"
$LC214:
	.ascii	"ptb_private\000"
$LC194:
	.ascii	"__pthread_rwlock_st\000"
$LC175:
	.ascii	"ptc_magic\000"
$LC112:
	.ascii	"uint\000"
$LC181:
	.ascii	"__pthread_condattr_st\000"
$LC192:
	.ascii	"pts_flags\000"
$LC178:
	.ascii	"ptc_mutex\000"
$LC242:
	.ascii	"__pthread_st\000"
$LC66:
	.ascii	"_flags\000"
$LC193:
	.ascii	"pthread_rwlock_t\000"
$LC42:
	.ascii	"__intptr_t\000"
$LC208:
	.ascii	"ptb_magic\000"
$LC94:
	.ascii	"int16_t\000"
$LC120:
	.ascii	"blkcnt_t\000"
$LC220:
	.ascii	"wchar_t\000"
$LC186:
	.ascii	"pto_mutex\000"
$LC188:
	.ascii	"pthread_spinlock_t\000"
$LC160:
	.ascii	"pta_private\000"
$LC29:
	.ascii	"signed char\000"
$LC162:
	.ascii	"__pthread_mutex_st\000"
$LC49:
	.ascii	"__mode_t\000"
$LC90:
	.ascii	"register_t\000"
$LC167:
	.ascii	"ptm_blocked\000"
$LC144:
	.ascii	"clockid_t\000"
$LC213:
	.ascii	"ptb_generation\000"
$LC37:
	.ascii	"unsigned int\000"
$LC116:
	.ascii	"quad_t\000"
$LC109:
	.ascii	"u_long\000"
$LC200:
	.ascii	"ptr_writer\000"
$LC196:
	.ascii	"ptr_interlock\000"
$LC103:
	.ascii	"u_int64_t\000"
$LC169:
	.ascii	"pthread_mutexattr_t\000"
$LC166:
	.ascii	"ptm_owner\000"
$LC219:
	.ascii	"pthread_key_t\000"
$LC246:
	.ascii	"/tmp\000"
$LC113:
	.ascii	"ulong\000"
$LC106:
	.ascii	"u_char\000"
$LC53:
	.ascii	"__socklen_t\000"
$LC142:
	.ascii	"ssize_t\000"
$LC174:
	.ascii	"__pthread_cond_st\000"
$LC38:
	.ascii	"__int64_t\000"
$LC155:
	.ascii	"pthread_t\000"
$LC67:
	.ascii	"_file\000"
$LC104:
	.ascii	"in_addr_t\000"
$LC27:
	.ascii	"__int8_t\000"
$LC55:
	.ascii	"__fsblkcnt_t\000"
$LC128:
	.ascii	"gid_t\000"
$LC122:
	.ascii	"fsblkcnt_t\000"
$LC91:
	.ascii	"__cpu_simple_lock_t\000"
$LC102:
	.ascii	"u_int32_t\000"
$LC78:
	.ascii	"_offset\000"
$LC59:
	.ascii	"__mbstate_t\000"
$LC154:
	.ascii	"ptqh_last\000"
$LC111:
	.ascii	"ushort\000"
$LC43:
	.ascii	"__uintptr_t\000"
$LC46:
	.ascii	"__gid_t\000"
$LC35:
	.ascii	"__int32_t\000"
$LC211:
	.ascii	"ptb_initcount\000"
$LC170:
	.ascii	"__pthread_mutexattr_st\000"
$LC73:
	.ascii	"_write\000"
$LC28:
	.ascii	"__uint8_t\000"
$LC150:
	.ascii	"fds_bits\000"
$LC158:
	.ascii	"pta_magic\000"
$LC227:
	.ascii	"print_usage\000"
$LC243:
	.ascii	"__pthread_spin_st\000"
$LC235:
	.ascii	"input_file_name\000"
$LC95:
	.ascii	"uint16_t\000"
$LC82:
	.ascii	"long int\000"
$LC156:
	.ascii	"pthread_attr_t\000"
$LC44:
	.ascii	"__caddr_t\000"
$LC105:
	.ascii	"in_port_t\000"
$LC237:
	.ascii	"in_f\000"
$LC207:
	.ascii	"__pthread_barrier_st\000"
$LC101:
	.ascii	"u_int16_t\000"
$LC143:
	.ascii	"time_t\000"
$LC229:
	.ascii	"chomp\000"
$LC163:
	.ascii	"ptm_magic\000"
$LC115:
	.ascii	"u_quad_t\000"
$LC228:
	.ascii	"is_pal\000"
$LC190:
	.ascii	"pts_magic\000"
$LC47:
	.ascii	"__in_addr_t\000"
$LC136:
	.ascii	"rlim_t\000"
$LC52:
	.ascii	"__sa_family_t\000"
$LC107:
	.ascii	"u_short\000"
$LC31:
	.ascii	"__int16_t\000"
$LC177:
	.ascii	"ptc_waiters\000"
	.ident	"GCC: (GNU) 3.3.3 (NetBSD nb3 20040520)"
