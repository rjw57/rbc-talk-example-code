	.text
	.file	"factorial.b"
	.globl	b.fact
	.align	16, 0x90
	.type	b.fact,@function
b.fact:
	movl	$1, %eax
	testq	%rdi, %rdi
	je	.LBB0_2
	.align	16, 0x90
.LBB0_1:
	imulq	%rdi, %rax
	decq	%rdi
	jne	.LBB0_1
.LBB0_2:
	retq
.Ltmp0:
	.size	b.fact, .Ltmp0-b.fact

	.globl	b.main
	.align	16, 0x90
	.type	b.main,@function
b.main:
	.cfi_startproc
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 16
.Ltmp2:
	.cfi_offset %rbx, -16
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_1:
	movq	%rbx, %rdi
	callq	b.putnumb
	movl	$555760928, %edi
	callq	b.putchar
	movq	%rbx, %rdi
	callq	b.fact
	movq	%rax, %rdi
	callq	b.putnumb
	movl	$10, %edi
	callq	b.putchar
	incq	%rbx
	cmpq	$21, %rbx
	jne	.LBB1_1
	xorl	%eax, %eax
	popq	%rbx
	retq
.Ltmp3:
	.size	b.main, .Ltmp3-b.main
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
