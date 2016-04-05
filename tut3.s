	.text
	.file	"tut3.b"
	.globl	b.main
	.align	16, 0x90
	.type	b.main,@function
b.main:
	.cfi_startproc
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movq	b.a(%rip), %rdi
	callq	b.putchar
	movq	b.b(%rip), %rdi
	callq	b.putchar
	movq	b.c(%rip), %rdi
	callq	b.putchar
	movl	$8458, %edi
	callq	b.putchar
	xorl	%eax, %eax
	popq	%rdx
	retq
.Ltmp1:
	.size	b.main, .Ltmp1-b.main
	.cfi_endproc

	.type	b.a,@object
	.data
	.globl	b.a
	.align	8
b.a:
	.quad	1751477356
	.size	b.a, 8

	.type	b.b,@object
	.globl	b.b
	.align	8
b.b:
	.quad	1865162871
	.size	b.b, 8

	.type	b.c,@object
	.globl	b.c
	.align	8
b.c:
	.quad	1869769828
	.size	b.c, 8


	.section	".note.GNU-stack","",@progbits
