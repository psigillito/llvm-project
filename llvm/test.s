	.text
	.file	"generate_basic_blocks.cpp"
	.section	.text._ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEED2Ev,"axG",@progbits,_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEED2Ev,comdat
	.weak	_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEED2Ev # -- Begin function _ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEED2Ev
	.p2align	4, 0x90
	.type	_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEED2Ev,@function
_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEED2Ev: # @_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEED2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	addq	$88, %rdi
	callq	_ZN4llvm24IRBuilderDefaultInserterD1Ev
	leaq	80(%rbx), %rdi
	callq	_ZN4llvm15IRBuilderFolderD2Ev
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_2
# %bb.1:
.Ltmp0:
	movq	%rbx, %rdi
	callq	_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE
.Ltmp1:
.LBB0_2:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_3:
	.cfi_def_cfa_offset 16
.Ltmp2:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end0:
	.size	_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEED2Ev, .Lfunc_end0-_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	1                               #   On action: 1
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z10createFuncRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _Z10createFuncRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_Z10createFuncRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_Z10createFuncRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_Z10createFuncRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	24(%rdi), %rdi
	callq	_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	xorl	%ecx, %ecx
	callq	_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb
	movq	%rax, %r14
	movw	$260, 24(%rsp)                  # imm = 0x104
	movq	%rbx, 8(%rsp)
	movq	_ZL12ModuleObject(%rip), %r15
	movl	$120, %edi
	callq	_ZN4llvm4UsernwEm
	movq	%rax, %rbx
.Ltmp3:
	leaq	8(%rsp), %r8
	movq	%rax, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movl	$-1, %ecx
	movq	%r15, %r9
	callq	_ZN4llvm8FunctionC1EPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesEjRKNS_5TwineEPNS_6ModuleE
.Ltmp4:
# %bb.1:
	movq	%rbx, %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_2:
	.cfi_def_cfa_offset 64
.Ltmp5:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZN4llvm4UserdlEPv
	movq	%r14, %rdi
	callq	_Unwind_Resume
.Lfunc_end1:
	.size	_Z10createFuncRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end1-_Z10createFuncRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z8createBBPN4llvm8FunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _Z8createBBPN4llvm8FunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_Z8createBBPN4llvm8FunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_Z8createBBPN4llvm8FunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_Z8createBBPN4llvm8FunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movw	$260, 16(%rsp)                  # imm = 0x104
	movq	%rsi, (%rsp)
	movl	$64, %edi
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp6:
	movq	%rsp, %rdx
	movl	$_ZL7Context, %esi
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%r8d, %r8d
	callq	_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_
.Ltmp7:
# %bb.1:
	movq	%rbx, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB2_2:
	.cfi_def_cfa_offset 48
.Ltmp8:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	%r14, %rdi
	callq	_Unwind_Resume
.Lfunc_end2:
	.size	_Z8createBBPN4llvm8FunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end2-_Z8createBBPN4llvm8FunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table2:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Lfunc_begin2           #   Call between .Lfunc_begin2 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin2           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin2           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin2           # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$88, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	leaq	40(%rsp), %r12
	movq	%r12, 24(%rsp)
	movabsq	$8459553925311262053, %rax      # imm = 0x75665F7974706D65
	movq	%rax, 40(%rsp)
	movw	$25454, 48(%rsp)                # imm = 0x636E
	movq	$10, 32(%rsp)
	movb	$0, 50(%rsp)
	movq	_ZL7Builder+24(%rip), %rdi
.Ltmp9:
	callq	_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE
.Ltmp10:
# %bb.1:
	movq	$0, (%rsp)
.Ltmp11:
	movq	%rsp, %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	xorl	%ecx, %ecx
	callq	_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb
.Ltmp12:
# %bb.2:
	movq	%rax, %r14
	movw	$260, 16(%rsp)                  # imm = 0x104
	leaq	24(%rsp), %rax
	movq	%rax, (%rsp)
	movq	_ZL12ModuleObject(%rip), %rbx
.Ltmp13:
	movl	$120, %edi
	callq	_ZN4llvm4UsernwEm
.Ltmp14:
# %bb.3:
	movq	%rax, %r15
.Ltmp16:
	movq	%rsp, %r8
	movq	%rax, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movl	$-1, %ecx
	movq	%rbx, %r9
	callq	_ZN4llvm8FunctionC1EPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesEjRKNS_5TwineEPNS_6ModuleE
