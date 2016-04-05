	.text
	.file	"calce.b"
	.globl	b.main
	.align	16, 0x90
	.type	b.main,@function
b.main:
	.cfi_startproc
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -48
.Ltmp6:
	.cfi_offset %r12, -40
.Ltmp7:
	.cfi_offset %r13, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %r15, -16
	movl	$b.v, %eax
	xorl	%ecx, %ecx
	cmpq	$0, b.n(%rip)
	jle	.LBB0_3
	andq	$-8, %rax
	.align	16, 0x90
.LBB0_2:
	incq	%rcx
	movq	$1, (%rax)
	addq	$8, %rax
	cmpq	b.n(%rip), %rcx
	jl	.LBB0_2
.LBB0_3:
	movq	b.n(%rip), %rcx
	leaq	(%rcx,%rcx), %rax
	sarq	%rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	jle	.LBB0_10
	movl	$b.v, %r14d
	andq	$-8, %r14
	movabsq	$7378697629483820647, %r15
	movabsq	$-6640827866535438581, %r12
	movl	$10, %r13d
	.align	16, 0x90
.LBB0_5:
	testq	%rcx, %rcx
	movl	$0, %eax
	jle	.LBB0_8
	incq	%rcx
	movq	%r14, %rsi
	xorl	%eax, %eax
	xorl	%edi, %edi
	.align	16, 0x90
.LBB0_7:
	movq	(%rsi), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,2), %rax
	incq	%rdi
	cqto
	idivq	%rcx
	movq	%rdx, (%rsi)
	decq	%rcx
	addq	$8, %rsi
	cmpq	b.n(%rip), %rdi
	jl	.LBB0_7
.LBB0_8:
	addq	$48, %rax
	movq	%rax, %rdi
	callq	b.putchar
	incq	%rbx
	movq	%rbx, %rax
	imulq	%r15
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	cmpq	%rax, %rbx
	jne	.LBB0_9
	movq	%rbx, %rax
	imulq	%r12
	addq	%rbx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$5, %rdx
	addq	%rax, %rdx
	imulq	$50, %rdx, %rax
	cmpq	%rax, %rbx
	movl	$32, %edi
	cmoveq	%r13, %rdi
	callq	b.putchar
.LBB0_9:
	movq	b.n(%rip), %rcx
	leaq	(%rcx,%rcx), %rax
	cmpq	%rax, %rbx
	jl	.LBB0_5
.LBB0_10:
	movl	$2570, %edi
	callq	b.putchar
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Ltmp10:
	.size	b.main, .Ltmp10-b.main
	.cfi_endproc

	.type	b.v,@object
	.bss
	.globl	b.v
	.align	8
b.v:
	.zero	16008
	.size	b.v, 16008

	.type	b.n,@object
	.data
	.globl	b.n
	.align	8
b.n:
	.quad	2000
	.size	b.n, 8


	.section	".note.GNU-stack","",@progbits
