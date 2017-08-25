	.file	1 "functions.c"
	.section .mdebug.abi32
	.previous
	.abicalls
	.rdata
	.align	2
	.type	LEGAL_CHARS, @object
	.size	LEGAL_CHARS, 65
LEGAL_CHARS:
	.ascii	"QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm1234"
	.ascii	"567890-_\000"
	.align	2
	.type	OPTIONS, @object
	.size	OPTIONS, 5
OPTIONS:
	.ascii	"Vhio\000"
	.align	2
$LC0:
	.ascii	"w\000"
	.align	2
$LC1:
	.ascii	"\n\000"
	.text
	.align	2
	.globl	stdin_file
	.ent	stdin_file
stdin_file:
	.frame	$fp,1088,$31		# vars= 1048, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,1088
	.cprestore 16
	sw	$31,1080($sp)
	sw	$fp,1076($sp)
	sw	$28,1072($sp)
	move	$fp,$sp
	sw	$4,1088($fp)
	sw	$0,1056($fp)
	sw	$0,1060($fp)
	lw	$4,1088($fp)
	la	$5,$LC0
	la	$25,fopen
	jal	$31,$25
	sw	$2,24($fp)
$L18:
	lw	$2,__sF+4
	addu	$2,$2,-1
	sw	$2,__sF+4
	bgez	$2,$L21
	la	$4,__sF
	la	$25,__srget
	jal	$31,$25
	sb	$2,1068($fp)
	b	$L22
$L21:
	la	$2,__sF
	lw	$3,0($2)
	move	$4,$3
	lbu	$4,0($4)
	sb	$4,1068($fp)
	addu	$3,$3,1
	sw	$3,0($2)
$L22:
	lbu	$2,1068($fp)
	sb	$2,28($fp)
	sll	$2,$2,24
	sra	$3,$2,24
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L20
	b	$L19
$L20:
	lb	$2,28($fp)
	move	$4,$2
	la	$25,is_valid_char
	jal	$31,$25
	sw	$2,1064($fp)
	lw	$2,1064($fp)
	beq	$2,$0,$L23
	addu	$3,$fp,32
	lw	$2,1056($fp)
	addu	$3,$3,$2
	lbu	$2,28($fp)
	sb	$2,0($3)
	lw	$2,1056($fp)
	addu	$2,$2,1
	sw	$2,1056($fp)
	b	$L18
$L23:
	addu	$2,$fp,32
	move	$4,$2
	lw	$5,1056($fp)
	la	$25,is_capicua
	jal	$31,$25
	bne	$2,$0,$L25
	addu	$2,$fp,32
	lw	$4,24($fp)
	move	$5,$2
	lw	$6,1056($fp)
	lw	$7,1060($fp)
	la	$25,print_word_in_file
	jal	$31,$25
	lw	$2,1060($fp)
	addu	$2,$2,1
	sw	$2,1060($fp)
$L25:
	lb	$3,28($fp)
	li	$2,10			# 0xa
	bne	$3,$2,$L26
	lw	$4,24($fp)
	la	$5,$LC1
	la	$25,fprintf
	jal	$31,$25
	sw	$0,1060($fp)
$L26:
	sb	$0,32($fp)
	sw	$0,1056($fp)
	b	$L18
$L19:
	lw	$4,24($fp)
	la	$25,fclose
	jal	$31,$25
	move	$2,$0
	move	$sp,$fp
	lw	$31,1080($sp)
	lw	$fp,1076($sp)
	addu	$sp,$sp,1088
	j	$31
	.end	stdin_file
	.size	stdin_file, .-stdin_file
	.rdata
	.align	2
$LC2:
	.ascii	"r\000"
	.text
	.align	2
	.globl	file_stdout
	.ent	file_stdout
file_stdout:
	.frame	$fp,1088,$31		# vars= 1048, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,1088
	.cprestore 16
	sw	$31,1080($sp)
	sw	$fp,1076($sp)
	sw	$28,1072($sp)
	move	$fp,$sp
	sw	$4,1088($fp)
	sw	$0,1056($fp)
	sw	$0,1060($fp)
	lw	$4,1088($fp)
	la	$5,$LC2
	la	$25,fopen
	jal	$31,$25
	sw	$2,24($fp)
