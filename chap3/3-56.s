	.file	"3-56.c"
	.text
	.globl	loop
	.type	loop, @function
loop:
.LFB22:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %esi
	movl	16(%esp), %ecx
	movl	$-2147483648, %edx
	movl	$1431655765, %eax
.L2:
	movl	%edx, %ebx
	andl	%esi, %ebx
	xorl	%ebx, %eax
	sarl	%cl, %edx
	testl	%edx, %edx
	jne	.L2
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE22:
	.size	loop, .-loop
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
