	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d,%d,%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$10, %edi
	call	putchar
	movl	$1, -4(%rbp)
	jmp	.L2
.L8:
	movl	$1, -8(%rbp)
	jmp	.L3
.L7:
	movl	$1, -12(%rbp)
	jmp	.L4
.L6:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.L5
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	.L5
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.L5
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
.L5:
	addl	$1, -12(%rbp)
.L4:
	cmpl	$4, -12(%rbp)
	jle	.L6
	addl	$1, -8(%rbp)
.L3:
	cmpl	$4, -8(%rbp)
	jle	.L7
	addl	$1, -4(%rbp)
.L2:
	cmpl	$4, -4(%rbp)
	jle	.L8
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 8.4.1 20200928 (Red Hat 8.4.1-1)"
	.section	.note.GNU-stack,"",@progbits