$L28:
	lw	$3,24($fp)
	lw	$2,24($fp)
	lw	$2,4($2)
	addu	$2,$2,-1
	sw	$2,4($3)
	bgez	$2,$L31
	lw	$4,24($fp)
	la	$25,__srget
	jal	$31,$25
	sb	$2,1068($fp)
	b	$L32
$L31:
	lw	$2,24($fp)
	lw	$3,0($2)
	move	$4,$3
	lbu	$4,0($4)
	sb	$4,1068($fp)
	addu	$3,$3,1
	sw	$3,0($2)
$L32:
	lbu	$2,1068($fp)
	sb	$2,28($fp)
	sll	$2,$2,24
	sra	$3,$2,24
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L30
	b	$L29
$L30:
	lb	$2,28($fp)
	move	$4,$2
	la	$25,is_valid_char
	jal	$31,$25
	sw	$2,1064($fp)
	lw	$2,1064($fp)
	beq	$2,$0,$L33
	addu	$3,$fp,32
	lw	$2,1056($fp)
	addu	$3,$3,$2
	lbu	$2,28($fp)
	sb	$2,0($3)
	lw	$2,1056($fp)
	addu	$2,$2,1
	sw	$2,1056($fp)
	b	$L28
$L33:
	addu	$2,$fp,32
	move	$4,$2
	lw	$5,1056($fp)
	la	$25,is_capicua
	jal	$31,$25
	bne	$2,$0,$L35
	addu	$2,$fp,32
	move	$4,$2
	lw	$5,1056($fp)
	lw	$6,1060($fp)
	la	$25,print_word
	jal	$31,$25
	lw	$2,1060($fp)
	addu	$2,$2,1
	sw	$2,1060($fp)
$L35:
	lb	$3,28($fp)
	li	$2,10			# 0xa
	bne	$3,$2,$L36
	la	$4,$LC1
	la	$25,printf
	jal	$31,$25
	sw	$0,1060($fp)
$L36:
	sb	$0,32($fp)
	sw	$0,1056($fp)
	b	$L28
$L29:
	lw	$4,24($fp)
	la	$25,fclose
	jal	$31,$25
	move	$2,$0
	move	$sp,$fp
	lw	$31,1080($sp)
	lw	$fp,1076($sp)
	addu	$sp,$sp,1088
	j	$31
	.end	file_stdout
	.size	file_stdout, .-file_stdout
	.align	2
	.globl	filein_fileout
	.ent	filein_fileout
filein_fileout:
	.frame	$fp,1096,$31		# vars= 1056, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,1096
	.cprestore 16
	sw	$31,1088($sp)
	sw	$fp,1084($sp)
	sw	$28,1080($sp)
	move	$fp,$sp
	sw	$4,1096($fp)
	sw	$5,1100($fp)
	sw	$0,1064($fp)
	sw	$0,1068($fp)
	lw	$4,1096($fp)
	la	$5,$LC2
	la	$25,fopen
	jal	$31,$25
	sw	$2,24($fp)
	lw	$4,1100($fp)
	la	$5,$LC0
	la	$25,fopen
	jal	$31,$25
	sw	$2,28($fp)
$L38:
	lw	$3,24($fp)
	lw	$2,24($fp)
	lw	$2,4($2)
	addu	$2,$2,-1
	sw	$2,4($3)
	bgez	$2,$L41
	lw	$4,24($fp)
	la	$25,__srget
	jal	$31,$25
	sb	$2,1076($fp)
	b	$L42
$L41:
	lw	$2,24($fp)
	lw	$3,0($2)
	move	$4,$3
	lbu	$4,0($4)
	sb	$4,1076($fp)
	addu	$3,$3,1
	sw	$3,0($2)
$L42:
	lbu	$2,1076($fp)
	sb	$2,32($fp)
	sll	$2,$2,24
	sra	$3,$2,24
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L40
	b	$L39
