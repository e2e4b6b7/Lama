	.data
__gc_stack_bottom:	.long	0
__gc_stack_top:		.long	0

	.globl	__gc_init
	.globl	__gc_stack_top
	.globl	__gc_stack_bottom
	.extern	__init

	.text

__gc_init:
	movl	%ebp, __gc_stack_bottom
	addl	$4, __gc_stack_bottom
	call	__init
	ret
