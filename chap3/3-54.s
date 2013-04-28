	.file	"3-54.c"
	.text
	.globl	decode2
	.type	decode2, @function
decode2:
.LFB22:
	.cfi_startproc
	movl	12(%esp), %eax
	subl	8(%esp), %eax
	movl	%eax, %edx
	sall	$15, %edx
	xorl	4(%esp), %eax
	sarl	$15, %edx
	imull	%edx, %eax
	ret
	.cfi_endproc
.LFE22:
	.size	decode2, .-decode2
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