$L40:
	lb	$2,32($fp)
	move	$4,$2
	la	$25,is_valid_char
	jal	$31,$25
	sw	$2,1072($fp)
	lw	$2,1072($fp)
	beq	$2,$0,$L43
	addu	$3,$fp,40
	lw	$2,1064($fp)
	addu	$3,$3,$2
	lbu	$2,32($fp)
	sb	$2,0($3)
	lw	$2,1064($fp)
	addu	$2,$2,1
	sw	$2,1064($fp)
	b	$L38
$L43:
	addu	$2,$fp,40
	move	$4,$2
	lw	$5,1064($fp)
	la	$25,is_capicua
	jal	$31,$25
	bne	$2,$0,$L45
	addu	$2,$fp,40
	lw	$4,28($fp)
	move	$5,$2
	lw	$6,1064($fp)
	lw	$7,1068($fp)
	la	$25,print_word_in_file
	jal	$31,$25
	lw	$2,1068($fp)
	addu	$2,$2,1
	sw	$2,1068($fp)
$L45:
	lb	$3,32($fp)
	li	$2,10			# 0xa
	bne	$3,$2,$L46
	lw	$4,28($fp)
	la	$5,$LC1
	la	$25,fprintf
	jal	$31,$25
	sw	$0,1068($fp)
$L46:
	sb	$0,40($fp)
	sw	$0,1064($fp)
	b	$L38
$L39:
	lw	$4,24($fp)
	la	$25,fclose
	jal	$31,$25
	lw	$4,28($fp)
	la	$25,fclose
	jal	$31,$25
	move	$2,$0
	move	$sp,$fp
	lw	$31,1088($sp)
	lw	$fp,1084($sp)
	addu	$sp,$sp,1096
	j	$31
	.end	filein_fileout
	.size	filein_fileout, .-filein_fileout
	.align	2
	.globl	is_valid_char
	.ent	is_valid_char
is_valid_char:
	.frame	$fp,32,$31		# vars= 16, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,32
	.cprestore 0
	sw	$fp,28($sp)
	sw	$28,24($sp)
	move	$fp,$sp
	move	$2,$4
	sb	$2,8($fp)
	sw	$0,12($fp)
	sw	$0,16($fp)
$L48:
	lw	$2,16($fp)
	sltu	$2,$2,65
	bne	$2,$0,$L51
	b	$L49
$L51:
	lw	$3,16($fp)
	la	$2,LEGAL_CHARS
	addu	$2,$3,$2
	lb	$3,8($fp)
	lb	$2,0($2)
	bne	$3,$2,$L50
	li	$2,1			# 0x1
	sw	$2,12($fp)
$L50:
	lw	$2,16($fp)
	addu	$2,$2,1
	sw	$2,16($fp)
	b	$L48
$L49:
	lw	$2,12($fp)
	move	$sp,$fp
	lw	$fp,28($sp)
	addu	$sp,$sp,32
	j	$31
	.end	is_valid_char
	.size	is_valid_char, .-is_valid_char
	.rdata
	.align	2
$LC3:
	.ascii	" \000"
	.align	2
$LC4:
	.ascii	"%c\000"
	.text
	.align	2
	.globl	print_word
	.ent	print_word
