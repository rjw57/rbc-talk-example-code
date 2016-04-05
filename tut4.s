	.text
	.file	"tut4.b"
	.globl	b.main
	.align	16, 0x90
	.type	b.main,@function
b.main:
	.cfi_startproc
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movq	b.a(%rip), %rdi
	movq	b.b(%rip), %rsi
	callq	b.put2char
	movq	b.c(%rip), %rdi
	movq	b.d(%rip), %rsi
	callq	b.put2char
	xorl	%eax, %eax
	popq	%rdx
	retq
.Ltmp1:
	.size	b.main, .Ltmp1-b.main
	.cfi_endproc

	.globl	b.put2char
	.align	16, 0x90
	.type	b.put2char,@function
b.put2char:
	.cfi_startproc
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	callq	b.putchar
	movq	%rbx, %rdi
	callq	b.putchar
	xorl	%eax, %eax
	popq	%rbx
	retq
.Ltmp4:
	.size	b.put2char, .Ltmp4-b.put2char
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

	.type	b.d,@object
	.globl	b.d
	.align	8
b.d:
	.quad	8458
	.size	b.d, 8


	.section	".note.GNU-stack","",@progbits
