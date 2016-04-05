	.text
	.file	"arithmetic.b"
	.globl	b.factorial
	.align	16, 0x90
	.type	b.factorial,@function
b.factorial:
	xorl	%eax, %eax
	retq
.Ltmp0:
	.size	b.factorial, .Ltmp0-b.factorial


	.section	".note.GNU-stack","",@progbits
