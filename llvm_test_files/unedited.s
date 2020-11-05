	.text
	.file	"hello.cpp"
	.globl	_Z9test_loopRSt6vectorIcSaIcEE  # -- Begin function _Z9test_loopRSt6vectorIcSaIcEE
	.p2align	4, 0x90
	.type	_Z9test_loopRSt6vectorIcSaIcEE,@function
_Z9test_loopRSt6vectorIcSaIcEE:         # @_Z9test_loopRSt6vectorIcSaIcEE
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	(%rdi), %rbx
	movq	8(%rdi), %r14
	cmpq	%r14, %rbx
	je	.LBB0_2
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%rbx), %esi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %rbx
	cmpq	%rbx, %r14
	jne	.LBB0_1
.LBB0_2:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_Z9test_loopRSt6vectorIcSaIcEE, .Lfunc_end0-_Z9test_loopRSt6vectorIcSaIcEE
	.cfi_endproc
                                        # -- End function
	.globl	_Z24our_testy_empty_functionv   # -- Begin function _Z24our_testy_empty_functionv
	.p2align	4, 0x90
	.type	_Z24our_testy_empty_functionv,@function
_Z24our_testy_empty_functionv:          # @_Z24our_testy_empty_functionv
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end1:
	.size	_Z24our_testy_empty_functionv, .Lfunc_end1-_Z24our_testy_empty_functionv
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	leaq	24(%rsp), %r14
	movq	%r14, 8(%rsp)
	movabsq	$8391086210648992865, %rax      # imm = 0x7473207361696C61
	movq	%rax, 24(%rsp)
	movl	$1735289202, 32(%rsp)           # imm = 0x676E6972
	movq	$12, 16(%rsp)
	movb	$0, 36(%rsp)
	movl	$.L.str.2, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	printf
.Ltmp0:
	movl	$4, %edi
	callq	_Znwm
.Ltmp1:
# %bb.1:
	movq	%rax, %rbx
	movl	$.L.str, %edi
	movl	$97, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str, %edi
	movl	$98, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str, %edi
	movl	$99, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str, %edi
	movl	$100, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	8(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB2_3
# %bb.2:
	callq	_ZdlPv
.LBB2_3:
	xorl	%eax, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB2_4:
	.cfi_def_cfa_offset 64
.Ltmp2:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB2_6
# %bb.5:
	callq	_ZdlPv
.LBB2_6:
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table2:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end2-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%c\n"
	.size	.L.str, 4

	.type	global1,@object                 # @global1
	.data
	.globl	global1
	.p2align	2
global1:
	.long	1                               # 0x1
	.size	global1, 4

	.type	global2,@object                 # @global2
	.globl	global2
	.p2align	2
global2:
	.long	2                               # 0x2
	.size	global2, 4

	.type	global_alias_int,@object        # @global_alias_int
	.globl	global_alias_int
	.p2align	2
global_alias_int:
	.long	1                               # 0x1
	.size	global_alias_int, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"alias string"
	.size	.L.str.1, 13

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
