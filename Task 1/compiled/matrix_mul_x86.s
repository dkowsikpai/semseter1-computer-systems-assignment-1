	.file	"matrix_mul.c"
	.text
	.globl	matrix_mul
	.type	matrix_mul, @function
matrix_mul:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r10
	movl	$0, %r11d
	movslq	%eax, %rdx
	movq	%rdx, %r8
	movl	$0, %r9d
	cltq
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rdx
.L2:
	cmpq	%rdx, %rsp
	je	.L3
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2
.L3:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L4
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L4:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -64(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L5
.L6:
	movl	-100(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -76(%rbp)
.L5:
	movl	-76(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L6
	movl	-100(%rbp), %eax
	movq	%rsp, %rdx
	movq	%rdx, %r12
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	movq	$0, -120(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	cltq
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rdi
	subq	%rdx, %rdi
	movq	%rdi, %rdx
.L7:
	cmpq	%rdx, %rsp
	je	.L8
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L7
.L8:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L9
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L9:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L10
.L11:
	movl	-100(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -76(%rbp)
.L10:
	movl	-76(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L11
	movl	$0, -76(%rbp)
	jmp	.L12
.L15:
	movl	$0, -80(%rbp)
	jmp	.L13
.L14:
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$100, (%rax)
	addl	$1, -80(%rbp)
.L13:
	movl	-80(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L14
	addl	$1, -76(%rbp)
.L12:
	movl	-76(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L15
	movl	$0, -76(%rbp)
	jmp	.L16
.L21:
	movl	$0, -80(%rbp)
	jmp	.L17
.L20:
	movl	$0, -84(%rbp)
	jmp	.L18
.L19:
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %esi
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	imull	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	leal	(%rsi,%rcx), %edx
	movl	%edx, (%rax)
	addl	$1, -84(%rbp)
.L18:
	movl	-84(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L19
	addl	$1, -80(%rbp)
.L17:
	movl	-80(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L20
	addl	$1, -76(%rbp)
.L16:
	movl	-76(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L21
	movq	%r12, %rsp
	movq	%rbx, %rsp
	nop
	movq	-40(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	matrix_mul, .-matrix_mul
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$256, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	matrix_mul
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
