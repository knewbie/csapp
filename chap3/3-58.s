	.file	"3-58.c"
	.text
	.globl	switch3
	.type	switch3, @function
switch3:
.LFB22:
	.cfi_startproc
	movl	12(%esp), %edx
	movl	$0, %eax
	cmpl	$4, %edx
	ja	.L7
	jmp	*.L8(,%edx,4)
	.section	.rodata
	.align 4
	.align 4
.L8:
	.long	.L3
	.long	.L4
	.long	.L5
	.long	.L6
	.long	.L9
	.text
.L3:
	movl	4(%esp), %edx
	movl	(%edx), %eax
	movl	8(%esp), %ecx
	movl	(%ecx), %edx
	movl	4(%esp), %ecx
	movl	%edx, (%ecx)
	ret
.L4:
	movl	4(%esp), %edx
	movl	(%edx), %eax
	movl	8(%esp), %ecx
	addl	(%ecx), %eax
	movl	%eax, (%ecx)
	ret
.L5:
	movl	8(%esp), %eax
	movl	$15, (%eax)
	movl	4(%esp), %edx
	movl	(%edx), %eax
	ret
.L6:
	movl	4(%esp), %ecx
	movl	(%ecx), %eax
	movl	8(%esp), %edx
	movl	%eax, (%edx)
	movl	$17, %eax
	ret
.L9:
	movl	$17, %eax
.L7:
	rep
	ret
	.cfi_endproc
.LFE22:
	.size	switch3, .-switch3
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
