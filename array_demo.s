	.text
	.file	"array_demo.b"
	.globl	b.main
	.align	16, 0x90
	.type	b.main,@function
b.main:
	.cfi_startproc
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movl	$b.v, %ebx
	shrq	$3, %rbx
	movq	(,%rbx,8), %rdi
	callq	b.putnumb
	movl	$32, %edi
	callq	b.putchar
	movq	8(,%rbx,8), %rdi
	callq	b.putnumb
	movl	$32, %edi
	callq	b.putchar
	movq	16(,%rbx,8), %rdi
	callq	b.putnumb
	movl	$32, %edi
	callq	b.putchar
	movq	24(,%rbx,8), %rdi
	callq	b.putnumb
	movl	$32, %edi
	callq	b.putchar
	movq	32(,%rbx,8), %rdi
	callq	b.putnumb
	movl	$32, %edi
	callq	b.putchar
	movq	40(,%rbx,8), %rdi
	callq	b.putnumb
	movl	$32, %edi
	callq	b.putchar
	movq	48(,%rbx,8), %rdi
	callq	b.putnumb
	movl	$32, %edi
	callq	b.putchar
	movq	56(,%rbx,8), %rdi
	callq	b.putnumb
	movl	$32, %edi
	callq	b.putchar
	movl	$10, %edi
	callq	b.putchar
	movq	%rbx, %rdi
	callq	b.putnumb
	movl	$10, %edi
	callq	b.putchar
	xorl	%eax, %eax
	popq	%rbx
	retq
.Ltmp2:
	.size	b.main, .Ltmp2-b.main
	.cfi_endproc

	.align	16, 0x90
	.type	.L__ctor.v,@function
.L__ctor.v:
	movq	$1, b.v(%rip)
	movq	$1, b.v+8(%rip)
	movq	$2, b.v+16(%rip)
	movq	$3, b.v+24(%rip)
	movq	$5, b.v+32(%rip)
	movq	$8, b.v+40(%rip)
	movq	$13, b.v+48(%rip)
	retq
.Ltmp3:
	.size	.L__ctor.v, .Ltmp3-.L__ctor.v

	.type	b.v,@object
	.bss
	.globl	b.v
	.align	8
b.v:
	.zero	56
	.size	b.v, 56

	.section	.ctors.65535,"aw",@progbits
	.align	8
	.quad	.L__ctor.v

	.section	".note.GNU-stack","",@progbits
