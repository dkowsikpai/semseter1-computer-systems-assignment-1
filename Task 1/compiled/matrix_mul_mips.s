	.file	1 "matrix_mul.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	matrix_mul
	.set	nomips16
	.set	nomicromips
	.ent	matrix_mul
	.type	matrix_mul, @function
matrix_mul:
	.frame	$fp,104,$31		# vars= 40, regs= 10/0, args= 16, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-104
	sw	$31,100($sp)
	sw	$fp,96($sp)
	sw	$23,92($sp)
	sw	$22,88($sp)
	sw	$21,84($sp)
	sw	$20,80($sp)
	sw	$19,76($sp)
	sw	$18,72($sp)
	sw	$17,68($sp)
	sw	$16,64($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,104($fp)
	lw	$4,%got(__stack_chk_guard)($28)
	lw	$4,0($4)
	sw	$4,60($fp)
	move	$4,$sp
	sw	$4,28($fp)
	lw	$4,104($fp)
	addiu	$5,$4,-1
	sw	$5,44($fp)
	move	$5,$4
	move	$11,$5
	move	$10,$0
	srl	$5,$11,27
	sll	$6,$10,5
	or	$6,$5,$6
	sll	$7,$11,5
	move	$5,$4
	move	$9,$5
	move	$8,$0
	srl	$5,$9,27
	sll	$2,$8,5
	or	$2,$5,$2
	sll	$3,$9,5
	move	$2,$4
	sll	$2,$2,2
	addiu	$2,$2,7
	srl	$2,$2,3
	sll	$2,$2,3
	subu	$sp,$sp,$2
	addiu	$2,$sp,16
	addiu	$2,$2,3
	srl	$2,$2,2
	sll	$2,$2,2
	sw	$2,48($fp)
	sw	$0,40($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$2,104($fp)
	sll	$2,$2,2
	move	$4,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$3,48($fp)
	lw	$2,40($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	sw	$4,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L2:
	lw	$3,40($fp)
	lw	$2,104($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L3
	nop

	lw	$2,104($fp)
	move	$3,$sp
	sw	$3,24($fp)
	addiu	$3,$2,-1
	sw	$3,52($fp)
	move	$3,$2
	move	$23,$3
	move	$22,$0
	srl	$3,$23,27
	sll	$18,$22,5
	or	$18,$3,$18
	sll	$19,$23,5
	move	$3,$2
	move	$21,$3
	move	$20,$0
	srl	$3,$21,27
	sll	$16,$20,5
	or	$16,$3,$16
	sll	$17,$21,5
	sll	$2,$2,2
	addiu	$2,$2,7
	srl	$2,$2,3
	sll	$2,$2,3
	subu	$sp,$sp,$2
	addiu	$2,$sp,16
	addiu	$2,$2,3
	srl	$2,$2,2
	sll	$2,$2,2
	sw	$2,56($fp)
	sw	$0,40($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L5:
	lw	$2,104($fp)
	sll	$2,$2,2
	move	$4,$2
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	lw	$3,56($fp)
	lw	$2,40($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	sw	$4,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L4:
	lw	$3,40($fp)
	lw	$2,104($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L5
	nop

	sw	$0,40($fp)
	.option	pic0
	b	$L6
	nop

	.option	pic2
$L9:
	sw	$0,36($fp)
	.option	pic0
	b	$L7
	nop

	.option	pic2
$L8:
	lw	$3,48($fp)
	lw	$2,40($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,36($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	li	$3,1			# 0x1
	sw	$3,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L7:
	lw	$3,36($fp)
	lw	$2,104($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L8
	nop

	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L6:
	lw	$3,40($fp)
	lw	$2,104($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L9
	nop

	sw	$0,40($fp)
	.option	pic0
	b	$L10
	nop

	.option	pic2
$L15:
	sw	$0,36($fp)
	.option	pic0
	b	$L11
	nop

	.option	pic2
$L14:
	sw	$0,32($fp)
	.option	pic0
	b	$L12
	nop

	.option	pic2
$L13:
	lw	$3,48($fp)
	lw	$2,40($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,32($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$4,0($2)
	lw	$3,48($fp)
	lw	$2,32($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,36($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$5,56($fp)
	lw	$2,40($fp)
	sll	$2,$2,2
	addu	$2,$5,$2
	lw	$5,0($2)
	lw	$2,36($fp)
	sll	$2,$2,2
	addu	$2,$5,$2
	mul	$3,$4,$3
	sw	$3,0($2)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L12:
	lw	$3,32($fp)
	lw	$2,104($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L13
	nop

	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L11:
	lw	$3,36($fp)
	lw	$2,104($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L14
	nop

	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L10:
	lw	$3,40($fp)
	lw	$2,104($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L15
	nop

	lw	$sp,24($fp)
	lw	$sp,28($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,60($fp)
	lw	$2,0($2)
	beq	$3,$2,$L16
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L16:
	move	$2,$4
	move	$sp,$fp
	lw	$31,100($sp)
	lw	$fp,96($sp)
	lw	$23,92($sp)
	lw	$22,88($sp)
	lw	$21,84($sp)
	lw	$20,80($sp)
	lw	$19,76($sp)
	lw	$18,72($sp)
	lw	$17,68($sp)
	lw	$16,64($sp)
	addiu	$sp,$sp,104
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	matrix_mul
	.size	matrix_mul, .-matrix_mul
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	li	$2,256			# 0x100
	sw	$2,28($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	matrix_mul
	nop

	.option	pic2
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0"
