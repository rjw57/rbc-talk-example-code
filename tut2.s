	.text
	.file	"tut2.b"
	.globl	b.main
	.align	16, 0x90
	.type	b.main,@function
b.main:
	.cfi_startproc
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movl	$6842657, %edi
	callq	b.putchar
	movl	$10, %edi
	callq	b.putchar
	xorl	%eax, %eax
	popq	%rdx
	retq
.Ltmp1:
	.size	b.main, .Ltmp1-b.main
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