.Ltmp17:
# %bb.4:
	movq	24(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB3_6
# %bb.5:
	callq	_ZdlPv
.LBB3_6:
	leaq	72(%rsp), %r12
	movq	%r12, 56(%rsp)
	movl	$1920233061, 72(%rsp)           # imm = 0x72746E65
	movw	$121, 76(%rsp)
	movq	$5, 64(%rsp)
	movw	$260, 16(%rsp)                  # imm = 0x104
	leaq	56(%rsp), %rax
	movq	%rax, (%rsp)
.Ltmp19:
	movl	$64, %edi
	callq	_Znwm
.Ltmp20:
# %bb.7:
	movq	%rax, %rbx
.Ltmp22:
	movq	%rsp, %rdx
	movl	$_ZL7Context, %esi
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%r8d, %r8d
	callq	_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_
.Ltmp23:
# %bb.8:
	movq	56(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB3_10
# %bb.9:
	callq	_ZdlPv
.LBB3_10:
	movq	%rbx, _ZL7Builder+8(%rip)
	addq	$40, %rbx
	movq	%rbx, _ZL7Builder+16(%rip)
	movq	_ZL7Builder+24(%rip), %r14
	movl	$64, %edi
	xorl	%esi, %esi
	callq	_ZN4llvm4UsernwEmj
	movq	%rax, %rbx
.Ltmp25:
	movq	%rax, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_ZN4llvm10ReturnInstC1ERNS_11LLVMContextEPNS_5ValueEPNS_11InstructionE
.Ltmp26:
# %bb.11:
	movw	$257, 16(%rsp)                  # imm = 0x101
	movq	_ZL7Builder+40(%rip), %rdi
	movq	(%rdi), %rax
	movq	_ZL7Builder+8(%rip), %rcx
	movq	_ZL7Builder+16(%rip), %r8
	movq	%rsp, %rdx
	movq	%rbx, %rsi
	callq	*16(%rax)
	movl	$_ZL7Builder, %edi
	movq	%rbx, %rsi
	callq	_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE
	movq	_ZL12ModuleObject(%rip), %rdi
	callq	_ZNK4llvm6Module4dumpEv
	xorl	%eax, %eax
	addq	$88, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB3_12:
	.cfi_def_cfa_offset 128
.Ltmp27:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZN4llvm4UserdlEPv
	movq	%r14, %rdi
	callq	_Unwind_Resume
.LBB3_13:
.Ltmp24:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	56(%rsp), %rdi
	jmp	.LBB3_18
.LBB3_14:
.Ltmp21:
	movq	%rax, %rdi
	callq	_Unwind_Resume
.LBB3_15:
.Ltmp18:
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	_ZN4llvm4UserdlEPv
	jmp	.LBB3_17
.LBB3_16:
.Ltmp15:
	movq	%rax, %r14
.LBB3_17:
	movq	24(%rsp), %rdi
.LBB3_18:
	cmpq	%r12, %rdi
	je	.LBB3_20
# %bb.19:
	callq	_ZdlPv
.LBB3_20:                               # %unwind_resume
	movq	%r14, %rdi
	callq	_Unwind_Resume
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table3:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp9-.Lfunc_begin3           # >> Call Site 1 <<
	.uleb128 .Ltmp14-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin3          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin3          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin3          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin3          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp25-.Ltmp23                #   Call between .Ltmp23 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin3          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Lfunc_end3-.Ltmp26            #   Call between .Ltmp26 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end4:
	.size	__clang_call_terminate, .Lfunc_end4-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE,"axG",@progbits,_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE,comdat
	.weak	_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE # -- Begin function _ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE
	.p2align	4, 0x90
	.type	_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE,@function
_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE: # @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception4
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB5_10
# %bb.1:
	movq	%rsi, (%rsp)
	movq	%rsp, %r14
	movl	$2, %edx
	movq	%r14, %rdi
	callq	_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_EEE
	addq	$48, %rbx
	cmpq	%r14, %rbx
	je	.LBB5_2
# %bb.5:
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_7
# %bb.6:
.Ltmp28:
	movq	%rbx, %rdi
	callq	_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE
.Ltmp29:
.LBB5_7:
	movq	(%rsp), %rsi
	movq	%rsi, (%rbx)
	testq	%rsi, %rsi
	je	.LBB5_3
# %bb.8:
.Ltmp30:
	movq	%rsp, %rdi
	movq	%rbx, %rdx
	callq	_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_
.Ltmp31:
# %bb.9:
	movq	$0, (%rsp)
	jmp	.LBB5_10
.LBB5_2:
	movq	(%rsp), %rsi
.LBB5_3:
	testq	%rsi, %rsi
	je	.LBB5_10
# %bb.4:
.Ltmp36:
	movq	%rsp, %rdi
	callq	_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE
.Ltmp37:
.LBB5_10:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB5_11:
	.cfi_def_cfa_offset 32
.Ltmp38:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB5_12:
.Ltmp32:
	movq	%rax, %rbx
	movq	(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB5_14
# %bb.13:
.Ltmp33:
	movq	%rsp, %rdi
	callq	_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE
.Ltmp34:
.LBB5_14:
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB5_15:
.Ltmp35:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end5:
	.size	_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE, .Lfunc_end5-_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp28-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp31-.Ltmp28                #   Call between .Ltmp28 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin4          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin4          #     jumps to .Ltmp38
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp33-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin4          #     jumps to .Ltmp35
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp34-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Lfunc_end5-.Ltmp34            #   Call between .Ltmp34 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_generate_basic_blocks.cpp
	.type	_GLOBAL__sub_I_generate_basic_blocks.cpp,@function
_GLOBAL__sub_I_generate_basic_blocks.cpp: # @_GLOBAL__sub_I_generate_basic_blocks.cpp
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception5
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$_ZL7Context, %edi
	callq	_ZN4llvm11LLVMContextC1Ev
	movl	$_ZN4llvm11LLVMContextD1Ev, %edi
	movl	$_ZL7Context, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	movq	$0, _ZL7Builder(%rip)
	movq	$_ZL7Context, _ZL7Builder+24(%rip)
	movq	$_ZL7Builder+80, _ZL7Builder+32(%rip)
	movq	$_ZL7Builder+88, _ZL7Builder+40(%rip)
	movq	$0, _ZL7Builder+48(%rip)
	movl	$0, _ZL7Builder+56(%rip)
	movw	$512, _ZL7Builder+60(%rip)      # imm = 0x200
	movb	$7, _ZL7Builder+62(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, _ZL7Builder+8(%rip)
	movups	%xmm0, _ZL7Builder+64(%rip)
	movl	$_ZTVN4llvm24IRBuilderDefaultInserterE+16, %eax
	movq	%rax, %xmm0
	movl	$_ZTVN4llvm14ConstantFolderE+16, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, _ZL7Builder+80(%rip)
	movl	$_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEED2Ev, %edi
	movl	$_ZL7Builder, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	movl	$744, %edi                      # imm = 0x2E8
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp39:
	movl	$.L.str, %esi
	movl	$14, %edx
	movl	$_ZL7Context, %ecx
	movq	%rax, %rdi
	callq	_ZN4llvm6ModuleC1ENS_9StringRefERNS_11LLVMContextE
.Ltmp40:
# %bb.1:
	movq	%rbx, _ZL12ModuleObject(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB6_2:
	.cfi_def_cfa_offset 32
.Ltmp41:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	%r14, %rdi
	callq	_Unwind_Resume
.Lfunc_end6:
	.size	_GLOBAL__sub_I_generate_basic_blocks.cpp, .Lfunc_end6-_GLOBAL__sub_I_generate_basic_blocks.cpp
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table6:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp39-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin5          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp40            #   Call between .Ltmp40 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2
                                        # -- End function
	.hidden	_ZN4llvm29VerifyEnableABIBreakingChecksE # @_ZN4llvm29VerifyEnableABIBreakingChecksE
	.type	_ZN4llvm29VerifyEnableABIBreakingChecksE,@object
	.data
	.weak	_ZN4llvm29VerifyEnableABIBreakingChecksE
	.p2align	3
_ZN4llvm29VerifyEnableABIBreakingChecksE:
	.quad	_ZN4llvm23EnableABIBreakingChecksE
	.size	_ZN4llvm29VerifyEnableABIBreakingChecksE, 8

	.type	_ZL7Context,@object             # @_ZL7Context
	.local	_ZL7Context
	.comm	_ZL7Context,8,8
	.hidden	__dso_handle
	.type	_ZL7Builder,@object             # @_ZL7Builder
	.local	_ZL7Builder
	.comm	_ZL7Builder,96,8
	.type	_ZL12ModuleObject,@object       # @_ZL12ModuleObject
	.local	_ZL12ModuleObject
	.comm	_ZL12ModuleObject,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"simple compile"
	.size	.L.str, 15

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"empty_func"
	.size	.L.str.3, 11

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"entry"
	.size	.L.str.4, 6

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_generate_basic_blocks.cpp
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
