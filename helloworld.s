	.text
	.file	"helloworld.b"
	.globl	b.main
	.align	16, 0x90
	.type	b.main,@function
b.main:
	.cfi_startproc
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movl	$.Lb.__str.0, %edi
	shrq	$3, %rdi
	callq	b.putstr
	xorl	%eax, %eax
	popq	%rdx
	retq
.Ltmp1:
	.size	b.main, .Ltmp1-b.main
	.cfi_endproc

	.type	.Lb.__str.0,@object
	.section	.rodata,"a",@progbits
	.align	8
.Lb.__str.0:
	.ascii	"Hello, world!\n\004"
	.size	.Lb.__str.0, 15


	.section	".note.GNU-stack","",@progbits
