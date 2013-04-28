	.file	"3-62.c"
	.text
	.p2align 4,,15
	.globl	transposs
	.type	transposs, @function
transposs:
.LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	20(%esp), %edi
	addl	$1, %esi
	cmpl	$6, %esi
	leal	24(%edi), %ecx
	je	.L1
	.p2align 4,,7
	.p2align 3
.L8:
	leal	(%edi,%esi,4), %edx
	xorl	%eax, %eax
	.p2align 4,,7
	.p2align 3
.L3:
	movl	(%edx), %ebp
	movl	(%ecx,%eax,4), %ebx
	movl	%ebp, (%ecx,%eax,4)
	addl	$1, %eax
	movl	%ebx, (%edx)
	addl	$24, %edx
	cmpl	%esi, %eax
	jne	.L3
	addl	$1, %esi
	addl	$24, %ecx
	cmpl	$6, %esi
	jne	.L8
.L1:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE22:
	.size	transposs, .-transposs
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
