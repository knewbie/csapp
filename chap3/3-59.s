	.file	"3-59.c"
	.text
	.globl	sitch_prob
	.type	sitch_prob, @function
sitch_prob:
.LFB22:
	.cfi_startproc
	movl	8(%esp), %eax
	subl	$40, %eax
	cmpl	$5, %eax
	ja	.L9
	jmp	*.L7(,%eax,4)
	.section	.rodata
	.align 4
	.align 4
.L7:
	.long	.L3
	.long	.L9
	.long	.L3
	.long	.L4
	.long	.L5
	.long	.L10
	.text
.L3:
	movl	4(%esp), %eax
	sall	$3, %eax
	ret
.L4:
	movl	4(%esp), %eax
	sarl	$3, %eax
	ret
.L5:
	movl	4(%esp), %eax
	sall	$3, %eax
	subl	4(%esp), %eax
	jmp	.L6
.L10:
	movl	4(%esp), %eax
.L6:
	imull	%eax, %eax
	jmp	.L2
.L9:
	movl	4(%esp), %eax
.L2:
	addl	$17, %eax
	ret
	.cfi_endproc
.LFE22:
	.size	sitch_prob, .-sitch_prob
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
