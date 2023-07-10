	.file	"runtime.c"
	.text
	.globl	__gc_stack_top2
	.bss
	.align 4
	.type	__gc_stack_top2, @object
	.size	__gc_stack_top2, 4
__gc_stack_top2:
	.zero	4
	.section	.rodata
.LC0:
	.string	"*** FAILURE: "
	.text
	.type	vfailure, @function
vfailure:
.LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	pushl	%eax
	pushl	$13
	pushl	$1
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	call	fwrite@PLT
	addl	$16, %esp
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	%eax
	call	vfprintf@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	$255
	call	exit@PLT
	.cfi_endproc
.LFE6:
	.size	vfailure, .-vfailure
	.globl	failure
	.type	failure, @function
failure:
.LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-28(%ebp)
	call	vfailure
	addl	$16, %esp
	nop
	movl	-12(%ebp), %eax
	subl	%gs:20, %eax
	je	.L3
	call	__stack_chk_fail_local
.L3:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	failure, .-failure
	.globl	Lassert
	.type	Lassert, @function
Lassert:
.LFB8:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	-28(%ebp), %eax
	sarl	%eax
	testl	%eax, %eax
	jne	.L7
	leal	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-32(%ebp)
	call	vfailure
	addl	$16, %esp
.L7:
	nop
	movl	-12(%ebp), %eax
	subl	%gs:20, %eax
	je	.L6
	call	__stack_chk_fail_local
.L6:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	Lassert, .-Lassert
	.globl	global_sysargs
	.bss
	.align 4
	.type	global_sysargs, @object
	.size	global_sysargs, 4
global_sysargs:
	.zero	4
	.text
	.globl	LkindOf
	.type	LkindOf, @function
LkindOf:
.LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L9
	movl	$9, %eax
	jmp	.L10
.L9:
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
.L10:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	LkindOf, .-LkindOf
	.section	.rodata
.LC1:
	.string	"compareTags, 0"
.LC2:
	.string	"boxed value expected in %s\n"
.LC3:
	.string	"compareTags, 1"
	.align 4
.LC4:
	.string	"not a sexpr in compareTags: %d, %d\n"
	.text
	.globl	LcompareTags
	.type	LcompareTags, @function
LcompareTags:
.LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L12
	subl	$8, %esp
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L12:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L13
	subl	$8, %esp
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L13:
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	.L14
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	.L14
	movl	8(%ebp), %eax
	subl	$16, %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	subl	$16, %eax
	movl	4(%eax), %eax
	subl	%eax, %edx
	leal	(%edx,%edx), %eax
	orl	$1, %eax
	jmp	.L15
.L14:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	subl	$4, %esp
	pushl	%edx
	pushl	%eax
	leal	.LC4@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
	movl	$0, %eax
.L15:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE10:
	.size	LcompareTags, .-LcompareTags
	.section	.rodata
.LC5:
	.string	"runtime.c"
	.align 4
.LC6:
	.string	"ebp_v == __builtin_frame_address(0)"
.LC7:
	.string	"\tSET: ebp_v %p %p %p %p\n"
.LC8:
	.string	"cons"
.LC9:
	.string	"__gc_stack_top != 0"
.LC10:
	.string	"\tUNSET: ebp_v %p\n"
.LC11:
	.string	"ebp_v %p, top %p, bot %p\n"
.LC12:
	.string	"false"
.LC13:
	.string	"\tTOP>ebp_v: %p > %p %p %p\n"
	.text
	.globl	Ls__Infix_58
	.type	Ls__Infix_58, @function