print_word:
	.frame	$fp,48,$31		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$31,40($sp)
	sw	$fp,36($sp)
	sw	$28,32($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	lw	$2,56($fp)
	blez	$2,$L54
	la	$4,$LC3
	la	$25,printf
	jal	$31,$25
$L54:
	sw	$0,24($fp)
$L55:
	lw	$2,24($fp)
	lw	$3,52($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L58
	b	$L53
$L58:
	lw	$3,48($fp)
	lw	$2,24($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	la	$4,$LC4
	move	$5,$2
	la	$25,printf
	jal	$31,$25
	lw	$2,24($fp)
	addu	$2,$2,1
	sw	$2,24($fp)
	b	$L55
$L53:
	move	$sp,$fp
	lw	$31,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$31
	.end	print_word
	.size	print_word, .-print_word
	.align	2
	.globl	print_word_in_file
	.ent	print_word_in_file
print_word_in_file:
	.frame	$fp,48,$31		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$31,40($sp)
	sw	$fp,36($sp)
	sw	$28,32($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	lw	$2,60($fp)
	blez	$2,$L60
	lw	$4,48($fp)
	la	$5,$LC3
	la	$25,fprintf
	jal	$31,$25
$L60:
	sw	$0,24($fp)
$L61:
	lw	$2,24($fp)
	lw	$3,56($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L64
	b	$L59
$L64:
	lw	$3,52($fp)
	lw	$2,24($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	lw	$4,48($fp)
	la	$5,$LC4
	move	$6,$2
	la	$25,fprintf
	jal	$31,$25
	lw	$2,24($fp)
	addu	$2,$2,1
	sw	$2,24($fp)
	b	$L61
$L59:
	move	$sp,$fp
	lw	$31,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$31
	.end	print_word_in_file
	.size	print_word_in_file, .-print_word_in_file
	.align	2
	.globl	is_capicua
	.ent	is_capicua
is_capicua:
	.frame	$fp,32,$31		# vars= 16, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,32
	.cprestore 0
	sw	$fp,28($sp)
	sw	$28,24($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$0,8($fp)
	lw	$2,36($fp)
	addu	$2,$2,-1
	sw	$2,12($fp)
	lw	$2,32($fp)
	lb	$2,0($2)
	bne	$2,$0,$L66
	lw	$2,8($fp)
	addu	$2,$2,1
	sw	$2,8($fp)
$L66:
	sw	$0,16($fp)
$L67:
	lw	$2,16($fp)
	lw	$3,36($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L70
	b	$L68
$L70:
	lw	$3,32($fp)
	lw	$2,16($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	sll	$3,$2,1
	lw	$2,_toupper_tab_
	addu	$2,$3,$2
	addu	$4,$2,2
	lw	$3,12($fp)
	lw	$2,16($fp)
	subu	$3,$3,$2
	lw	$2,32($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	sll	$3,$2,1
	lw	$2,_toupper_tab_
	addu	$2,$3,$2
	addu	$2,$2,2
	lh	$3,0($4)
	lh	$2,0($2)
	beq	$3,$2,$L69
	lw	$2,8($fp)
	addu	$2,$2,1
	sw	$2,8($fp)
$L69:
	lw	$2,16($fp)
	addu	$2,$2,1
	sw	$2,16($fp)
	b	$L67
$L68:
	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,28($sp)
	addu	$sp,$sp,32
	j	$31
	.end	is_capicua
	.size	is_capicua, .-is_capicua
	.align	2
	.globl	no_arguments
	.ent	no_arguments
no_arguments:
	.frame	$fp,1088,$31		# vars= 1048, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,1088
	.cprestore 16
	sw	$31,1080($sp)
	sw	$fp,1076($sp)
	sw	$28,1072($sp)
	move	$fp,$sp
	sw	$0,1056($fp)
	sw	$0,1060($fp)
$L73:
	lw	$2,__sF+4
	addu	$2,$2,-1
	sw	$2,__sF+4
	bgez	$2,$L76
	la	$4,__sF
	la	$25,__srget
	jal	$31,$25
	sb	$2,1068($fp)
	b	$L77
$L76:
	la	$2,__sF
	lw	$3,0($2)
	move	$4,$3
	lbu	$4,0($4)
	sb	$4,1068($fp)
	addu	$3,$3,1
	sw	$3,0($2)
$L77:
	lbu	$2,1068($fp)
	sb	$2,24($fp)
	sll	$2,$2,24
	sra	$3,$2,24
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L75
	b	$L74
$L75:
	lb	$2,24($fp)
	move	$4,$2
	la	$25,is_valid_char
	jal	$31,$25
	sw	$2,1064($fp)
	lw	$2,1064($fp)
	beq	$2,$0,$L78
	addu	$3,$fp,32
	lw	$2,1056($fp)
	addu	$3,$3,$2
	lbu	$2,24($fp)
	sb	$2,0($3)
	lw	$2,1056($fp)
	addu	$2,$2,1
	sw	$2,1056($fp)
	b	$L73
$L78:
	addu	$2,$fp,32
	move	$4,$2
	lw	$5,1056($fp)
	la	$25,is_capicua
	jal	$31,$25
	bne	$2,$0,$L80
	addu	$2,$fp,32
	move	$4,$2
	lw	$5,1056($fp)
	lw	$6,1060($fp)
	la	$25,print_word
	jal	$31,$25
	lw	$2,1060($fp)
	addu	$2,$2,1
	sw	$2,1060($fp)
$L80:
	lb	$3,24($fp)
	li	$2,10			# 0xa
	bne	$3,$2,$L81
	la	$4,$LC1
	la	$25,printf
	jal	$31,$25
	sw	$0,1060($fp)
$L81:
	sb	$0,32($fp)
	sw	$0,1056($fp)
	b	$L73
$L74:
	move	$2,$0
	move	$sp,$fp
	lw	$31,1080($sp)
	lw	$fp,1076($sp)
	addu	$sp,$sp,1088
	j	$31
	.end	no_arguments
	.size	no_arguments, .-no_arguments
	.rdata
	.align	2
$LC5:
	.ascii	"No existe el comando \n\000"
	.text
	.align	2
	.globl	one_argument
	.ent	one_argument
one_argument:
	.frame	$fp,48,$31		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$31,40($sp)
	sw	$fp,36($sp)
	sw	$28,32($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	lw	$4,48($fp)
	lw	$5,52($fp)
	la	$6,OPTIONS
	la	$25,getopt
	jal	$31,$25
	sw	$2,24($fp)
$L83:
	lw	$3,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L85
	b	$L84
$L85:
	lw	$2,24($fp)
	sw	$2,28($fp)
	li	$2,104			# 0x68
	lw	$3,28($fp)
	beq	$3,$2,$L88
	lw	$3,28($fp)
	slt	$2,$3,105
	beq	$2,$0,$L93
	li	$2,86			# 0x56
	lw	$3,28($fp)
	beq	$3,$2,$L87
	b	$L91
$L93:
	li	$2,105			# 0x69
	lw	$3,28($fp)
	beq	$3,$2,$L90
	li	$2,111			# 0x6f
	lw	$3,28($fp)
	beq	$3,$2,$L89
	b	$L91
$L87:
	la	$25,versionDisplay
	jal	$31,$25
	b	$L86
$L88:
	la	$25,helpDisplay
	jal	$31,$25
	b	$L86
$L89:
	lw	$2,52($fp)
	addu	$2,$2,8
	lw	$4,0($2)
	la	$25,stdin_file
	jal	$31,$25
	b	$L86
$L90:
	lw	$2,52($fp)
	addu	$2,$2,8
	lw	$4,0($2)
	la	$25,file_stdout
	jal	$31,$25
	b	$L86
$L91:
	la	$4,$LC5
	la	$25,printf
	jal	$31,$25
$L86:
	lw	$4,48($fp)
	lw	$5,52($fp)
	la	$6,OPTIONS
	la	$25,getopt
	jal	$31,$25
	sw	$2,24($fp)
	b	$L83
$L84:
	move	$2,$0
	move	$sp,$fp
	lw	$31,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$31
	.end	one_argument
	.size	one_argument, .-one_argument
	.rdata
	.align	2
$LC6:
	.ascii	"-o\000"
	.align	2
$LC7:
	.ascii	"-i\000"
	.text
	.align	2
	.globl	two_arguments
	.ent	two_arguments
two_arguments:
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
	sw	$31,32($sp)
	sw	$fp,28($sp)
	sw	$28,24($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	lw	$2,44($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC6
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L95
	lw	$2,44($fp)
	addu	$2,$2,12
	lw	$4,0($2)
	la	$5,$LC7
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L95
	lw	$2,44($fp)
	addu	$3,$2,16
	lw	$2,44($fp)
	addu	$2,$2,8
	lw	$4,0($3)
	lw	$5,0($2)
	la	$25,filein_fileout
	jal	$31,$25
	b	$L96
$L95:
	lw	$2,44($fp)
	addu	$2,$2,12
	lw	$4,0($2)
	la	$5,$LC6
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L97
	lw	$2,44($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC7
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L97
	lw	$2,44($fp)
	addu	$3,$2,8
	lw	$2,44($fp)
	addu	$2,$2,16
	lw	$4,0($3)
	lw	$5,0($2)
	la	$25,filein_fileout
	jal	$31,$25
	b	$L96
$L97:
	la	$4,$LC5
	la	$25,printf
	jal	$31,$25
$L96:
	move	$2,$0
	move	$sp,$fp
	lw	$31,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$31
	.end	two_arguments
	.size	two_arguments, .-two_arguments
	.rdata
	.align	2
$LC8:
	.ascii	"TP0 - Version 1.0 FIUBA 2017\n\000"
	.align	2
$LC9:
	.ascii	"Alumnos:\n\000"
	.align	2
$LC10:
	.ascii	"Charytoniuk, Martin 96354\n\000"
	.align	2
$LC11:
	.ascii	"Perez, Martin  97378 \n\000"
	.align	2
$LC12:
	.ascii	"Reimondo, Matias 95899\n\000"
	.text
	.align	2
	.globl	versionDisplay
	.ent	versionDisplay
versionDisplay:
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
	sw	$31,32($sp)
	sw	$fp,28($sp)
	sw	$28,24($sp)
	move	$fp,$sp
	la	$4,$LC8
	la	$25,printf
	jal	$31,$25
	la	$4,$LC9
	la	$25,printf
	jal	$31,$25
	la	$4,$LC10
	la	$25,printf
	jal	$31,$25
	la	$4,$LC11
	la	$25,printf
	jal	$31,$25
	la	$4,$LC12
	la	$25,printf
	jal	$31,$25
	la	$4,$LC1
	la	$25,printf
	jal	$31,$25
	move	$2,$0
	move	$sp,$fp
	lw	$31,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$31
	.end	versionDisplay
	.size	versionDisplay, .-versionDisplay
	.rdata
	.align	2
$LC13:
	.ascii	"Usage:\n"
	.ascii	"tp0 -h\n"
	.ascii	"tp0 -V\n"
	.ascii	"tp0 [options]\n"
	.ascii	"Options:\n"
	.ascii	"-V, --version Print version and quit.\n"
	.ascii	"-h, --help    Print this information.\n"
	.ascii	"-i, --input   Location of the input file.\n"
	.ascii	"-o, --output  Location of the output file.\n"
	.ascii	"Examples:\n"
	.ascii	"tp0 -i ~/input -o ~/output\n\000"
	.text
	.align	2
	.globl	helpDisplay
	.ent	helpDisplay
helpDisplay:
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
	sw	$31,32($sp)
	sw	$fp,28($sp)
	sw	$28,24($sp)
	move	$fp,$sp
	la	$4,$LC13
	la	$25,printf
	jal	$31,$25
	la	$4,$LC1
	la	$25,printf
	jal	$31,$25
	move	$2,$0
	move	$sp,$fp
	lw	$31,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$31
	.end	helpDisplay
	.size	helpDisplay, .-helpDisplay
	.align	2
	.globl	version_option
	.ent	version_option
version_option:
	.frame	$fp,48,$31		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$31,40($sp)
	sw	$fp,36($sp)
	sw	$28,32($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	lw	$4,48($fp)
	lw	$5,52($fp)
	la	$6,OPTIONS
	la	$25,getopt
	jal	$31,$25
	sw	$2,24($fp)
$L102:
	lw	$3,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L104
	b	$L103
$L104:
	lw	$2,24($fp)
	sw	$2,28($fp)
	li	$2,86			# 0x56
	lw	$3,28($fp)
	beq	$3,$2,$L106
	li	$2,104			# 0x68
	lw	$3,28($fp)
	beq	$3,$2,$L107
	b	$L108
$L106:
	la	$25,versionDisplay
	jal	$31,$25
	b	$L105
$L107:
	la	$25,helpDisplay
	jal	$31,$25
	b	$L105
$L108:
	la	$4,$LC5
	la	$25,printf
	jal	$31,$25
$L105:
	lw	$4,48($fp)
	lw	$5,52($fp)
	la	$6,OPTIONS
	la	$25,getopt
	jal	$31,$25
	sw	$2,24($fp)
	b	$L102
$L103:
	move	$2,$0
	move	$sp,$fp
	lw	$31,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$31
	.end	version_option
	.size	version_option, .-version_option
	.ident	"GCC: (GNU) 3.3.3 (NetBSD nb3 20040520)"