Ls__Infix_58:
.LFB11:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	%ebp, %eax
	movl	%eax, -36(%ebp)
	movl	%ebp, %eax
	movl	-36(%ebp), %edx
	cmpl	%edx, %eax
	je	.L17
	leal	__PRETTY_FUNCTION__.15@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$147
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L17:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L18
	movl	-36(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-36(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-36(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-36(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L18:
	subl	$12, %esp
	leal	-44(%ebp), %eax
	pushl	%eax
	call	push_extra_root@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	-48(%ebp), %eax
	pushl	%eax
	call	push_extra_root@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	.LC8@GOTOFF(%ebx), %eax
	pushl	%eax
	call	LtagHash
	addl	$16, %esp
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %edx
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	pushl	$7
	call	Bsexp
	addl	$16, %esp
	movl	%eax, -32(%ebp)
	subl	$12, %esp
	leal	-48(%ebp), %eax
	pushl	%eax
	call	pop_extra_root@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	-44(%ebp), %eax
	pushl	%eax
	call	pop_extra_root@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L19
	leal	__PRETTY_FUNCTION__.15@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$155
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L19:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	cmpl	%eax, %edx
	je	.L20
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-36(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L21
.L20:
	movl	-36(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L22
.L21:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L23
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-36(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.15@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$155
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L23:
	movl	%ebp, %edi
	movl	-36(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-36(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L22:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L25
	call	__stack_chk_fail_local
.L25:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	Ls__Infix_58, .-Ls__Infix_58
	.section	.rodata
.LC14:
	.string	"captured !!:1"
.LC15:
	.string	"unboxed value expected in %s\n"
.LC16:
	.string	"captured !!:2"
	.text
	.globl	Ls__Infix_3333
	.type	Ls__Infix_3333, @function
Ls__Infix_3333:
.LFB12:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L27
	subl	$8, %esp
	leal	.LC14@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L27:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L28
	subl	$8, %esp
	leal	.LC16@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L28:
	movl	8(%ebp), %eax
	sarl	%eax
	testl	%eax, %eax
	jne	.L29
	movl	12(%ebp), %eax
	sarl	%eax
	testl	%eax, %eax
	je	.L30
.L29:
	movl	$1, %eax
	jmp	.L31
.L30:
	movl	$0, %eax
.L31:
	addl	%eax, %eax
	orl	$1, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	Ls__Infix_3333, .-Ls__Infix_3333
	.section	.rodata
.LC17:
	.string	"captured &&:1"
.LC18:
	.string	"captured &&:2"
	.text
	.globl	Ls__Infix_3838
	.type	Ls__Infix_3838, @function
Ls__Infix_3838:
.LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L34
	subl	$8, %esp
	leal	.LC17@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L34:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L35
	subl	$8, %esp
	leal	.LC18@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L35:
	movl	8(%ebp), %eax
	sarl	%eax
	testl	%eax, %eax
	je	.L36
	movl	12(%ebp), %eax
	sarl	%eax
	testl	%eax, %eax
	je	.L36
	movl	$1, %eax
	jmp	.L37
.L36:
	movl	$0, %eax
.L37:
	addl	%eax, %eax
	orl	$1, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	Ls__Infix_3838, .-Ls__Infix_3838
	.globl	Ls__Infix_6161
	.type	Ls__Infix_6161, @function
Ls__Infix_6161:
.LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L40
	movl	$3, %eax
	jmp	.L42
.L40:
	movl	$1, %eax
.L42:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	Ls__Infix_6161, .-Ls__Infix_6161
	.section	.rodata
.LC19:
	.string	"captured !=:1"
.LC20:
	.string	"captured !=:2"
	.text
	.globl	Ls__Infix_3361
	.type	Ls__Infix_3361, @function
Ls__Infix_3361:
.LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L44
	subl	$8, %esp
	leal	.LC19@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L44:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L45
	subl	$8, %esp
	leal	.LC20@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L45:
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	sarl	%eax
	cmpl	%eax, %edx
	je	.L46
	movl	$3, %eax
	jmp	.L48
.L46:
	movl	$1, %eax
.L48:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	Ls__Infix_3361, .-Ls__Infix_3361
	.section	.rodata
.LC21:
	.string	"captured <=:1"
.LC22:
	.string	"captured <=:2"
	.text
	.globl	Ls__Infix_6061
	.type	Ls__Infix_6061, @function
Ls__Infix_6061:
.LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L50
	subl	$8, %esp
	leal	.LC21@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L50:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L51
	subl	$8, %esp
	leal	.LC22@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L51:
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	sarl	%eax
	cmpl	%eax, %edx
	jg	.L52
	movl	$3, %eax
	jmp	.L54
.L52:
	movl	$1, %eax
.L54:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	Ls__Infix_6061, .-Ls__Infix_6061
	.section	.rodata
.LC23:
	.string	"captured <:1"
.LC24:
	.string	"captured <:2"
	.text
	.globl	Ls__Infix_60
	.type	Ls__Infix_60, @function
Ls__Infix_60:
.LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L56
	subl	$8, %esp
	leal	.LC23@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L56:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L57
	subl	$8, %esp
	leal	.LC24@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L57:
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	sarl	%eax
	cmpl	%eax, %edx
	jge	.L58
	movl	$3, %eax
	jmp	.L60
.L58:
	movl	$1, %eax
.L60:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	Ls__Infix_60, .-Ls__Infix_60
	.section	.rodata
.LC25:
	.string	"captured >=:1"
.LC26:
	.string	"captured >=:2"
	.text
	.globl	Ls__Infix_6261
	.type	Ls__Infix_6261, @function
Ls__Infix_6261:
.LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L62
	subl	$8, %esp
	leal	.LC25@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L62:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L63
	subl	$8, %esp
	leal	.LC26@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L63:
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	sarl	%eax
	cmpl	%eax, %edx
	jl	.L64
	movl	$3, %eax
	jmp	.L66
.L64:
	movl	$1, %eax
.L66:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	Ls__Infix_6261, .-Ls__Infix_6261
	.section	.rodata
.LC27:
	.string	"captured >:1"
.LC28:
	.string	"captured >:2"
	.text
	.globl	Ls__Infix_62
	.type	Ls__Infix_62, @function
Ls__Infix_62:
.LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L68
	subl	$8, %esp
	leal	.LC27@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L68:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L69
	subl	$8, %esp
	leal	.LC28@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L69:
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	sarl	%eax
	cmpl	%eax, %edx
	jle	.L70
	movl	$3, %eax
	jmp	.L72
.L70:
	movl	$1, %eax
.L72:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	Ls__Infix_62, .-Ls__Infix_62
	.section	.rodata
.LC29:
	.string	"captured +:1"
.LC30:
	.string	"captured +:2"
	.text
	.globl	Ls__Infix_43
	.type	Ls__Infix_43, @function
Ls__Infix_43:
.LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L74
	subl	$8, %esp
	leal	.LC29@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L74:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L75
	subl	$8, %esp
	leal	.LC30@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L75:
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	sarl	%eax
	addl	%edx, %eax
	addl	%eax, %eax
	orl	$1, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	Ls__Infix_43, .-Ls__Infix_43
	.section	.rodata
.LC31:
	.string	"captured -:2"
.LC32:
	.string	"captured -:1"
	.text
	.globl	Ls__Infix_45
	.type	Ls__Infix_45, @function
Ls__Infix_45:
.LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L78
	movl	12(%ebp), %edx
	andl	$1, %edx
	testl	%edx, %edx
	jne	.L79
	subl	$8, %esp
	leal	.LC31@GOTOFF(%eax), %edx
	pushl	%edx
	leal	.LC15@GOTOFF(%eax), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L79:
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	sarl	%eax
	subl	%eax, %edx
	leal	(%edx,%edx), %eax
	orl	$1, %eax
	jmp	.L80
.L78:
	movl	12(%ebp), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L81
	subl	$8, %esp
	leal	.LC32@GOTOFF(%eax), %edx
	pushl	%edx
	leal	.LC2@GOTOFF(%eax), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L81:
	movl	8(%ebp), %eax
	subl	12(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
.L80:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	Ls__Infix_45, .-Ls__Infix_45
	.section	.rodata
.LC33:
	.string	"captured *:1"
.LC34:
	.string	"captured *:2"
	.text
	.globl	Ls__Infix_42
	.type	Ls__Infix_42, @function
Ls__Infix_42:
.LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L83
	subl	$8, %esp
	leal	.LC33@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L83:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L84
	subl	$8, %esp
	leal	.LC34@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L84:
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	sarl	%eax
	imull	%edx, %eax
	addl	%eax, %eax
	orl	$1, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	Ls__Infix_42, .-Ls__Infix_42
	.section	.rodata
.LC35:
	.string	"captured /:1"
.LC36:
	.string	"captured /:2"
	.text
	.globl	Ls__Infix_47
	.type	Ls__Infix_47, @function
Ls__Infix_47:
.LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L87
	subl	$8, %esp
	leal	.LC35@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L87:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L88
	subl	$8, %esp
	leal	.LC36@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L88:
	movl	8(%ebp), %eax
	sarl	%eax
	movl	12(%ebp), %edx
	movl	%edx, %ecx
	sarl	%ecx
	cltd
	idivl	%ecx
	addl	%eax, %eax
	orl	$1, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	Ls__Infix_47, .-Ls__Infix_47
	.section	.rodata
.LC37:
	.string	"captured %:1"
.LC38:
	.string	"captured %:2"
	.text
	.globl	Ls__Infix_37
	.type	Ls__Infix_37, @function
Ls__Infix_37:
.LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L91
	subl	$8, %esp
	leal	.LC37@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L91:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L92
	subl	$8, %esp
	leal	.LC38@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L92:
	movl	8(%ebp), %eax
	sarl	%eax
	movl	12(%ebp), %edx
	sarl	%edx
	movl	%edx, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	orl	$1, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	Ls__Infix_37, .-Ls__Infix_37
	.section	.rodata
.LC39:
	.string	".length"
	.text
	.globl	Llength
	.type	Llength, @function
Llength:
.LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L95
	subl	$8, %esp
	leal	.LC39@GOTOFF(%eax), %edx
	pushl	%edx
	leal	.LC2@GOTOFF(%eax), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L95:
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	addl	%eax, %eax
	orl	$1, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	Llength, .-Llength
	.section	.rodata
	.align 4
.LC40:
	.string	"_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'"
	.section	.data.rel.local,"aw"
	.align 4
	.type	chars, @object
	.size	chars, 4
chars:
	.long	.LC40
	.section	.rodata
	.align 4
.LC41:
	.string	"tagHash: character not found: %c\n"
.LC42:
	.string	"%s <-> %s\n"
	.text
	.globl	LtagHash
	.type	LtagHash, @function
LtagHash:
.LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L98
.L105:
	movl	chars@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L99
.L101:
	addl	$1, -16(%ebp)
	addl	$1, -12(%ebp)
.L99:
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L100
	movl	-16(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jne	.L101
.L100:
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L102
	movl	-24(%ebp), %eax
	sall	$6, %eax
	orl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L103
.L102:
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	subl	$8, %esp
	pushl	%eax
	leal	.LC41@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L103:
	addl	$1, -28(%ebp)
.L98:
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L104
	movl	-20(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -20(%ebp)
	cmpl	$4, %eax
	jle	.L105
.L104:
	subl	$12, %esp
	pushl	-24(%ebp)
	call	de_hash
	addl	$16, %esp
	subl	$8, %esp
	pushl	%eax
	pushl	8(%ebp)
	call	strcmp@PLT
	addl	$16, %esp
	testl	%eax, %eax
	je	.L106
	subl	$12, %esp
	pushl	-24(%ebp)
	call	de_hash
	addl	$16, %esp
	subl	$4, %esp
	pushl	%eax
	pushl	8(%ebp)
	leal	.LC42@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L106:
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	LtagHash, .-LtagHash
	.globl	de_hash
	.type	de_hash, @function
de_hash:
.LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	$1, -8(%ebp)
	leal	5+buf.14@GOTOFF(%eax), %edx
	movl	%edx, -8(%ebp)
	movl	-8(%ebp), %edx
	leal	-1(%edx), %ecx
	movl	%ecx, -8(%ebp)
	movb	$0, (%edx)
	jmp	.L109
.L110:
	movl	chars@GOTOFF(%eax), %edx
	movl	8(%ebp), %ecx
	andl	$63, %ecx
	leal	(%edx,%ecx), %ebx
	movl	-8(%ebp), %edx
	leal	-1(%edx), %ecx
	movl	%ecx, -8(%ebp)
	movzbl	(%ebx), %ecx
	movb	%cl, (%edx)
	sarl	$6, 8(%ebp)
.L109:
	cmpl	$0, 8(%ebp)
	jne	.L110
	addl	$1, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	de_hash, .-de_hash
	.local	stringBuf
	.comm	stringBuf,12,4
	.type	createStringBuf, @function
createStringBuf:
.LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	pushl	$128
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, stringBuf@GOTOFF(%ebx)
	movl	stringBuf@GOTOFF(%ebx), %eax
	subl	$4, %esp
	pushl	$128
	pushl	$0
	pushl	%eax
	call	memset@PLT
	addl	$16, %esp
	movl	$0, 4+stringBuf@GOTOFF(%ebx)
	movl	$128, 8+stringBuf@GOTOFF(%ebx)
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	createStringBuf, .-createStringBuf
	.type	deleteStringBuf, @function
deleteStringBuf:
.LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	stringBuf@GOTOFF(%eax), %edx
	subl	$12, %esp
	pushl	%edx
	movl	%eax, %ebx
	call	free@PLT
	addl	$16, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	deleteStringBuf, .-deleteStringBuf
	.type	extendStringBuf, @function
extendStringBuf:
.LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8+stringBuf@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	movl	stringBuf@GOTOFF(%ebx), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	call	realloc@PLT
	addl	$16, %esp
	movl	%eax, stringBuf@GOTOFF(%ebx)
	movl	-12(%ebp), %eax
	movl	%eax, 8+stringBuf@GOTOFF(%ebx)
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE30:
	.size	extendStringBuf, .-extendStringBuf
	.type	vprintStringBuf, @function
vprintStringBuf:
.LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$1, -16(%ebp)
.L116:
	movl	-48(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	stringBuf@GOTOFF(%ebx), %eax
	movl	4+stringBuf@GOTOFF(%ebx), %edx
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	8+stringBuf@GOTOFF(%ebx), %edx
	movl	4+stringBuf@GOTOFF(%ebx), %eax
	subl	%eax, %edx
	movl	%edx, -20(%ebp)
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	pushl	%edx
	pushl	-44(%ebp)
	pushl	%eax
	pushl	-16(%ebp)
	call	vsnprintf@PLT
	addl	$16, %esp
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L117
	call	extendStringBuf
	jmp	.L116
.L117:
	movl	4+stringBuf@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4+stringBuf@GOTOFF(%ebx)
	nop
	movl	-12(%ebp), %eax
	subl	%gs:20, %eax
	je	.L118
	call	__stack_chk_fail_local
.L118:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE31:
	.size	vprintStringBuf, .-vprintStringBuf
	.type	printStringBuf, @function
printStringBuf:
.LFB32:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-28(%ebp)
	call	vprintStringBuf
	addl	$16, %esp
	nop
	movl	-12(%ebp), %eax
	subl	%gs:20, %eax
	je	.L120
	call	__stack_chk_fail_local
.L120:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE32:
	.size	printStringBuf, .-printStringBuf
	.section	.rodata
.LC43:
	.string	"%d"
.LC44:
	.string	"0x%x"
.LC45:
	.string	"\"%s\""
.LC46:
	.string	"<closure "
.LC47:
	.string	", "
.LC48:
	.string	">"
.LC49:
	.string	"["
.LC50:
	.string	"]"
.LC51:
	.string	"{"
.LC52:
	.string	"}"
.LC53:
	.string	"%s"
.LC54:
	.string	" ("
.LC55:
	.string	")"
	.align 4
.LC56:
	.string	"*** invalid data_header: 0x%x ***"
	.text
	.type	printValue, @function
printValue:
.LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$1, -16(%ebp)
	movl	$1, -24(%ebp)
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L122
	movl	8(%ebp), %eax
	sarl	%eax
	subl	$8, %esp
	pushl	%eax
	leal	.LC43@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	jmp	.L121
.L122:
	subl	$12, %esp
	pushl	8(%ebp)
	call	is_valid_heap_pointer@PLT
	addl	$16, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.L124
	subl	$8, %esp
	pushl	8(%ebp)
	leal	.LC44@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	jmp	.L121
.L124:
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$7, %eax
	je	.L125
	cmpl	$7, %eax
	jg	.L126
	cmpl	$5, %eax
	je	.L127
	cmpl	$5, %eax
	jg	.L126
	cmpl	$1, %eax
	je	.L128
	cmpl	$3, %eax
	je	.L129
	jmp	.L126
.L128:
	movl	-16(%ebp), %eax
	addl	$8, %eax
	subl	$8, %esp
	pushl	%eax
	leal	.LC45@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	jmp	.L121
.L125:
	subl	$12, %esp
	leal	.LC46@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	movl	$0, -24(%ebp)
	jmp	.L130
.L134:
	cmpl	$0, -24(%ebp)
	je	.L131
	movl	-16(%ebp), %eax
	leal	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	printValue
	addl	$16, %esp
	jmp	.L132
.L131:
	movl	-16(%ebp), %eax
	leal	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	leal	.LC44@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
.L132:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %eax
	cmpl	%eax, %edx
	je	.L133
	subl	$12, %esp
	leal	.LC47@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
.L133:
	addl	$1, -24(%ebp)
.L130:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	-24(%ebp), %edx
	cmpl	%eax, %edx
	jb	.L134
	subl	$12, %esp
	leal	.LC48@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	jmp	.L121
.L129:
	subl	$12, %esp
	leal	.LC49@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	movl	$0, -24(%ebp)
	jmp	.L135
.L137:
	movl	-16(%ebp), %eax
	leal	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	printValue
	addl	$16, %esp
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %eax
	cmpl	%eax, %edx
	je	.L136
	subl	$12, %esp
	leal	.LC47@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
.L136:
	addl	$1, -24(%ebp)
.L135:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	-24(%ebp), %edx
	cmpl	%eax, %edx
	jb	.L137
	subl	$12, %esp
	leal	.LC50@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	jmp	.L121
.L127:
	movl	8(%ebp), %eax
	subl	$16, %eax
	movl	4(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	de_hash
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	subl	$8, %esp
	leal	.LC8@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	-12(%ebp)
	call	strcmp@PLT
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L138
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	subl	$12, %esp
	leal	.LC51@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	jmp	.L139
.L142:
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	printValue
	addl	$16, %esp
	movl	-20(%ebp), %eax
	addl	$8, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L147
	subl	$12, %esp
	leal	.LC47@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	subl	$8, -20(%ebp)
.L139:
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	testl	%eax, %eax
	jne	.L142
	jmp	.L141
.L147:
	nop
.L141:
	subl	$12, %esp
	leal	.LC52@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	jmp	.L148
.L138:
	subl	$8, %esp
	pushl	-12(%ebp)
	leal	.LC53@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	testl	%eax, %eax
	je	.L148
	subl	$12, %esp
	leal	.LC54@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	movl	$0, -24(%ebp)
	jmp	.L144
.L146:
	movl	-16(%ebp), %eax
	leal	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	printValue
	addl	$16, %esp
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %eax
	cmpl	%eax, %edx
	je	.L145
	subl	$12, %esp
	leal	.LC47@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
.L145:
	addl	$1, -24(%ebp)
.L144:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	-24(%ebp), %edx
	cmpl	%eax, %edx
	jb	.L146
	subl	$12, %esp
	leal	.LC55@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	jmp	.L148
.L126:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	subl	$8, %esp
	pushl	%eax
	leal	.LC56@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	jmp	.L121
.L148:
	nop
.L121:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE33:
	.size	printValue, .-printValue
	.section	.rodata
	.align 4
.LC57:
	.string	"*** non-list data_header: %s ***"
	.text
	.type	stringcat, @function
stringcat:
.LFB34:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L161
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L151
	cmpl	$5, %eax
	je	.L152
	jmp	.L160
.L151:
	movl	-16(%ebp), %eax
	addl	$8, %eax
	subl	$8, %esp
	pushl	%eax
	leal	.LC53@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	jmp	.L150
.L152:
	movl	8(%ebp), %eax
	subl	$16, %eax
	movl	4(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	de_hash
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	subl	$8, %esp
	leal	.LC8@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	-12(%ebp)
	call	strcmp@PLT
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L154
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L155
.L158:
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	stringcat
	addl	$16, %esp
	movl	-20(%ebp), %eax
	addl	$8, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L162
	subl	$8, -20(%ebp)
.L155:
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	testl	%eax, %eax
	jne	.L158
	jmp	.L150
.L154:
	subl	$8, %esp
	pushl	-12(%ebp)
	leal	.LC57@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	jmp	.L150
.L162:
	nop
	jmp	.L150
.L160:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	subl	$8, %esp
	pushl	%eax
	leal	.LC56@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printStringBuf
	addl	$16, %esp
	jmp	.L161
.L150:
.L161:
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE34:
	.size	stringcat, .-stringcat
	.section	.rodata
.LC58:
	.string	"Luppercase:1"
	.text
	.globl	Luppercase
	.type	Luppercase, @function
Luppercase:
.LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L164
	subl	$8, %esp
	leal	.LC58@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L164:
	movl	8(%ebp), %eax
	sarl	%eax
	subl	$12, %esp
	pushl	%eax
	call	toupper@PLT
	addl	$16, %esp
	addl	%eax, %eax
	orl	$1, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE35:
	.size	Luppercase, .-Luppercase
	.section	.rodata
.LC59:
	.string	"Llowercase:1"
	.text
	.globl	Llowercase
	.type	Llowercase, @function
Llowercase:
.LFB36:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L167
	subl	$8, %esp
	leal	.LC59@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L167:
	movl	8(%ebp), %eax
	sarl	%eax
	subl	$12, %esp
	pushl	%eax
	call	tolower@PLT
	addl	$16, %esp
	addl	%eax, %eax
	orl	$1, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE36:
	.size	Llowercase, .-Llowercase
	.section	.rodata
.LC60:
	.string	"matchSubString:1"
.LC61:
	.string	"string value expected in %s\n"
.LC62:
	.string	"matchSubString:2"
.LC63:
	.string	"matchSubString:3"
	.text
	.globl	LmatchSubString
	.type	LmatchSubString, @function
LmatchSubString:
.LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L170
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L170
	subl	$8, %esp
	leal	.LC60@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L170:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L171
	movl	12(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L171
	subl	$8, %esp
	leal	.LC62@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L171:
	movl	16(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L172
	subl	$8, %esp
	leal	.LC63@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L172:
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	cmpl	%edx, %eax
	jnb	.L173
	movl	$1, %eax
	jmp	.L174
.L173:
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	sarl	%edx
	movl	%edx, %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	subl	$4, %esp
	pushl	%eax
	pushl	12(%ebp)
	pushl	%edx
	call	strncmp@PLT
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L175
	movl	$3, %eax
	jmp	.L174
.L175:
	movl	$1, %eax
.L174:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE37:
	.size	LmatchSubString, .-LmatchSubString
	.section	.rodata
.LC64:
	.string	"substring:1"
.LC65:
	.string	"substring:2"
.LC66:
	.string	"substring:3"
	.align 4
.LC67:
	.string	"substring: index out of bounds (position=%d, length=%d,             subject length=%d)"
	.text
	.globl	Lsubstring
	.type	Lsubstring, @function
Lsubstring:
.LFB38:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	-60(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	sarl	%eax
	movl	%eax, -40(%ebp)
	movl	16(%ebp), %eax
	sarl	%eax
	movl	%eax, -36(%ebp)
	movl	%ebp, %eax
	movl	%eax, -48(%ebp)
	movl	%ebp, %eax
	movl	-48(%ebp), %edx
	cmpl	%edx, %eax
	je	.L178
	leal	__PRETTY_FUNCTION__.13@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$511
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L178:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L179
	movl	-48(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-48(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-48(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-48(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L179:
	movl	-60(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L180
	movl	-60(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L180
	subl	$8, %esp
	leal	.LC64@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L180:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L181
	subl	$8, %esp
	leal	.LC65@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L181:
	movl	16(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L182
	subl	$8, %esp
	leal	.LC66@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L182:
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	cmpl	%edx, %eax
	jb	.L183
	subl	$12, %esp
	leal	-60(%ebp), %eax
	pushl	%eax
	call	push_extra_root@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	-36(%ebp)
	call	alloc_string@PLT
	addl	$16, %esp
	movl	%eax, -32(%ebp)
	subl	$12, %esp
	leal	-60(%ebp), %eax
	pushl	%eax
	call	pop_extra_root@PLT
	addl	$16, %esp
	movl	-36(%ebp), %eax
	movl	-60(%ebp), %ecx
	movl	-40(%ebp), %edx
	addl	%edx, %ecx
	movl	-32(%ebp), %edx
	addl	$8, %edx
	subl	$4, %esp
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	call	strncpy@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L184
	leal	__PRETTY_FUNCTION__.13@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$526
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L184:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	cmpl	%eax, %edx
	je	.L185
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-48(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L186
.L185:
	movl	-48(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L187
.L186:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L188
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-48(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.13@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$526
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L188:
	movl	%ebp, %edi
	movl	-48(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-48(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L187:
	movl	-32(%ebp), %eax
	addl	$8, %eax
	jmp	.L177
.L183:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	pushl	%eax
	pushl	-36(%ebp)
	pushl	-40(%ebp)
	leal	.LC67@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L177:
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L190
	call	__stack_chk_fail_local
.L190:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE38:
	.size	Lsubstring, .-Lsubstring
	.section	.rodata
.LC68:
	.string	"%"
	.text
	.globl	Lregexp
	.type	Lregexp, @function
Lregexp:
.LFB39:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	pushl	$32
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, -16(%ebp)
	subl	$4, %esp
	pushl	$32
	pushl	$0
	pushl	-16(%ebp)
	call	memset@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	8(%ebp)
	call	strlen@PLT
	addl	$16, %esp
	subl	$4, %esp
	pushl	-16(%ebp)
	pushl	%eax
	pushl	8(%ebp)
	call	re_compile_pattern@PLT
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L192
	subl	$12, %esp
	pushl	-12(%ebp)
	call	strerror@PLT
	addl	$16, %esp
	subl	$8, %esp
	pushl	%eax
	leal	.LC68@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L192:
	movl	-16(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE39:
	.size	Lregexp, .-Lregexp
	.section	.rodata
.LC69:
	.string	"regexpMatch:1"
.LC70:
	.string	"regexpMatch:2"
.LC71:
	.string	"regexpMatch:3"
	.text
	.globl	LregexpMatch
	.type	LregexpMatch, @function
LregexpMatch:
.LFB40:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L195
	subl	$8, %esp
	leal	.LC69@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L195:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L196
	movl	12(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L196
	subl	$8, %esp
	leal	.LC70@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L196:
	movl	16(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L197
	subl	$8, %esp
	leal	.LC71@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L197:
	movl	16(%ebp), %eax
	sarl	%eax
	movl	12(%ebp), %edx
	subl	$8, %edx
	movl	(%edx), %edx
	shrl	$3, %edx
	subl	$12, %esp
	pushl	$0
	pushl	%eax
	pushl	%edx
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	re_match@PLT
	addl	$32, %esp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L198
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
	jmp	.L199
.L198:
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
.L199:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE40:
	.size	LregexpMatch, .-LregexpMatch
	.section	.rodata
	.align 4
.LC72:
	.string	"invalid data_header %d in clone *****\n"
	.text
	.globl	Lclone
	.type	Lclone, @function
Lclone:
.LFB41:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	%ebp, %eax
	movl	%eax, -56(%ebp)
	movl	%ebp, %eax
	movl	-56(%ebp), %edx
	cmpl	%edx, %eax
	je	.L201
	leal	__PRETTY_FUNCTION__.12@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$574
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L201:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L202
	movl	-56(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-56(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-56(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-56(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L202:
	movl	-60(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L203
	movl	-60(%ebp), %eax
	jmp	.L216
.L203:
	movl	-60(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	%eax, -40(%ebp)
	subl	$12, %esp
	leal	-60(%ebp), %eax
	pushl	%eax
	call	push_extra_root@PLT
	addl	$16, %esp
	cmpl	$7, -44(%ebp)
	je	.L205
	cmpl	$7, -44(%ebp)
	jg	.L206
	cmpl	$5, -44(%ebp)
	je	.L207
	cmpl	$5, -44(%ebp)
	jg	.L206
	cmpl	$1, -44(%ebp)
	je	.L208
	cmpl	$3, -44(%ebp)
	je	.L209
	jmp	.L206
.L208:
	movl	-60(%ebp), %eax
	subl	$8, %eax
	addl	$8, %eax
	subl	$12, %esp
	pushl	%eax
	call	Bstring
	addl	$16, %esp
	movl	%eax, -52(%ebp)
	jmp	.L210
.L209:
	subl	$12, %esp
	pushl	-40(%ebp)
	call	alloc_array@PLT
	addl	$16, %esp
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	array_size@PLT
	addl	$16, %esp
	movl	-60(%ebp), %edx
	subl	$8, %edx
	subl	$4, %esp
	pushl	%eax
	pushl	%edx
	pushl	-36(%ebp)
	call	memcpy@PLT
	addl	$16, %esp
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -52(%ebp)
	jmp	.L210
.L205:
	subl	$12, %esp
	pushl	-40(%ebp)
	call	alloc_closure@PLT
	addl	$16, %esp
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	closure_size@PLT
	addl	$16, %esp
	movl	-60(%ebp), %edx
	subl	$8, %edx
	subl	$4, %esp
	pushl	%eax
	pushl	%edx
	pushl	-36(%ebp)
	call	memcpy@PLT
	addl	$16, %esp
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -52(%ebp)
	jmp	.L210
.L207:
	subl	$12, %esp
	pushl	-40(%ebp)
	call	alloc_sexp@PLT
	addl	$16, %esp
	movl	%eax, -32(%ebp)
	movl	-40(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	sexp_size@PLT
	addl	$16, %esp
	movl	-60(%ebp), %edx
	subl	$16, %edx
	subl	$4, %esp
	pushl	%eax
	pushl	%edx
	pushl	-32(%ebp)
	call	memcpy@PLT
	addl	$16, %esp
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -52(%ebp)
	jmp	.L210
.L206:
	subl	$8, %esp
	pushl	-44(%ebp)
	leal	.LC72@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L210:
	subl	$12, %esp
	leal	-60(%ebp), %eax
	pushl	%eax
	call	pop_extra_root@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L211
	leal	__PRETTY_FUNCTION__.12@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$645
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L211:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	cmpl	%eax, %edx
	je	.L212
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-56(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L213
.L212:
	movl	-56(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L214
.L213:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L215
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-56(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.12@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$645
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L215:
	movl	%ebp, %edi
	movl	-56(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-56(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L214:
	movl	-52(%ebp), %eax
.L216:
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L217
	call	__stack_chk_fail_local
.L217:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE41:
	.size	Lclone, .-Lclone
	.section	.rodata
	.align 4
.LC73:
	.string	"invalid data_header %d in hash *****\n"
	.text
	.globl	inner_hash
	.type	inner_hash, @function
inner_hash:
.LFB42:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	cmpl	$3, 8(%ebp)
	jle	.L219
	movl	12(%ebp), %eax
	jmp	.L220
.L219:
	movl	16(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L221
	movl	16(%ebp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	roll	$16, %eax
	jmp	.L220
.L221:
	subl	$12, %esp
	pushl	16(%ebp)
	call	is_valid_heap_pointer@PLT
	addl	$16, %esp
	testb	%al, %al
	je	.L222
	movl	16(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	roll	$16, %eax
	movl	%eax, 12(%ebp)
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	roll	$16, %eax
	movl	%eax, 12(%ebp)
	cmpl	$7, -24(%ebp)
	je	.L223
	cmpl	$7, -24(%ebp)
	jg	.L224
	cmpl	$5, -24(%ebp)
	je	.L225
	cmpl	$5, -24(%ebp)
	jg	.L224
	cmpl	$1, -24(%ebp)
	je	.L226
	cmpl	$3, -24(%ebp)
	je	.L227
	jmp	.L224
.L226:
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -32(%ebp)
	jmp	.L228
.L229:
	movl	-32(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -32(%ebp)
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	roll	$16, %eax
	movl	%eax, 12(%ebp)
.L228:
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L229
	movl	12(%ebp), %eax
	jmp	.L220
.L223:
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	roll	$16, %eax
	movl	%eax, 12(%ebp)
	movl	$1, -36(%ebp)
	jmp	.L230
.L227:
	movl	$0, -36(%ebp)
	jmp	.L230
.L225:
	movl	16(%ebp), %eax
	subl	$16, %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	roll	$16, %eax
	movl	%eax, 12(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L230
.L224:
	subl	$8, %esp
	pushl	-24(%ebp)
	leal	.LC73@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L230:
	jmp	.L231
.L232:
	movl	-28(%ebp), %eax
	leal	8(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	addl	$1, %edx
	subl	$4, %esp
	pushl	%eax
	pushl	12(%ebp)
	pushl	%edx
	call	inner_hash
	addl	$16, %esp
	movl	%eax, 12(%ebp)
	addl	$1, -36(%ebp)
.L231:
	movl	-36(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L232
	movl	12(%ebp), %eax
	jmp	.L220
.L222:
	movl	16(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	roll	$16, %eax
.L220:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE42:
	.size	inner_hash, .-inner_hash
	.globl	LstringInt
	.type	LstringInt, @function
LstringInt:
.LFB43:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %edx
	movl	%edx, -28(%ebp)
	movl	%gs:20, %edx
	movl	%edx, -12(%ebp)
	xorl	%edx, %edx
	subl	$4, %esp
	leal	-16(%ebp), %edx
	pushl	%edx
	leal	.LC43@GOTOFF(%eax), %edx
	pushl	%edx
	pushl	-28(%ebp)
	movl	%eax, %ebx
	call	__isoc99_sscanf@PLT
	addl	$16, %esp
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
	movl	-12(%ebp), %edx
	subl	%gs:20, %edx
	je	.L235
	call	__stack_chk_fail_local
.L235:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE43:
	.size	LstringInt, .-LstringInt
	.globl	Lhash
	.type	Lhash, @function
Lhash:
.LFB44:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$4, %esp
	pushl	8(%ebp)
	pushl	$0
	pushl	$0
	call	inner_hash
	addl	$16, %esp
	addl	%eax, %eax
	andl	$8388606, %eax
	orl	$1, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE44:
	.size	Lhash, .-Lhash
	.globl	LflatCompare
	.type	LflatCompare, @function
LflatCompare:
.LFB45:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L239
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L240
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	sarl	%eax
	subl	%eax, %edx
	leal	(%edx,%edx), %eax
	orl	$1, %eax
	jmp	.L241
.L240:
	movl	$-1, %eax
	jmp	.L241
.L239:
	movl	8(%ebp), %eax
	subl	12(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
.L241:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE45:
	.size	LflatCompare, .-LflatCompare
	.section	.rodata
	.align 4
.LC74:
	.string	"invalid data_header %d in compare *****\n"
	.text
	.globl	Lcompare
	.type	Lcompare, @function
Lcompare:
.LFB46:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L243
	movl	$1, %eax
	jmp	.L244
.L243:
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L245
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L246
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	sarl	%eax
	subl	%eax, %edx
	leal	(%edx,%edx), %eax
	orl	$1, %eax
	jmp	.L244
.L246:
	movl	$-1, %eax
	jmp	.L244
.L245:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L247
	movl	$3, %eax
	jmp	.L244
.L247:
	subl	$12, %esp
	pushl	8(%ebp)
	call	is_valid_heap_pointer@PLT
	addl	$16, %esp
	testb	%al, %al
	je	.L248
	subl	$12, %esp
	pushl	12(%ebp)
	call	is_valid_heap_pointer@PLT
	addl	$16, %esp
	testb	%al, %al
	je	.L249
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	movl	%eax, -32(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	%eax, -28(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	%eax, -24(%ebp)
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L250
	movl	-36(%ebp), %eax
	subl	-32(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
	jmp	.L244
.L250:
	cmpl	$7, -36(%ebp)
	je	.L251
	cmpl	$7, -36(%ebp)
	jg	.L252
	cmpl	$5, -36(%ebp)
	je	.L253
	cmpl	$5, -36(%ebp)
	jg	.L252
	cmpl	$1, -36(%ebp)
	je	.L254
	cmpl	$3, -36(%ebp)
	je	.L255
	jmp	.L252
.L254:
	movl	-40(%ebp), %eax
	leal	8(%eax), %edx
	movl	-44(%ebp), %eax
	addl	$8, %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	call	strcmp@PLT
	addl	$16, %esp
	addl	%eax, %eax
	orl	$1, %eax
	jmp	.L244
.L251:
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L256
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	leal	(%edx,%edx), %eax
	orl	$1, %eax
	jmp	.L244
.L256:
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L257
	movl	-28(%ebp), %eax
	subl	-24(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
	jmp	.L244
.L257:
	movl	$1, -48(%ebp)
	jmp	.L258
.L255:
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L259
	movl	-28(%ebp), %eax
	subl	-24(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
	jmp	.L244
.L259:
	movl	$0, -48(%ebp)
	jmp	.L258
.L253:
	movl	8(%ebp), %eax
	subl	$16, %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	subl	$16, %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L260
	movl	-20(%ebp), %eax
	subl	-16(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
	jmp	.L244
.L260:
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L261
	movl	-28(%ebp), %eax
	subl	-24(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
	jmp	.L244
.L261:
	movl	$0, -48(%ebp)
	jmp	.L258
.L252:
	subl	$8, %esp
	pushl	-36(%ebp)
	leal	.LC74@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L258:
	jmp	.L262
.L264:
	movl	-40(%ebp), %eax
	leal	8(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	leal	8(%eax), %ecx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	addl	%ecx, %eax
	movl	(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	call	Lcompare
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	cmpl	$1, -12(%ebp)
	je	.L263
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
	jmp	.L244
.L263:
	addl	$1, -48(%ebp)
.L262:
	movl	-48(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jl	.L264
	movl	$1, %eax
	jmp	.L244
.L249:
	movl	$-1, %eax
	jmp	.L244
.L248:
	subl	$12, %esp
	pushl	12(%ebp)
	call	is_valid_heap_pointer@PLT
	addl	$16, %esp
	testb	%al, %al
	je	.L265
	movl	$3, %eax
	jmp	.L244
.L265:
	movl	8(%ebp), %eax
	subl	12(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
.L244:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE46:
	.size	Lcompare, .-Lcompare
	.section	.rodata
.LC75:
	.string	".elem:1"
.LC76:
	.string	".elem:2"
	.text
	.globl	Belem
	.type	Belem, @function
Belem:
.LFB47:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$1, -12(%ebp)
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L267
	subl	$8, %esp
	leal	.LC75@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L267:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L268
	subl	$8, %esp
	leal	.LC76@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L268:
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -12(%ebp)
	sarl	12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.L269
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	addl	%eax, %eax
	orl	$1, %eax
	jmp	.L270
.L269:
	movl	-12(%ebp), %eax
	leal	8(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	(%eax), %eax
.L270:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE47:
	.size	Belem, .-Belem
	.section	.rodata
.LC77:
	.string	"makeArray:1"
	.text
	.globl	LmakeArray
	.type	LmakeArray, @function
LmakeArray:
.LFB48:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	%ebp, %eax
	movl	%eax, -44(%ebp)
	movl	%ebp, %eax
	movl	-44(%ebp), %edx
	cmpl	%edx, %eax
	je	.L272
	leal	__PRETTY_FUNCTION__.11@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$808
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L272:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L273
	movl	-44(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-44(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-44(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-44(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L273:
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L274
	subl	$8, %esp
	leal	.LC77@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L274:
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, -40(%ebp)
	subl	$12, %esp
	pushl	-40(%ebp)
	call	alloc_array@PLT
	addl	$16, %esp
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -36(%ebp)
	jmp	.L275
.L276:
	movl	-36(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	$1, (%eax)
.L275:
	movl	-40(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -40(%ebp)
	testl	%eax, %eax
	jne	.L276
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L277
	leal	__PRETTY_FUNCTION__.11@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$818
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L277:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	cmpl	%eax, %edx
	je	.L278
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-44(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L279
.L278:
	movl	-44(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L280
.L279:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L281
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-44(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.11@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$818
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L281:
	movl	%ebp, %edi
	movl	-44(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-44(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L280:
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L283
	call	__stack_chk_fail_local
.L283:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE48:
	.size	LmakeArray, .-LmakeArray
	.section	.rodata
.LC78:
	.string	"makeString"
	.text
	.globl	LmakeString
	.type	LmakeString, @function
LmakeString:
.LFB49:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, -36(%ebp)
	movl	%ebp, %eax
	movl	%eax, -40(%ebp)
	movl	%ebp, %eax
	movl	-40(%ebp), %edx
	cmpl	%edx, %eax
	je	.L285
	leal	__PRETTY_FUNCTION__.10@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$825
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L285:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L286
	movl	-40(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-40(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-40(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-40(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L286:
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L287
	subl	$8, %esp
	leal	.LC78@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L287:
	subl	$12, %esp
	pushl	-36(%ebp)
	call	alloc_string@PLT
	addl	$16, %esp
	movl	%eax, -32(%ebp)
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L288
	leal	__PRETTY_FUNCTION__.10@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$830
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L288:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	cmpl	%eax, %edx
	je	.L289
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-40(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L290
.L289:
	movl	-40(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L291
.L290:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L292
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-40(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.10@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$830
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L292:
	movl	%ebp, %edi
	movl	-40(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-40(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L291:
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L294
	call	__stack_chk_fail_local
.L294:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE49:
	.size	LmakeString, .-LmakeString
	.globl	Bstring
	.type	Bstring, @function
Bstring:
.LFB50:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	-44(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	strlen@PLT
	addl	$16, %esp
	movl	%eax, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	%ebp, %eax
	movl	%eax, -40(%ebp)
	movl	%ebp, %eax
	movl	-40(%ebp), %edx
	cmpl	%edx, %eax
	je	.L296
	leal	__PRETTY_FUNCTION__.9@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$837
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L296:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L297
	movl	-40(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-40(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-40(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-40(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L297:
	subl	$12, %esp
	leal	-44(%ebp), %eax
	pushl	%eax
	call	push_extra_root@PLT
	addl	$16, %esp
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
	subl	$12, %esp
	pushl	%eax
	call	LmakeString
	addl	$16, %esp
	movl	%eax, -32(%ebp)
	subl	$12, %esp
	leal	-44(%ebp), %eax
	pushl	%eax
	call	pop_extra_root@PLT
	addl	$16, %esp
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	-44(%ebp), %eax
	movl	-32(%ebp), %edx
	subl	$8, %edx
	addl	$8, %edx
	subl	$4, %esp
	pushl	%ecx
	pushl	%eax
	pushl	%edx
	call	strncpy@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L298
	leal	__PRETTY_FUNCTION__.9@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$860
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L298:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	cmpl	%eax, %edx
	je	.L299
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-40(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L300
.L299:
	movl	-40(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L301
.L300:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L302
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-40(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.9@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$860
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L302:
	movl	%ebp, %edi
	movl	-40(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-40(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L301:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L304
	call	__stack_chk_fail_local
.L304:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE50:
	.size	Bstring, .-Bstring
	.globl	Lstringcat
	.type	Lstringcat, @function
Lstringcat:
.LFB51:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	%ebp, %eax
	movl	%eax, -36(%ebp)
	movl	%ebp, %eax
	movl	-36(%ebp), %edx
	cmpl	%edx, %eax
	je	.L306
	leal	__PRETTY_FUNCTION__.8@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$866
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L306:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L307
	movl	-36(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-36(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-36(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-36(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L307:
	call	createStringBuf
	movl	-44(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	stringcat
	addl	$16, %esp
	subl	$12, %esp
	leal	-44(%ebp), %eax
	pushl	%eax
	call	push_extra_root@PLT
	addl	$16, %esp
	movl	stringBuf@GOTOFF(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	Bstring
	addl	$16, %esp
	movl	%eax, -32(%ebp)
	subl	$12, %esp
	leal	-44(%ebp), %eax
	pushl	%eax
	call	pop_extra_root@PLT
	addl	$16, %esp
	call	deleteStringBuf
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L308
	leal	__PRETTY_FUNCTION__.8@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$878
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L308:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	cmpl	%eax, %edx
	je	.L309
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-36(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L310
.L309:
	movl	-36(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L311
.L310:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L312
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-36(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.8@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$878
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L312:
	movl	%ebp, %edi
	movl	-36(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-36(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L311:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L314
	call	__stack_chk_fail_local
.L314:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE51:
	.size	Lstringcat, .-Lstringcat
	.globl	Lstring
	.type	Lstring, @function
Lstring:
.LFB52:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	$1, -32(%ebp)
	movl	%ebp, %eax
	movl	%eax, -36(%ebp)
	movl	%ebp, %eax
	movl	-36(%ebp), %edx
	cmpl	%edx, %eax
	je	.L316
	leal	__PRETTY_FUNCTION__.7@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$884
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L316:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L317
	movl	-36(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-36(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-36(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-36(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L317:
	call	createStringBuf
	movl	-44(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	printValue
	addl	$16, %esp
	subl	$12, %esp
	leal	-44(%ebp), %eax
	pushl	%eax
	call	push_extra_root@PLT
	addl	$16, %esp
	movl	stringBuf@GOTOFF(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	Bstring
	addl	$16, %esp
	movl	%eax, -32(%ebp)
	subl	$12, %esp
	leal	-44(%ebp), %eax
	pushl	%eax
	call	pop_extra_root@PLT
	addl	$16, %esp
	call	deleteStringBuf
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L318
	leal	__PRETTY_FUNCTION__.7@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$895
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L318:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	cmpl	%eax, %edx
	je	.L319
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-36(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L320
.L319:
	movl	-36(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L321
.L320:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L322
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-36(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.7@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$895
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L322:
	movl	%ebp, %edi
	movl	-36(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-36(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L321:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L324
	call	__stack_chk_fail_local
.L324:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE52:
	.size	Lstring, .-Lstring
	.globl	Bclosure
	.type	Bclosure, @function
Bclosure:
.LFB53:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, -40(%ebp)
	movl	%ebp, %eax
	movl	%eax, -52(%ebp)
	movl	%ebp, %eax
	movl	-52(%ebp), %edx
	cmpl	%edx, %eax
	je	.L326
	leal	__PRETTY_FUNCTION__.6@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$905
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L326:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L327
	movl	-52(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-52(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-52(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-52(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L327:
	movl	%ebp, %eax
	addl	$48, %eax
	movl	%eax, -44(%ebp)
	movl	$0, -48(%ebp)
	jmp	.L328
.L329:
	subl	$12, %esp
	pushl	-44(%ebp)
	call	push_extra_root@PLT
	addl	$16, %esp
	addl	$1, -48(%ebp)
	addl	$4, -44(%ebp)
.L328:
	movl	-48(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L329
	movl	-40(%ebp), %eax
	addl	$1, %eax
	subl	$12, %esp
	pushl	%eax
	call	alloc_closure@PLT
	addl	$16, %esp
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	leal	8(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%edx)
	leal	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	$0, -48(%ebp)
	jmp	.L330
.L331:
	movl	-56(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -56(%ebp)
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	leal	8(%eax), %edx
	movl	-48(%ebp), %eax
	addl	$1, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -48(%ebp)
.L330:
	movl	-48(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L331
	subl	$4, -44(%ebp)
	movl	$0, -48(%ebp)
	jmp	.L332
.L333:
	subl	$12, %esp
	pushl	-44(%ebp)
	call	pop_extra_root@PLT
	addl	$16, %esp
	addl	$1, -48(%ebp)
	subl	$4, -44(%ebp)
.L332:
	movl	-48(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L333
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L334
	leal	__PRETTY_FUNCTION__.6@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$937
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L334:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	cmpl	%eax, %edx
	je	.L335
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-52(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L336
.L335:
	movl	-52(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L337
.L336:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L338
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-52(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.6@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$937
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L338:
	movl	%ebp, %edi
	movl	-52(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-52(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L337:
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L340
	call	__stack_chk_fail_local
.L340:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE53:
	.size	Bclosure, .-Bclosure
	.globl	Barray
	.type	Barray, @function
Barray:
.LFB54:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, -40(%ebp)
	movl	%ebp, %eax
	movl	%eax, -52(%ebp)
	movl	%ebp, %eax
	movl	-52(%ebp), %edx
	cmpl	%edx, %eax
	je	.L342
	leal	__PRETTY_FUNCTION__.5@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$947
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L342:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L343
	movl	-52(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-52(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-52(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-52(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L343:
	movl	%ebp, %eax
	addl	$32, %eax
	movl	%eax, -44(%ebp)
	movl	$0, -48(%ebp)
	jmp	.L344
.L345:
	subl	$12, %esp
	pushl	-44(%ebp)
	call	push_extra_root@PLT
	addl	$16, %esp
	addl	$1, -48(%ebp)
	addl	$4, -44(%ebp)
.L344:
	movl	-48(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L345
	subl	$12, %esp
	pushl	-40(%ebp)
	call	alloc_array@PLT
	addl	$16, %esp
	movl	%eax, -36(%ebp)
	leal	12(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	$0, -48(%ebp)
	jmp	.L346
.L347:
	movl	-56(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -56(%ebp)
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	leal	8(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -48(%ebp)
.L346:
	movl	-48(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L347
	subl	$4, -44(%ebp)
	movl	$0, -48(%ebp)
	jmp	.L348
.L349:
	subl	$12, %esp
	pushl	-44(%ebp)
	call	pop_extra_root@PLT
	addl	$16, %esp
	addl	$1, -48(%ebp)
	subl	$4, -44(%ebp)
.L348:
	movl	-48(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L349
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L350
	leal	__PRETTY_FUNCTION__.5@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$976
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L350:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	cmpl	%eax, %edx
	je	.L351
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-52(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L352
.L351:
	movl	-52(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L353
.L352:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L354
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-52(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.5@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$976
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L354:
	movl	%ebp, %edi
	movl	-52(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-52(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L353:
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L356
	call	__stack_chk_fail_local
.L356:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE54:
	.size	Barray, .-Barray
	.globl	Bsexp
	.type	Bsexp, @function
Bsexp:
.LFB55:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, -52(%ebp)
	movl	%ebp, %eax
	movl	%eax, -64(%ebp)
	movl	%ebp, %eax
	movl	-64(%ebp), %edx
	cmpl	%edx, %eax
	je	.L358
	leal	__PRETTY_FUNCTION__.4@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$993
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L358:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L359
	movl	-64(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-64(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-64(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-64(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L359:
	movl	%ebp, %eax
	addl	$32, %eax
	movl	%eax, -56(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L360
.L361:
	subl	$12, %esp
	pushl	-56(%ebp)
	call	push_extra_root@PLT
	addl	$16, %esp
	addl	$1, -60(%ebp)
	addl	$4, -56(%ebp)
.L360:
	movl	-60(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	.L361
	movl	-52(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	subl	$12, %esp
	pushl	-48(%ebp)
	call	alloc_sexp@PLT
	addl	$16, %esp
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	$0, 4(%eax)
	leal	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L362
.L363:
	movl	-68(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -68(%ebp)
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-40(%ebp), %eax
	leal	8(%eax), %edx
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -60(%ebp)
.L362:
	movl	-52(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, -60(%ebp)
	jl	.L363
	movl	-68(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -68(%ebp)
	movl	(%eax), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 4(%eax)
	subl	$4, -56(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L364
.L365:
	subl	$12, %esp
	pushl	-56(%ebp)
	call	pop_extra_root@PLT
	addl	$16, %esp
	addl	$1, -60(%ebp)
	subl	$4, -56(%ebp)
.L364:
	movl	-60(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	.L365
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L366
	leal	__PRETTY_FUNCTION__.4@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1037
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L366:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	cmpl	%eax, %edx
	je	.L367
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-64(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L368
.L367:
	movl	-64(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L369
.L368:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L370
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-64(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.4@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1037
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L370:
	movl	%ebp, %edi
	movl	-64(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-64(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L369:
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L372
	call	__stack_chk_fail_local
.L372:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE55:
	.size	Bsexp, .-Bsexp
	.globl	Btag
	.type	Btag, @function
Btag:
.LFB56:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L374
	movl	$1, %eax
	jmp	.L375
.L374:
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	.L376
	movl	8(%ebp), %eax
	subl	$16, %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	sarl	%eax
	cmpl	%eax, %edx
	jne	.L376
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	sarl	%eax
	cmpl	%eax, %edx
	jne	.L376
	movl	$1, %eax
	jmp	.L377
.L376:
	movl	$0, %eax
.L377:
	addl	%eax, %eax
	orl	$1, %eax
.L375:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE56:
	.size	Btag, .-Btag
	.globl	get_tag
	.type	get_tag, @function
get_tag:
.LFB57:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE57:
	.size	get_tag, .-get_tag
	.globl	get_len
	.type	get_len, @function
get_len:
.LFB58:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE58:
	.size	get_len, .-get_len
	.globl	Barray_patt
	.type	Barray_patt, @function
Barray_patt:
.LFB59:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L383
	movl	$1, %eax
	jmp	.L384
.L383:
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -4(%ebp)
	pushl	-4(%ebp)
	call	get_tag
	addl	$4, %esp
	cmpl	$3, %eax
	jne	.L385
	pushl	-4(%ebp)
	call	get_len
	addl	$4, %esp
	movl	12(%ebp), %edx
	sarl	%edx
	cmpl	%edx, %eax
	jne	.L385
	movl	$1, %eax
	jmp	.L386
.L385:
	movl	$0, %eax
.L386:
	addl	%eax, %eax
	orl	$1, %eax
.L384:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE59:
	.size	Barray_patt, .-Barray_patt
	.section	.rodata
.LC79:
	.string	".string_patt:2"
	.text
	.globl	Bstring_patt
	.type	Bstring_patt, @function
Bstring_patt:
.LFB60:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$1, -16(%ebp)
	movl	$1, -12(%ebp)
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L388
	movl	12(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L388
	subl	$8, %esp
	leal	.LC79@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L388:
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L389
	movl	$1, %eax
	jmp	.L390
.L389:
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L391
	movl	$1, %eax
	jmp	.L390
.L391:
	movl	-12(%ebp), %eax
	leal	8(%eax), %edx
	movl	-16(%ebp), %eax
	addl	$8, %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	call	strcmp@PLT
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L392
	movl	$3, %eax
	jmp	.L390
.L392:
	movl	$1, %eax
.L390:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE60:
	.size	Bstring_patt, .-Bstring_patt
	.globl	Bclosure_tag_patt
	.type	Bclosure_tag_patt, @function
Bclosure_tag_patt:
.LFB61:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L395
	movl	$1, %eax
	jmp	.L396
.L395:
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$7, %eax
	jne	.L397
	movl	$3, %eax
	jmp	.L396
.L397:
	movl	$1, %eax
.L396:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE61:
	.size	Bclosure_tag_patt, .-Bclosure_tag_patt
	.globl	Bboxed_patt
	.type	Bboxed_patt, @function
Bboxed_patt:
.LFB62:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L400
	movl	$3, %eax
	jmp	.L402
.L400:
	movl	$1, %eax
.L402:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE62:
	.size	Bboxed_patt, .-Bboxed_patt
	.globl	Bunboxed_patt
	.type	Bunboxed_patt, @function
Bunboxed_patt:
.LFB63:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	addl	%eax, %eax
	andl	$2, %eax
	orl	$1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE63:
	.size	Bunboxed_patt, .-Bunboxed_patt
	.globl	Barray_tag_patt
	.type	Barray_tag_patt, @function
Barray_tag_patt:
.LFB64:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L406
	movl	$1, %eax
	jmp	.L407
.L406:
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$3, %eax
	jne	.L408
	movl	$3, %eax
	jmp	.L407
.L408:
	movl	$1, %eax
.L407:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE64:
	.size	Barray_tag_patt, .-Barray_tag_patt
	.globl	Bstring_tag_patt
	.type	Bstring_tag_patt, @function
Bstring_tag_patt:
.LFB65:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L411
	movl	$1, %eax
	jmp	.L412
.L411:
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.L413
	movl	$3, %eax
	jmp	.L412
.L413:
	movl	$1, %eax
.L412:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE65:
	.size	Bstring_tag_patt, .-Bstring_tag_patt
	.globl	Bsexp_tag_patt
	.type	Bsexp_tag_patt, @function
Bsexp_tag_patt:
.LFB66:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L416
	movl	$1, %eax
	jmp	.L417
.L416:
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	.L418
	movl	$3, %eax
	jmp	.L417
.L418:
	movl	$1, %eax
.L417:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE66:
	.size	Bsexp_tag_patt, .-Bsexp_tag_patt
	.section	.rodata
.LC80:
	.string	".sta:3"
	.text
	.globl	Bsta
	.type	Bsta, @function
Bsta:
.LFB67:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	12(%ebp), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L421
	movl	16(%ebp), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L422
	subl	$8, %esp
	leal	.LC80@GOTOFF(%eax), %edx
	pushl	%edx
	leal	.LC2@GOTOFF(%eax), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L422:
	movl	16(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.L423
	movl	8(%ebp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	sarl	%eax
	movl	%eax, %ecx
	movl	16(%ebp), %eax
	addl	%ecx, %eax
	movb	%dl, (%eax)
	jmp	.L424
.L423:
	movl	12(%ebp), %eax
	sarl	%eax
	leal	0(,%eax,4), %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
.L424:
	movl	8(%ebp), %eax
	jmp	.L425
.L421:
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
.L425:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE67:
	.size	Bsta, .-Bsta
	.type	fix_unboxed, @function
fix_unboxed:
.LFB68:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L427
.L430:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	.L428
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L429
	movl	-4(%ebp), %eax
	sarl	%eax
	movl	%eax, %ecx
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	%ecx, %edx
	movl	%edx, (%eax)
.L429:
	addl	$1, -12(%ebp)
.L428:
	addl	$1, 8(%ebp)
.L427:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L430
	nop
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE68:
	.size	fix_unboxed, .-fix_unboxed
	.globl	Lfailure
	.type	Lfailure, @function
Lfailure:
.LFB69:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	pushl	%eax
	pushl	-28(%ebp)
	call	fix_unboxed
	addl	$8, %esp
	movl	-16(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-28(%ebp)
	call	vfailure
	addl	$16, %esp
	nop
	movl	-12(%ebp), %eax
	subl	%gs:20, %eax
	je	.L432
	call	__stack_chk_fail_local
.L432:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE69:
	.size	Lfailure, .-Lfailure
	.section	.rodata
	.align 4
.LC81:
	.string	"match failure at %s:%d:%d, value '%s'\n"
	.text
	.globl	Bmatch_failure
	.type	Bmatch_failure, @function
Bmatch_failure:
.LFB70:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	call	createStringBuf
	subl	$12, %esp
	pushl	8(%ebp)
	call	printValue
	addl	$16, %esp
	movl	stringBuf@GOTOFF(%ebx), %eax
	movl	20(%ebp), %edx
	movl	%edx, %ecx
	sarl	%ecx
	movl	16(%ebp), %edx
	sarl	%edx
	subl	$12, %esp
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	pushl	12(%ebp)
	leal	.LC81@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$32, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE70:
	.size	Bmatch_failure, .-Bmatch_failure
	.section	.rodata
.LC82:
	.string	"++:1"
.LC83:
	.string	"++:2"
	.text
	.globl	Li__Infix_4343
	.type	Li__Infix_4343, @function
Li__Infix_4343:
.LFB71:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	$1, -40(%ebp)
	movl	$1, -36(%ebp)
	movl	$1, -32(%ebp)
	movl	%ebp, %eax
	movl	%eax, -44(%ebp)
	movl	%ebp, %eax
	movl	-44(%ebp), %edx
	cmpl	%edx, %eax
	je	.L435
	leal	__PRETTY_FUNCTION__.3@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1170
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L435:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L436
	movl	-44(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-44(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-44(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-44(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L436:
	movl	-60(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L437
	movl	-60(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L437
	subl	$8, %esp
	leal	.LC82@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L437:
	movl	-64(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L438
	movl	-64(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L438
	subl	$8, %esp
	leal	.LC83@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L438:
	movl	-60(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -40(%ebp)
	movl	-64(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -36(%ebp)
	subl	$12, %esp
	leal	-60(%ebp), %eax
	pushl	%eax
	call	push_extra_root@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	-64(%ebp), %eax
	pushl	%eax
	call	push_extra_root@PLT
	addl	$16, %esp
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	addl	%edx, %eax
	subl	$12, %esp
	pushl	%eax
	call	alloc_string@PLT
	addl	$16, %esp
	movl	%eax, -32(%ebp)
	subl	$12, %esp
	leal	-64(%ebp), %eax
	pushl	%eax
	call	pop_extra_root@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	-60(%ebp), %eax
	pushl	%eax
	call	pop_extra_root@PLT
	addl	$16, %esp
	movl	-60(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -40(%ebp)
	movl	-64(%ebp), %eax
	subl	$8, %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movl	-40(%ebp), %eax
	leal	8(%eax), %edx
	movl	-32(%ebp), %eax
	addl	$8, %eax
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	strncpy@PLT
	addl	$16, %esp
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movl	-36(%ebp), %eax
	leal	8(%eax), %edx
	movl	-32(%ebp), %eax
	leal	8(%eax), %esi
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	addl	%esi, %eax
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	strncpy@PLT
	addl	$16, %esp
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movb	$0, 8(%eax,%edx)
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L439
	leal	__PRETTY_FUNCTION__.3@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1194
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L439:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	cmpl	%eax, %edx
	je	.L440
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-44(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L441
.L440:
	movl	-44(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L442
.L441:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L443
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-44(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.3@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1194
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L443:
	movl	%ebp, %edi
	movl	-44(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-44(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L442:
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L445
	call	__stack_chk_fail_local
.L445:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE71:
	.size	Li__Infix_4343, .-Li__Infix_4343
	.section	.rodata
.LC84:
	.string	"sprintf:1"
	.text
	.globl	Lsprintf
	.type	Lsprintf, @function
Lsprintf:
.LFB72:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	%ebp, %eax
	movl	%eax, -36(%ebp)
	movl	%ebp, %eax
	movl	-36(%ebp), %edx
	cmpl	%edx, %eax
	je	.L447
	leal	__PRETTY_FUNCTION__.2@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1201
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L447:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L448
	movl	-36(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-36(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-36(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-36(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L448:
	movl	-44(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L449
	movl	-44(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L449
	subl	$8, %esp
	leal	.LC84@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L449:
	leal	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %edx
	movl	-44(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	call	fix_unboxed
	addl	$16, %esp
	call	createStringBuf
	movl	-40(%ebp), %edx
	movl	-44(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	call	vprintStringBuf
	addl	$16, %esp
	subl	$12, %esp
	leal	-44(%ebp), %eax
	pushl	%eax
	call	push_extra_root@PLT
	addl	$16, %esp
	movl	stringBuf@GOTOFF(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	Bstring
	addl	$16, %esp
	movl	%eax, -32(%ebp)
	subl	$12, %esp
	leal	-44(%ebp), %eax
	pushl	%eax
	call	pop_extra_root@PLT
	addl	$16, %esp
	call	deleteStringBuf
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L450
	leal	__PRETTY_FUNCTION__.2@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1218
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L450:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	cmpl	%eax, %edx
	je	.L451
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-36(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L452
.L451:
	movl	-36(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L453
.L452:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L454
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-36(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.2@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1218
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L454:
	movl	%ebp, %edi
	movl	-36(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-36(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L453:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L456
	call	__stack_chk_fail_local
.L456:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE72:
	.size	Lsprintf, .-Lsprintf
	.globl	LgetEnv
	.type	LgetEnv, @function
LgetEnv:
.LFB73:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	subl	$12, %esp
	pushl	-44(%ebp)
	call	getenv@PLT
	addl	$16, %esp
	movl	%eax, -36(%ebp)
	movl	%ebp, %eax
	movl	%eax, -40(%ebp)
	movl	%ebp, %eax
	movl	-40(%ebp), %edx
	cmpl	%edx, %eax
	je	.L458
	leal	__PRETTY_FUNCTION__.1@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1225
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L458:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L459
	movl	-40(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-40(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-40(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-40(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L459:
	cmpl	$0, -36(%ebp)
	jne	.L460
	movl	$1, %eax
	jmp	.L467
.L460:
	subl	$12, %esp
	pushl	-36(%ebp)
	call	Bstring
	addl	$16, %esp
	movl	%eax, -32(%ebp)
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L462
	leal	__PRETTY_FUNCTION__.1@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1231
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L462:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	cmpl	%eax, %edx
	je	.L463
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-40(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L464
.L463:
	movl	-40(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L465
.L464:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L466
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-40(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.1@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1231
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L466:
	movl	%ebp, %edi
	movl	-40(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-40(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L465:
	movl	-32(%ebp), %eax
.L467:
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L468
	call	__stack_chk_fail_local
.L468:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE73:
	.size	LgetEnv, .-LgetEnv
	.globl	Lsystem
	.type	Lsystem, @function
Lsystem:
.LFB74:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$12, %esp
	pushl	8(%ebp)
	movl	%eax, %ebx
	call	system@PLT
	addl	$16, %esp
	addl	%eax, %eax
	orl	$1, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE74:
	.size	Lsystem, .-Lsystem
	.section	.rodata
.LC85:
	.string	"fprintf:1"
.LC86:
	.string	"fprintf:2"
.LC87:
	.string	"fprintf (...): %s\n"
	.text
	.globl	Lfprintf
	.type	Lfprintf, @function
Lfprintf:
.LFB75:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$1, -16(%ebp)
	movl	-28(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L472
	subl	$8, %esp
	leal	.LC85@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L472:
	movl	-32(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L473
	movl	-32(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L473
	subl	$8, %esp
	leal	.LC86@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L473:
	leal	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-32(%ebp)
	call	fix_unboxed
	addl	$16, %esp
	movl	-16(%ebp), %eax
	subl	$4, %esp
	pushl	%eax
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	call	vfprintf@PLT
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L476
	call	__errno_location@PLT
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	strerror@PLT
	addl	$16, %esp
	subl	$8, %esp
	pushl	%eax
	leal	.LC87@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L476:
	nop
	movl	-12(%ebp), %eax
	subl	%gs:20, %eax
	je	.L475
	call	__stack_chk_fail_local
.L475:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE75:
	.size	Lfprintf, .-Lfprintf
	.section	.rodata
.LC88:
	.string	"printf:1"
	.text
	.globl	Lprintf
	.type	Lprintf, @function
Lprintf:
.LFB76:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$1, -16(%ebp)
	movl	-28(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L478
	movl	-28(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L478
	subl	$8, %esp
	leal	.LC88@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L478:
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-28(%ebp)
	call	fix_unboxed
	addl	$16, %esp
	movl	-16(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-28(%ebp)
	call	vprintf@PLT
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L479
	call	__errno_location@PLT
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	strerror@PLT
	addl	$16, %esp
	subl	$8, %esp
	pushl	%eax
	leal	.LC87@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L479:
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	fflush@PLT
	addl	$16, %esp
	nop
	movl	-12(%ebp), %eax
	subl	%gs:20, %eax
	je	.L480
	call	__stack_chk_fail_local
.L480:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE76:
	.size	Lprintf, .-Lprintf
	.section	.rodata
.LC89:
	.string	"fopen:1"
.LC90:
	.string	"fopen:2"
	.align 4
.LC91:
	.string	"fopen (\"%s\", \"%s\"): %s, %s, %s\n"
	.text
	.globl	Lfopen
	.type	Lfopen, @function
Lfopen:
.LFB77:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L482
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L482
	subl	$8, %esp
	leal	.LC89@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L482:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L483
	movl	12(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L483
	subl	$8, %esp
	leal	.LC90@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L483:
	subl	$8, %esp
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	fopen@PLT
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L484
	movl	-12(%ebp), %eax
	jmp	.L481
.L484:
	call	__errno_location@PLT
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	strerror@PLT
	addl	$16, %esp
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	.LC91@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L481:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE77:
	.size	Lfopen, .-Lfopen
	.section	.rodata
.LC92:
	.string	"fclose"
	.text
	.globl	Lfclose
	.type	Lfclose, @function
Lfclose:
.LFB78:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L487
	subl	$8, %esp
	leal	.LC92@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L487:
	subl	$12, %esp
	pushl	8(%ebp)
	call	fclose@PLT
	addl	$16, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE78:
	.size	Lfclose, .-Lfclose
	.section	.rodata
.LC93:
	.string	"%m[^\n]"
.LC94:
	.string	"readLine (): %s\n"
	.text
	.globl	LreadLine
	.type	LreadLine, @function
LreadLine:
.LFB79:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	subl	$8, %esp
	leal	-20(%ebp), %eax
	pushl	%eax
	leal	.LC93@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__isoc99_scanf@PLT
	addl	$16, %esp
	cmpl	$1, %eax
	jne	.L489
	movl	-20(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	Bstring
	addl	$16, %esp
	movl	%eax, -16(%ebp)
	call	getchar@PLT
	movl	-20(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	free@PLT
	addl	$16, %esp
	movl	-16(%ebp), %eax
	jmp	.L492
.L489:
	call	__errno_location@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L491
	call	__errno_location@PLT
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	strerror@PLT
	addl	$16, %esp
	subl	$8, %esp
	pushl	%eax
	leal	.LC94@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L491:
	movl	$1, %eax
.L492:
	movl	-12(%ebp), %edx
	subl	%gs:20, %edx
	je	.L493
	call	__stack_chk_fail_local
.L493:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE79:
	.size	LreadLine, .-LreadLine
	.section	.rodata
.LC95:
	.string	"fread"
.LC96:
	.string	"r"
.LC97:
	.string	"fread (\"%s\"): %s\n"
	.text
	.globl	Lfread
	.type	Lfread, @function
Lfread:
.LFB80:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L495
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L495
	subl	$8, %esp
	leal	.LC95@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L495:
	subl	$8, %esp
	leal	.LC96@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	8(%ebp)
	call	fopen@PLT
	addl	$16, %esp
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L496
	subl	$4, %esp
	pushl	$2
	pushl	$0
	pushl	-20(%ebp)
	call	fseek@PLT
	addl	$16, %esp
	testl	%eax, %eax
	js	.L496
	subl	$12, %esp
	pushl	-20(%ebp)
	call	ftell@PLT
	addl	$16, %esp
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
	subl	$12, %esp
	pushl	%eax
	call	LmakeString
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	subl	$12, %esp
	pushl	-20(%ebp)
	call	rewind@PLT
	addl	$16, %esp
	movl	-16(%ebp), %eax
	pushl	-20(%ebp)
	pushl	%eax
	pushl	$1
	pushl	-12(%ebp)
	call	fread@PLT
	addl	$16, %esp
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L496
	subl	$12, %esp
	pushl	-20(%ebp)
	call	fclose@PLT
	addl	$16, %esp
	movl	-12(%ebp), %eax
	jmp	.L494
.L496:
	call	__errno_location@PLT
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	strerror@PLT
	addl	$16, %esp
	subl	$4, %esp
	pushl	%eax
	pushl	8(%ebp)
	leal	.LC97@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L494:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE80:
	.size	Lfread, .-Lfread
	.section	.rodata
.LC98:
	.string	"fwrite:1"
.LC99:
	.string	"fwrite:2"
.LC100:
	.string	"w"
.LC101:
	.string	"fwrite (\"%s\"): %s\n"
	.text
	.globl	Lfwrite
	.type	Lfwrite, @function
Lfwrite:
.LFB81:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L499
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L499
	subl	$8, %esp
	leal	.LC98@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L499:
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L500
	movl	12(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L500
	subl	$8, %esp
	leal	.LC99@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L500:
	subl	$8, %esp
	leal	.LC100@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	8(%ebp)
	call	fopen@PLT
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L501
	subl	$4, %esp
	pushl	12(%ebp)
	leal	.LC53@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	-12(%ebp)
	call	fprintf@PLT
	addl	$16, %esp
	testl	%eax, %eax
	js	.L501
	subl	$12, %esp
	pushl	-12(%ebp)
	call	fclose@PLT
	addl	$16, %esp
	jmp	.L498
.L501:
	call	__errno_location@PLT
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	strerror@PLT
	addl	$16, %esp
	subl	$4, %esp
	pushl	%eax
	pushl	8(%ebp)
	leal	.LC101@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L498:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE81:
	.size	Lfwrite, .-Lfwrite
	.section	.rodata
.LC102:
	.string	"fexists"
	.text
	.globl	Lfexists
	.type	Lfexists, @function
Lfexists:
.LFB82:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L504
	movl	8(%ebp), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.L504
	subl	$8, %esp
	leal	.LC102@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC61@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L504:
	subl	$8, %esp
	leal	.LC96@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	8(%ebp)
	call	fopen@PLT
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L505
	movl	$3, %eax
	jmp	.L506
.L505:
	movl	$1, %eax
.L506:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE82:
	.size	Lfexists, .-Lfexists
	.globl	Lfst
	.type	Lfst, @function
Lfst:
.LFB83:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$8, %esp
	pushl	$1
	pushl	8(%ebp)
	call	Belem
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE83:
	.size	Lfst, .-Lfst
	.globl	Lsnd
	.type	Lsnd, @function
Lsnd:
.LFB84:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$8, %esp
	pushl	$3
	pushl	8(%ebp)
	call	Belem
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE84:
	.size	Lsnd, .-Lsnd
	.globl	Lhd
	.type	Lhd, @function
Lhd:
.LFB85:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$8, %esp
	pushl	$1
	pushl	8(%ebp)
	call	Belem
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE85:
	.size	Lhd, .-Lhd
	.globl	Ltl
	.type	Ltl, @function
Ltl:
.LFB86:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$8, %esp
	pushl	$3
	pushl	8(%ebp)
	call	Belem
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE86:
	.size	Ltl, .-Ltl
	.section	.rodata
.LC103:
	.string	"> "
	.text
	.globl	Lread
	.type	Lread, @function
Lread:
.LFB87:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$1, -16(%ebp)
	subl	$12, %esp
	leal	.LC103@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	fflush@PLT
	addl	$16, %esp
	subl	$8, %esp
	leal	-16(%ebp), %eax
	pushl	%eax
	leal	.LC43@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__isoc99_scanf@PLT
	addl	$16, %esp
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
	movl	-12(%ebp), %edx
	subl	%gs:20, %edx
	je	.L517
	call	__stack_chk_fail_local
.L517:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE87:
	.size	Lread, .-Lread
	.section	.rodata
	.align 4
.LC104:
	.string	"ERROR: POINTER ARITHMETICS is forbidden; EXIT\n"
	.text
	.globl	Lbinoperror
	.type	Lbinoperror, @function
Lbinoperror:
.LFB88:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	pushl	%eax
	pushl	$46
	pushl	$1
	leal	.LC104@GOTOFF(%ebx), %eax
	pushl	%eax
	call	fwrite@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	$1
	call	exit@PLT
	.cfi_endproc
.LFE88:
	.size	Lbinoperror, .-Lbinoperror
	.section	.rodata
	.align 4
.LC105:
	.string	"ERROR: Comparing BOXED and UNBOXED value ; EXIT\n"
	.text
	.globl	Lbinoperror2
	.type	Lbinoperror2, @function
Lbinoperror2:
.LFB89:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	pushl	%eax
	pushl	$48
	pushl	$1
	leal	.LC105@GOTOFF(%ebx), %eax
	pushl	%eax
	call	fwrite@PLT
	addl	$16, %esp
	subl	$12, %esp
	pushl	$1
	call	exit@PLT
	.cfi_endproc
.LFE89:
	.size	Lbinoperror2, .-Lbinoperror2
	.section	.rodata
.LC106:
	.string	"%d\n"
	.text
	.globl	Lwrite
	.type	Lwrite, @function
Lwrite:
.LFB90:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	sarl	%eax
	subl	$8, %esp
	pushl	%eax
	leal	.LC106@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	fflush@PLT
	addl	$16, %esp
	movl	$0, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE90:
	.size	Lwrite, .-Lwrite
	.section	.rodata
.LC107:
	.string	"Lrandom, 0"
.LC108:
	.string	"invalid range in random: %d\n"
	.text
	.globl	Lrandom
	.type	Lrandom, @function
Lrandom:
.LFB91:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L523
	subl	$8, %esp
	leal	.LC107@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC15@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L523:
	movl	8(%ebp), %eax
	sarl	%eax
	testl	%eax, %eax
	jg	.L524
	movl	8(%ebp), %eax
	sarl	%eax
	subl	$8, %esp
	pushl	%eax
	leal	.LC108@GOTOFF(%ebx), %eax
	pushl	%eax
	call	failure
	addl	$16, %esp
.L524:
	call	random@PLT
	movl	8(%ebp), %edx
	sarl	%edx
	movl	%edx, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	orl	$1, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE91:
	.size	Lrandom, .-Lrandom
	.globl	Ltime
	.type	Ltime, @function
Ltime:
.LFB92:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	%gs:20, %edx
	movl	%edx, -12(%ebp)
	xorl	%edx, %edx
	subl	$8, %esp
	leal	-20(%ebp), %edx
	pushl	%edx
	pushl	$4
	movl	%eax, %ebx
	call	clock_gettime@PLT
	addl	$16, %esp
	movl	-20(%ebp), %eax
	imull	$1000000, %eax, %ebx
	movl	-16(%ebp), %ecx
	movl	$274877907, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$6, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%ebx,%edx), %eax
	addl	%eax, %eax
	orl	$1, %eax
	movl	-12(%ebp), %edx
	subl	%gs:20, %edx
	je	.L528
	call	__stack_chk_fail_local
.L528:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE92:
	.size	Ltime, .-Ltime
	.globl	set_args
	.type	set_args, @function
set_args:
.LFB93:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -44(%ebp)
	movl	%ebp, %eax
	movl	%eax, -40(%ebp)
	movl	%ebp, %eax
	movl	-40(%ebp), %edx
	cmpl	%edx, %eax
	je	.L530
	leal	__PRETTY_FUNCTION__.0@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1411
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L530:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L531
	movl	-40(%ebp), %edx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	%edx, (%eax)
	leal	-40(%ebp), %eax
	movl	%eax, __gc_stack_top2@GOTOFF(%ebx)
	movl	%ebp, %edi
	movl	-40(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-40(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC7@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L531:
	movl	-32(%ebp), %eax
	addl	%eax, %eax
	orl	$1, %eax
	subl	$12, %esp
	pushl	%eax
	call	LmakeArray
	addl	$16, %esp
	movl	%eax, -44(%ebp)
	subl	$12, %esp
	leal	-44(%ebp), %eax
	pushl	%eax
	call	push_extra_root@PLT
	addl	$16, %esp
	movl	$0, -36(%ebp)
	jmp	.L532
.L533:
	movl	-36(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	Bstring
	addl	$16, %esp
	movl	%eax, %ecx
	movl	-44(%ebp), %eax
	movl	-36(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	%ecx, %edx
	movl	%edx, (%eax)
	addl	$1, -36(%ebp)
.L532:
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L533
	subl	$12, %esp
	leal	-44(%ebp), %eax
	pushl	%eax
	call	pop_extra_root@PLT
	addl	$16, %esp
	movl	-44(%ebp), %eax
	movl	%eax, global_sysargs@GOTOFF(%ebx)
	subl	$12, %esp
	leal	global_sysargs@GOTOFF(%ebx), %eax
	pushl	%eax
	call	push_extra_root@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L534
	leal	__PRETTY_FUNCTION__.0@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1450
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L534:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	cmpl	%eax, %edx
	je	.L535
	movl	__gc_stack_top2@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	leal	-40(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L536
.L535:
	movl	-40(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	leal	.LC10@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$16, %esp
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, __gc_stack_top2@GOTOFF(%ebx)
	jmp	.L537
.L536:
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	cmpl	%eax, %edx
	jnb	.L538
	movl	__gc_stack_bottom@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-40(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	leal	.LC11@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
	leal	__PRETTY_FUNCTION__.0@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1450
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__assert_fail@PLT
.L538:
	movl	%ebp, %edi
	movl	-40(%ebp), %ecx
	movl	__gc_stack_top@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	leal	-40(%ebp), %esi
	pushl	%esi
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	leal	.LC13@GOTOFF(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	fprintf@PLT
	addl	$32, %esp
.L537:
	nop
	movl	-28(%ebp), %eax
	subl	%gs:20, %eax
	je	.L539
	call	__stack_chk_fail_local
.L539:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE93:
	.size	set_args, .-set_args
	.data
	.align 4
	.type	enable_GC, @object
	.size	enable_GC, 4
enable_GC:
	.long	1
	.text
	.globl	LenableGC
	.type	LenableGC, @function
LenableGC:
.LFB94:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	$1, enable_GC@GOTOFF(%eax)
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE94:
	.size	LenableGC, .-LenableGC
	.globl	LdisableGC
	.type	LdisableGC, @function
LdisableGC:
.LFB95:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	$0, enable_GC@GOTOFF(%eax)
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE95:
	.size	LdisableGC, .-LdisableGC
	.section	.rodata
	.align 4
	.type	__PRETTY_FUNCTION__.15, @object
	.size	__PRETTY_FUNCTION__.15, 13
__PRETTY_FUNCTION__.15:
	.string	"Ls__Infix_58"
	.local	buf.14
	.comm	buf.14,6,4
	.align 4
	.type	__PRETTY_FUNCTION__.13, @object
	.size	__PRETTY_FUNCTION__.13, 11
__PRETTY_FUNCTION__.13:
	.string	"Lsubstring"
	.align 4
	.type	__PRETTY_FUNCTION__.12, @object
	.size	__PRETTY_FUNCTION__.12, 7
__PRETTY_FUNCTION__.12:
	.string	"Lclone"
	.align 4
	.type	__PRETTY_FUNCTION__.11, @object
	.size	__PRETTY_FUNCTION__.11, 11
__PRETTY_FUNCTION__.11:
	.string	"LmakeArray"
	.align 4
	.type	__PRETTY_FUNCTION__.10, @object
	.size	__PRETTY_FUNCTION__.10, 12
__PRETTY_FUNCTION__.10:
	.string	"LmakeString"
	.align 4
	.type	__PRETTY_FUNCTION__.9, @object
	.size	__PRETTY_FUNCTION__.9, 8
__PRETTY_FUNCTION__.9:
	.string	"Bstring"
	.align 4
	.type	__PRETTY_FUNCTION__.8, @object
	.size	__PRETTY_FUNCTION__.8, 11
__PRETTY_FUNCTION__.8:
	.string	"Lstringcat"
	.align 4
	.type	__PRETTY_FUNCTION__.7, @object
	.size	__PRETTY_FUNCTION__.7, 8
__PRETTY_FUNCTION__.7:
	.string	"Lstring"
	.align 4
	.type	__PRETTY_FUNCTION__.6, @object
	.size	__PRETTY_FUNCTION__.6, 9
__PRETTY_FUNCTION__.6:
	.string	"Bclosure"
	.align 4
	.type	__PRETTY_FUNCTION__.5, @object
	.size	__PRETTY_FUNCTION__.5, 7
__PRETTY_FUNCTION__.5:
	.string	"Barray"
	.align 4
	.type	__PRETTY_FUNCTION__.4, @object
	.size	__PRETTY_FUNCTION__.4, 6
__PRETTY_FUNCTION__.4:
	.string	"Bsexp"
	.align 4
	.type	__PRETTY_FUNCTION__.3, @object
	.size	__PRETTY_FUNCTION__.3, 15
__PRETTY_FUNCTION__.3:
	.string	"Li__Infix_4343"
	.align 4
	.type	__PRETTY_FUNCTION__.2, @object
	.size	__PRETTY_FUNCTION__.2, 9
__PRETTY_FUNCTION__.2:
	.string	"Lsprintf"
	.align 4
	.type	__PRETTY_FUNCTION__.1, @object
	.size	__PRETTY_FUNCTION__.1, 8
__PRETTY_FUNCTION__.1:
	.string	"LgetEnv"
	.align 4
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 9
__PRETTY_FUNCTION__.0:
	.string	"set_args"
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB96:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE96:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB97:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE97:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (GNU) 13.1.1 20230429"
	.section	.note.GNU-stack,"",@progbits
