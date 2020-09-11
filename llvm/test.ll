; ModuleID = 'generate_basic_blocks.cpp'
source_filename = "generate_basic_blocks.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::LLVMContext" = type { %"class.llvm::LLVMContextImpl"* }
%"class.llvm::LLVMContextImpl" = type opaque
%"class.llvm::IRBuilder" = type { %"class.llvm::IRBuilderBase", %"class.llvm::ConstantFolder", %"class.llvm::IRBuilderDefaultInserter" }
%"class.llvm::IRBuilderBase" = type { %"class.llvm::DebugLoc", %"class.llvm::BasicBlock"*, %"class.llvm::ilist_iterator", %"class.llvm::LLVMContext"*, %"class.llvm::IRBuilderFolder"*, %"class.llvm::IRBuilderDefaultInserter"*, %"class.llvm::MDNode"*, %"class.llvm::FastMathFlags", i8, i8, i8, %"class.llvm::ArrayRef" }
%"class.llvm::DebugLoc" = type { %"class.llvm::TypedTrackingMDRef" }
%"class.llvm::TypedTrackingMDRef" = type { %"class.llvm::TrackingMDRef" }
%"class.llvm::TrackingMDRef" = type { %"class.llvm::Metadata"* }
%"class.llvm::Metadata" = type { i8, i8, i16, i32 }
%"class.llvm::BasicBlock" = type { %"class.llvm::Value", %"class.llvm::ilist_node_with_parent", %"class.llvm::SymbolTableList", %"class.llvm::Function"* }
%"class.llvm::Value" = type { %"class.llvm::Type"*, %"class.llvm::Use"*, i8, i8, i16, i32 }
%"class.llvm::Type" = type { %"class.llvm::LLVMContext"*, i32, i32, %"class.llvm::Type"** }
%"class.llvm::Use" = type { %"class.llvm::Value"*, %"class.llvm::Use"*, %"class.llvm::Use"**, %"class.llvm::User"* }
%"class.llvm::User" = type { %"class.llvm::Value" }
%"class.llvm::ilist_node_with_parent" = type { %"class.llvm::ilist_node" }
%"class.llvm::ilist_node" = type { %"class.llvm::ilist_node_impl" }
%"class.llvm::ilist_node_impl" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::ilist_node_base" = type { %"class.llvm::PointerIntPair", %"class.llvm::ilist_node_base"* }
%"class.llvm::PointerIntPair" = type { i64 }
%"class.llvm::SymbolTableList" = type { %"class.llvm::iplist_impl" }
%"class.llvm::iplist_impl" = type { %"class.llvm::simple_ilist" }
%"class.llvm::simple_ilist" = type { %"class.llvm::ilist_sentinel" }
%"class.llvm::ilist_sentinel" = type { %"class.llvm::ilist_node_impl.0" }
%"class.llvm::ilist_node_impl.0" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::Function" = type { %"class.llvm::GlobalObject", %"class.llvm::ilist_node.81", %"class.llvm::SymbolTableList.82", %"class.llvm::Argument"*, i64, %"class.std::unique_ptr", %"class.llvm::AttributeList" }
%"class.llvm::GlobalObject" = type { %"class.llvm::GlobalValue", %"class.llvm::Comdat"* }
%"class.llvm::GlobalValue" = type { %"class.llvm::Constant", %"class.llvm::Type"*, i32, i32, %"class.llvm::Module"* }
%"class.llvm::Constant" = type { %"class.llvm::User" }
%"class.llvm::Module" = type { %"class.llvm::LLVMContext"*, %"class.llvm::SymbolTableList.1", %"class.llvm::SymbolTableList.9", %"class.llvm::SymbolTableList.17", %"class.llvm::SymbolTableList.25", %"class.llvm::iplist", %"class.std::__cxx11::basic_string", %"class.std::unique_ptr", %"class.llvm::StringMap", %"class.std::unique_ptr.41", %"class.std::unique_ptr.50", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.llvm::StringMap.59", %"class.llvm::DataLayout" }
%"class.llvm::SymbolTableList.1" = type { %"class.llvm::iplist_impl.2" }
%"class.llvm::iplist_impl.2" = type { %"class.llvm::simple_ilist.5" }
%"class.llvm::simple_ilist.5" = type { %"class.llvm::ilist_sentinel.7" }
%"class.llvm::ilist_sentinel.7" = type { %"class.llvm::ilist_node_impl.8" }
%"class.llvm::ilist_node_impl.8" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::SymbolTableList.9" = type { %"class.llvm::iplist_impl.10" }
%"class.llvm::iplist_impl.10" = type { %"class.llvm::simple_ilist.13" }
%"class.llvm::simple_ilist.13" = type { %"class.llvm::ilist_sentinel.15" }
%"class.llvm::ilist_sentinel.15" = type { %"class.llvm::ilist_node_impl.16" }
%"class.llvm::ilist_node_impl.16" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::SymbolTableList.17" = type { %"class.llvm::iplist_impl.18" }
%"class.llvm::iplist_impl.18" = type { %"class.llvm::simple_ilist.21" }
%"class.llvm::simple_ilist.21" = type { %"class.llvm::ilist_sentinel.23" }
%"class.llvm::ilist_sentinel.23" = type { %"class.llvm::ilist_node_impl.24" }
%"class.llvm::ilist_node_impl.24" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::SymbolTableList.25" = type { %"class.llvm::iplist_impl.26" }
%"class.llvm::iplist_impl.26" = type { %"class.llvm::simple_ilist.29" }
%"class.llvm::simple_ilist.29" = type { %"class.llvm::ilist_sentinel.31" }
%"class.llvm::ilist_sentinel.31" = type { %"class.llvm::ilist_node_impl.32" }
%"class.llvm::ilist_node_impl.32" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::iplist" = type { %"class.llvm::iplist_impl.33" }
%"class.llvm::iplist_impl.33" = type { %"class.llvm::simple_ilist.35" }
%"class.llvm::simple_ilist.35" = type { %"class.llvm::ilist_sentinel.37" }
%"class.llvm::ilist_sentinel.37" = type { %"class.llvm::ilist_node_impl.38" }
%"class.llvm::ilist_node_impl.38" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::StringMap" = type <{ %"class.llvm::StringMapImpl", %"class.llvm::MallocAllocator", [7 x i8] }>
%"class.llvm::StringMapImpl" = type { %"class.llvm::StringMapEntryBase"**, i32, i32, i32, i32 }
%"class.llvm::StringMapEntryBase" = type { i64 }
%"class.llvm::MallocAllocator" = type { i8 }
%"class.std::unique_ptr.41" = type { %"class.std::__uniq_ptr_impl.42" }
%"class.std::__uniq_ptr_impl.42" = type { %"class.std::tuple.43" }
%"class.std::tuple.43" = type { %"struct.std::_Tuple_impl.44" }
%"struct.std::_Tuple_impl.44" = type { %"struct.std::_Head_base.49" }
%"struct.std::_Head_base.49" = type { %"class.llvm::MemoryBuffer"* }
%"class.llvm::MemoryBuffer" = type opaque
%"class.std::unique_ptr.50" = type { %"class.std::__uniq_ptr_impl.51" }
%"class.std::__uniq_ptr_impl.51" = type { %"class.std::tuple.52" }
%"class.std::tuple.52" = type { %"struct.std::_Tuple_impl.53" }
%"struct.std::_Tuple_impl.53" = type { %"struct.std::_Head_base.58" }
%"struct.std::_Head_base.58" = type { %"class.llvm::GVMaterializer"* }
%"class.llvm::GVMaterializer" = type opaque
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.llvm::StringMap.59" = type <{ %"class.llvm::StringMapImpl", %"class.llvm::MallocAllocator", [7 x i8] }>
%"class.llvm::DataLayout" = type { i8, i32, %"struct.llvm::MaybeAlign", i32, %"struct.llvm::MaybeAlign", i32, i32, %"class.llvm::SmallVector", %"class.llvm::SmallVector.62", %"class.std::__cxx11::basic_string", %"class.llvm::SmallVector.69", i8*, %"class.llvm::SmallVector.75" }
%"struct.llvm::MaybeAlign" = type { %"class.llvm::Optional" }
%"class.llvm::Optional" = type { %"class.llvm::optional_detail::OptionalStorage" }
%"class.llvm::optional_detail::OptionalStorage" = type { %union.anon.61, i8 }
%union.anon.61 = type { i8 }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { i8*, i64, i64 }
%"struct.llvm::SmallVectorStorage" = type { [8 x %"struct.llvm::AlignedCharArrayUnion"] }
%"struct.llvm::AlignedCharArrayUnion" = type { [1 x i8] }
%"class.llvm::SmallVector.62" = type { %"class.llvm::SmallVectorImpl.63", %"struct.llvm::SmallVectorStorage.67" }
%"class.llvm::SmallVectorImpl.63" = type { %"class.llvm::SmallVectorTemplateBase.64" }
%"class.llvm::SmallVectorTemplateBase.64" = type { %"class.llvm::SmallVectorTemplateCommon.65" }
%"class.llvm::SmallVectorTemplateCommon.65" = type { %"class.llvm::SmallVectorBase.66" }
%"class.llvm::SmallVectorBase.66" = type { i8*, i32, i32 }
%"struct.llvm::SmallVectorStorage.67" = type { [16 x %"struct.llvm::AlignedCharArrayUnion.68"] }
%"struct.llvm::AlignedCharArrayUnion.68" = type { [8 x i8] }
%"class.llvm::SmallVector.69" = type { %"class.llvm::SmallVectorImpl.70", %"struct.llvm::SmallVectorStorage.73" }
%"class.llvm::SmallVectorImpl.70" = type { %"class.llvm::SmallVectorTemplateBase.71" }
%"class.llvm::SmallVectorTemplateBase.71" = type { %"class.llvm::SmallVectorTemplateCommon.72" }
%"class.llvm::SmallVectorTemplateCommon.72" = type { %"class.llvm::SmallVectorBase.66" }
%"struct.llvm::SmallVectorStorage.73" = type { [8 x %"struct.llvm::AlignedCharArrayUnion.74"] }
%"struct.llvm::AlignedCharArrayUnion.74" = type { [16 x i8] }
%"class.llvm::SmallVector.75" = type { %"class.llvm::SmallVectorImpl.76", %"struct.llvm::SmallVectorStorage.79" }
%"class.llvm::SmallVectorImpl.76" = type { %"class.llvm::SmallVectorTemplateBase.77" }
%"class.llvm::SmallVectorTemplateBase.77" = type { %"class.llvm::SmallVectorTemplateCommon.78" }
%"class.llvm::SmallVectorTemplateCommon.78" = type { %"class.llvm::SmallVectorBase.66" }
%"struct.llvm::SmallVectorStorage.79" = type { [8 x %"struct.llvm::AlignedCharArrayUnion.80"] }
%"struct.llvm::AlignedCharArrayUnion.80" = type { [4 x i8] }
%"class.llvm::Comdat" = type <{ %"class.llvm::StringMapEntry"*, i32, [4 x i8] }>
%"class.llvm::StringMapEntry" = type opaque
%"class.llvm::ilist_node.81" = type { %"class.llvm::ilist_node_impl.16" }
%"class.llvm::SymbolTableList.82" = type { %"class.llvm::iplist_impl.83" }
%"class.llvm::iplist_impl.83" = type { %"class.llvm::simple_ilist.86" }
%"class.llvm::simple_ilist.86" = type { %"class.llvm::ilist_sentinel.88" }
%"class.llvm::ilist_sentinel.88" = type { %"class.llvm::ilist_node_impl" }
%"class.llvm::Argument" = type <{ %"class.llvm::Value", %"class.llvm::Function"*, i32, [4 x i8] }>
%"class.std::unique_ptr" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.40" }
%"struct.std::_Head_base.40" = type { %"class.llvm::ValueSymbolTable"* }
%"class.llvm::ValueSymbolTable" = type opaque
%"class.llvm::AttributeList" = type { %"class.llvm::AttributeListImpl"* }
%"class.llvm::AttributeListImpl" = type opaque
%"class.llvm::ilist_iterator" = type { %"class.llvm::ilist_node_impl.0"* }
%"class.llvm::IRBuilderFolder" = type { i32 (...)** }
%"class.llvm::MDNode" = type { %"class.llvm::Metadata", i32, i32, %"class.llvm::ContextAndReplaceableUses" }
%"class.llvm::ContextAndReplaceableUses" = type { %"class.llvm::PointerUnion" }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.89" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.89" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.90" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.90" = type { %"class.llvm::PointerIntPair.91" }
%"class.llvm::PointerIntPair.91" = type { i64 }
%"class.llvm::FastMathFlags" = type { i32 }
%"class.llvm::ArrayRef" = type { %"class.llvm::OperandBundleDefT"*, i64 }
%"class.llvm::OperandBundleDefT" = type { %"class.std::__cxx11::basic_string", %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl" }
%"struct.std::_Vector_base<llvm::Value *, std::allocator<llvm::Value *> >::_Vector_impl" = type { %"class.llvm::Value"**, %"class.llvm::Value"**, %"class.llvm::Value"** }
%"class.llvm::ConstantFolder" = type { %"class.llvm::IRBuilderFolder" }
%"class.llvm::IRBuilderDefaultInserter" = type { i32 (...)** }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %"class.llvm::Twine"* }
%"class.llvm::IntegerType" = type { %"class.llvm::Type" }
%"class.llvm::FunctionType" = type { %"class.llvm::Type" }
%"class.llvm::ReturnInst" = type { %"class.llvm::Instruction.base", [4 x i8] }
%"class.llvm::Instruction.base" = type <{ %"class.llvm::User", %"class.llvm::ilist_node_with_parent.99", %"class.llvm::BasicBlock"*, %"class.llvm::DebugLoc", i32 }>
%"class.llvm::ilist_node_with_parent.99" = type { %"class.llvm::ilist_node.100" }
%"class.llvm::ilist_node.100" = type { %"class.llvm::ilist_node_impl.0" }
%"class.llvm::Instruction" = type <{ %"class.llvm::User", %"class.llvm::ilist_node_with_parent.99", %"class.llvm::BasicBlock"*, %"class.llvm::DebugLoc", i32, [4 x i8] }>

$_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE = comdat any

@_ZN4llvm23EnableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm29VerifyEnableABIBreakingChecksE = weak hidden local_unnamed_addr global i32* @_ZN4llvm23EnableABIBreakingChecksE, align 8
@_ZL7Context = internal global %"class.llvm::LLVMContext" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZL7Builder = internal global %"class.llvm::IRBuilder" zeroinitializer, align 8
@_ZL12ModuleObject = internal unnamed_addr global %"class.llvm::Module"* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"simple compile\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"empty_func\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@_ZTVN4llvm14ConstantFolderE = external unnamed_addr constant { [53 x i8*] }
@_ZTVN4llvm24IRBuilderDefaultInserterE = external unnamed_addr constant { [5 x i8*] }
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_generate_basic_blocks.cpp, i8* null }]

declare void @_ZN4llvm11LLVMContextC1Ev(%"class.llvm::LLVMContext"*) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN4llvm11LLVMContextD1Ev(%"class.llvm::LLVMContext"*) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEED2Ev(%"class.llvm::IRBuilder"*) unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* %0, i64 0, i32 2
  tail call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(%"class.llvm::IRBuilderDefaultInserter"* nonnull %2) #2
  %3 = getelementptr inbounds %"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* %0, i64 0, i32 1, i32 0
  tail call void @_ZN4llvm15IRBuilderFolderD2Ev(%"class.llvm::IRBuilderFolder"* nonnull %3) #2
  %4 = getelementptr inbounds %"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = load %"class.llvm::Metadata"*, %"class.llvm::Metadata"** %4, align 8, !tbaa !2
  %6 = icmp eq %"class.llvm::Metadata"* %5, null
  br i1 %6, label %12, label %7

; <label>:7:                                      ; preds = %1
  %8 = bitcast %"class.llvm::IRBuilder"* %0 to i8*
  invoke void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(i8* nonnull %8, %"class.llvm::Metadata"* nonnull dereferenceable(8) %5)
          to label %12 unwind label %9

; <label>:9:                                      ; preds = %7
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  tail call void @__clang_call_terminate(i8* %11) #10
  unreachable

; <label>:12:                                     ; preds = %1, %7
  ret void
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4llvm6ModuleC1ENS_9StringRefERNS_11LLVMContextE(%"class.llvm::Module"*, i8*, i64, %"class.llvm::LLVMContext"* dereferenceable(8)) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #5

; Function Attrs: uwtable
define %"class.llvm::Function"* @_Z10createFuncRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.llvm::IRBuilder"* nocapture readonly dereferenceable(96), %"class.std::__cxx11::basic_string"*) local_unnamed_addr #6 personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca %"class.llvm::Type"*, align 8
  %4 = alloca %"class.llvm::Twine", align 8
  %5 = getelementptr inbounds %"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* %0, i64 0, i32 0, i32 3
  %6 = load %"class.llvm::LLVMContext"*, %"class.llvm::LLVMContext"** %5, align 8, !tbaa !7
  %7 = tail call %"class.llvm::IntegerType"* @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(%"class.llvm::LLVMContext"* dereferenceable(8) %6)
  %8 = getelementptr inbounds %"class.llvm::IntegerType", %"class.llvm::IntegerType"* %7, i64 0, i32 0
  %9 = bitcast %"class.llvm::Type"** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #2
  store %"class.llvm::Type"* null, %"class.llvm::Type"** %3, align 8, !tbaa !19
  %10 = call %"class.llvm::FunctionType"* @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(%"class.llvm::Type"* %8, %"class.llvm::Type"** nonnull %3, i64 1, i1 zeroext false)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #2
  %11 = bitcast %"class.llvm::Twine"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #2
  %12 = getelementptr inbounds %"class.llvm::Twine", %"class.llvm::Twine"* %4, i64 0, i32 2
  store i8 4, i8* %12, align 8, !tbaa !20
  %13 = getelementptr inbounds %"class.llvm::Twine", %"class.llvm::Twine"* %4, i64 0, i32 3
  store i8 1, i8* %13, align 1, !tbaa !23
  %14 = bitcast %"class.llvm::Twine"* %4 to %"class.std::__cxx11::basic_string"**
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %14, align 8, !tbaa !24
  %15 = load %"class.llvm::Module"*, %"class.llvm::Module"** @_ZL12ModuleObject, align 8, !tbaa !19
  %16 = call i8* @_ZN4llvm4UsernwEm(i64 120)
  %17 = bitcast i8* %16 to %"class.llvm::Function"*
  invoke void @_ZN4llvm8FunctionC1EPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesEjRKNS_5TwineEPNS_6ModuleE(%"class.llvm::Function"* %17, %"class.llvm::FunctionType"* %10, i32 0, i32 -1, %"class.llvm::Twine"* nonnull dereferenceable(24) %4, %"class.llvm::Module"* %15)
          to label %20 unwind label %18

; <label>:18:                                     ; preds = %2
  %19 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4llvm4UserdlEPv(i8* %16) #2
  resume { i8*, i32 } %19

; <label>:20:                                     ; preds = %2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #2
  ret %"class.llvm::Function"* %17
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

declare %"class.llvm::FunctionType"* @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(%"class.llvm::Type"*, %"class.llvm::Type"**, i64, i1 zeroext) local_unnamed_addr #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: uwtable
define nonnull %"class.llvm::BasicBlock"* @_Z8createBBPN4llvm8FunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.llvm::Function"*, %"class.std::__cxx11::basic_string"*) local_unnamed_addr #6 personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca %"class.llvm::Twine", align 8
  %4 = bitcast %"class.llvm::Twine"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #2
  %5 = getelementptr inbounds %"class.llvm::Twine", %"class.llvm::Twine"* %3, i64 0, i32 2
  store i8 4, i8* %5, align 8, !tbaa !20
  %6 = getelementptr inbounds %"class.llvm::Twine", %"class.llvm::Twine"* %3, i64 0, i32 3
  store i8 1, i8* %6, align 1, !tbaa !23
  %7 = bitcast %"class.llvm::Twine"* %3 to %"class.std::__cxx11::basic_string"**
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %7, align 8, !tbaa !24
  %8 = tail call i8* @_Znwm(i64 64) #11
  %9 = bitcast i8* %8 to %"class.llvm::BasicBlock"*
  invoke void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(%"class.llvm::BasicBlock"* nonnull %9, %"class.llvm::LLVMContext"* nonnull dereferenceable(8) @_ZL7Context, %"class.llvm::Twine"* nonnull dereferenceable(24) %3, %"class.llvm::Function"* %0, %"class.llvm::BasicBlock"* null)
          to label %12 unwind label %10

; <label>:10:                                     ; preds = %2
  %11 = landingpad { i8*, i32 }
          cleanup
  call void @_ZdlPv(i8* nonnull %8) #12
  resume { i8*, i32 } %11

; <label>:12:                                     ; preds = %2
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #2
  ret %"class.llvm::BasicBlock"* %9
}

; Function Attrs: norecurse uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #8 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.llvm::Twine", align 8
  %4 = alloca %"class.llvm::Twine", align 8
  %5 = alloca %"class.llvm::Type"*, align 8
  %6 = alloca %"class.llvm::Twine", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %10 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  store %union.anon* %9, %union.anon** %10, align 8, !tbaa !25
  %11 = bitcast %union.anon* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %11, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 10, i32 1, i1 false) #2
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  store i64 10, i64* %12, align 8, !tbaa !27
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 1, i64 2
  store i8 0, i8* %13, align 2, !tbaa !24
  %14 = load %"class.llvm::LLVMContext"*, %"class.llvm::LLVMContext"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 3), align 8, !tbaa !7
  %15 = invoke %"class.llvm::IntegerType"* @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(%"class.llvm::LLVMContext"* dereferenceable(8) %14)
          to label %16 unwind label %74

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %"class.llvm::IntegerType", %"class.llvm::IntegerType"* %15, i64 0, i32 0
  %18 = bitcast %"class.llvm::Type"** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #2
  store %"class.llvm::Type"* null, %"class.llvm::Type"** %5, align 8, !tbaa !19
  %19 = invoke %"class.llvm::FunctionType"* @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(%"class.llvm::Type"* %17, %"class.llvm::Type"** nonnull %5, i64 1, i1 zeroext false)
          to label %20 unwind label %74

; <label>:20:                                     ; preds = %16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #2
  %21 = bitcast %"class.llvm::Twine"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %21) #2
  %22 = getelementptr inbounds %"class.llvm::Twine", %"class.llvm::Twine"* %6, i64 0, i32 2
  store i8 4, i8* %22, align 8, !tbaa !20
  %23 = getelementptr inbounds %"class.llvm::Twine", %"class.llvm::Twine"* %6, i64 0, i32 3
  store i8 1, i8* %23, align 1, !tbaa !23
  %24 = bitcast %"class.llvm::Twine"* %6 to %"class.std::__cxx11::basic_string"**
  store %"class.std::__cxx11::basic_string"* %7, %"class.std::__cxx11::basic_string"** %24, align 8, !tbaa !24
  %25 = load %"class.llvm::Module"*, %"class.llvm::Module"** @_ZL12ModuleObject, align 8, !tbaa !19
  %26 = invoke i8* @_ZN4llvm4UsernwEm(i64 120)
          to label %27 unwind label %74

; <label>:27:                                     ; preds = %20
  %28 = bitcast i8* %26 to %"class.llvm::Function"*
  invoke void @_ZN4llvm8FunctionC1EPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesEjRKNS_5TwineEPNS_6ModuleE(%"class.llvm::Function"* %28, %"class.llvm::FunctionType"* %19, i32 0, i32 -1, %"class.llvm::Twine"* nonnull dereferenceable(24) %6, %"class.llvm::Module"* %25)
          to label %31 unwind label %29

; <label>:29:                                     ; preds = %27
  %30 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4llvm4UserdlEPv(i8* %26) #2
  br label %76

; <label>:31:                                     ; preds = %27
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %21) #2
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !29
  %34 = icmp eq i8* %33, %11
  br i1 %34, label %36, label %35

; <label>:35:                                     ; preds = %31
  call void @_ZdlPv(i8* %33) #2
  br label %36

; <label>:36:                                     ; preds = %31, %35
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2
  %38 = bitcast %"class.std::__cxx11::basic_string"* %8 to %union.anon**
  store %union.anon* %37, %union.anon** %38, align 8, !tbaa !25
  %39 = bitcast %union.anon* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %39, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 5, i32 1, i1 false) #2
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 1
  store i64 5, i64* %40, align 8, !tbaa !27
  %41 = getelementptr inbounds i8, i8* %39, i64 5
  store i8 0, i8* %41, align 1, !tbaa !24
  %42 = bitcast %"class.llvm::Twine"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %42) #2
  %43 = getelementptr inbounds %"class.llvm::Twine", %"class.llvm::Twine"* %4, i64 0, i32 2
  store i8 4, i8* %43, align 8, !tbaa !20
  %44 = getelementptr inbounds %"class.llvm::Twine", %"class.llvm::Twine"* %4, i64 0, i32 3
  store i8 1, i8* %44, align 1, !tbaa !23
  %45 = bitcast %"class.llvm::Twine"* %4 to %"class.std::__cxx11::basic_string"**
  store %"class.std::__cxx11::basic_string"* %8, %"class.std::__cxx11::basic_string"** %45, align 8, !tbaa !24
  %46 = invoke i8* @_Znwm(i64 64) #11
          to label %47 unwind label %84

; <label>:47:                                     ; preds = %36
  %48 = bitcast i8* %46 to %"class.llvm::BasicBlock"*
  invoke void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(%"class.llvm::BasicBlock"* nonnull %48, %"class.llvm::LLVMContext"* nonnull dereferenceable(8) @_ZL7Context, %"class.llvm::Twine"* nonnull dereferenceable(24) %4, %"class.llvm::Function"* %28, %"class.llvm::BasicBlock"* null)
          to label %49 unwind label %88

; <label>:49:                                     ; preds = %47
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %42) #2
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8, !tbaa !29
  %52 = icmp eq i8* %51, %39
  br i1 %52, label %54, label %53

; <label>:53:                                     ; preds = %49
  call void @_ZdlPv(i8* %51) #2
  br label %54

; <label>:54:                                     ; preds = %49, %53
  store i8* %46, i8** bitcast (%"class.llvm::BasicBlock"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 1) to i8**), align 8, !tbaa !30
  %55 = getelementptr inbounds i8, i8* %46, i64 40
  store i8* %55, i8** bitcast (%"class.llvm::ilist_node_impl.0"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 2, i32 0) to i8**), align 8
  %56 = load %"class.llvm::LLVMContext"*, %"class.llvm::LLVMContext"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 3), align 8, !tbaa !7
  %57 = call i8* @_ZN4llvm4UsernwEmj(i64 64, i32 0)
  %58 = bitcast i8* %57 to %"class.llvm::ReturnInst"*
  invoke void @_ZN4llvm10ReturnInstC1ERNS_11LLVMContextEPNS_5ValueEPNS_11InstructionE(%"class.llvm::ReturnInst"* %58, %"class.llvm::LLVMContext"* nonnull dereferenceable(8) %56, %"class.llvm::Value"* null, %"class.llvm::Instruction"* null)
          to label %61 unwind label %59

; <label>:59:                                     ; preds = %54
  %60 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4llvm4UserdlEPv(i8* %57) #2
  resume { i8*, i32 } %60

; <label>:61:                                     ; preds = %54
  %62 = bitcast %"class.llvm::Twine"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %62) #2
  %63 = getelementptr inbounds %"class.llvm::Twine", %"class.llvm::Twine"* %3, i64 0, i32 2
  %64 = bitcast i8* %63 to i16*
  store i16 257, i16* %64, align 8
  %65 = load %"class.llvm::IRBuilderDefaultInserter"*, %"class.llvm::IRBuilderDefaultInserter"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 5), align 8, !tbaa !31
  %66 = bitcast %"class.llvm::IRBuilderDefaultInserter"* %65 to void (%"class.llvm::IRBuilderDefaultInserter"*, %"class.llvm::Instruction"*, %"class.llvm::Twine"*, %"class.llvm::BasicBlock"*, %"class.llvm::ilist_node_impl.0"*)***
  %67 = load void (%"class.llvm::IRBuilderDefaultInserter"*, %"class.llvm::Instruction"*, %"class.llvm::Twine"*, %"class.llvm::BasicBlock"*, %"class.llvm::ilist_node_impl.0"*)**, void (%"class.llvm::IRBuilderDefaultInserter"*, %"class.llvm::Instruction"*, %"class.llvm::Twine"*, %"class.llvm::BasicBlock"*, %"class.llvm::ilist_node_impl.0"*)*** %66, align 8, !tbaa !32
  %68 = getelementptr inbounds void (%"class.llvm::IRBuilderDefaultInserter"*, %"class.llvm::Instruction"*, %"class.llvm::Twine"*, %"class.llvm::BasicBlock"*, %"class.llvm::ilist_node_impl.0"*)*, void (%"class.llvm::IRBuilderDefaultInserter"*, %"class.llvm::Instruction"*, %"class.llvm::Twine"*, %"class.llvm::BasicBlock"*, %"class.llvm::ilist_node_impl.0"*)** %67, i64 2
  %69 = load void (%"class.llvm::IRBuilderDefaultInserter"*, %"class.llvm::Instruction"*, %"class.llvm::Twine"*, %"class.llvm::BasicBlock"*, %"class.llvm::ilist_node_impl.0"*)*, void (%"class.llvm::IRBuilderDefaultInserter"*, %"class.llvm::Instruction"*, %"class.llvm::Twine"*, %"class.llvm::BasicBlock"*, %"class.llvm::ilist_node_impl.0"*)** %68, align 8
  %70 = bitcast i8* %57 to %"class.llvm::Instruction"*
  %71 = load %"class.llvm::BasicBlock"*, %"class.llvm::BasicBlock"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 1), align 8, !tbaa !30
  %72 = load %"class.llvm::ilist_node_impl.0"*, %"class.llvm::ilist_node_impl.0"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 2, i32 0), align 8
  call void %69(%"class.llvm::IRBuilderDefaultInserter"* %65, %"class.llvm::Instruction"* %70, %"class.llvm::Twine"* nonnull dereferenceable(24) %3, %"class.llvm::BasicBlock"* %71, %"class.llvm::ilist_node_impl.0"* %72)
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(%"class.llvm::IRBuilderBase"* nonnull getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0), %"class.llvm::Instruction"* %70)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %62) #2
  %73 = load %"class.llvm::Module"*, %"class.llvm::Module"** @_ZL12ModuleObject, align 8, !tbaa !19
  call void @_ZNK4llvm6Module4dumpEv(%"class.llvm::Module"* %73)
  ret i32 0

; <label>:74:                                     ; preds = %20, %16, %2
  %75 = landingpad { i8*, i32 }
          cleanup
  br label %76

; <label>:76:                                     ; preds = %29, %74
  %77 = phi { i8*, i32 } [ %75, %74 ], [ %30, %29 ]
  %78 = extractvalue { i8*, i32 } %77, 0
  %79 = extractvalue { i8*, i32 } %77, 1
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8, !tbaa !29
  %82 = icmp eq i8* %81, %11
  br i1 %82, label %96, label %83

; <label>:83:                                     ; preds = %76
  call void @_ZdlPv(i8* %81) #2
  br label %96

; <label>:84:                                     ; preds = %36
  %85 = landingpad { i8*, i32 }
          cleanup
  %86 = extractvalue { i8*, i32 } %85, 0
  %87 = extractvalue { i8*, i32 } %85, 1
  br label %96

; <label>:88:                                     ; preds = %47
  %89 = landingpad { i8*, i32 }
          cleanup
  call void @_ZdlPv(i8* nonnull %46) #12
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8, !tbaa !29
  %92 = extractvalue { i8*, i32 } %89, 0
  %93 = extractvalue { i8*, i32 } %89, 1
  %94 = icmp eq i8* %91, %39
  br i1 %94, label %96, label %95

; <label>:95:                                     ; preds = %88
  call void @_ZdlPv(i8* %91) #2
  br label %96

; <label>:96:                                     ; preds = %84, %88, %95, %76, %83
  %97 = phi i32 [ %79, %76 ], [ %79, %83 ], [ %93, %88 ], [ %93, %95 ], [ %87, %84 ]
  %98 = phi i8* [ %78, %76 ], [ %78, %83 ], [ %92, %88 ], [ %92, %95 ], [ %86, %84 ]
  %99 = insertvalue { i8*, i32 } undef, i8* %98, 0
  %100 = insertvalue { i8*, i32 } %99, i32 %97, 1
  resume { i8*, i32 } %100
}

declare void @_ZNK4llvm6Module4dumpEv(%"class.llvm::Module"*) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(%"class.llvm::IRBuilderDefaultInserter"*) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4llvm15IRBuilderFolderD2Ev(%"class.llvm::IRBuilderFolder"*) unnamed_addr #1

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #9 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #2
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(i8*, %"class.llvm::Metadata"* dereferenceable(8)) local_unnamed_addr #0

declare %"class.llvm::IntegerType"* @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(%"class.llvm::LLVMContext"* dereferenceable(8)) local_unnamed_addr #0

declare i8* @_ZN4llvm4UsernwEm(i64) local_unnamed_addr #0

declare void @_ZN4llvm8FunctionC1EPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesEjRKNS_5TwineEPNS_6ModuleE(%"class.llvm::Function"*, %"class.llvm::FunctionType"*, i32, i32, %"class.llvm::Twine"* dereferenceable(24), %"class.llvm::Module"*) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN4llvm4UserdlEPv(i8*) local_unnamed_addr #1

declare void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(%"class.llvm::BasicBlock"*, %"class.llvm::LLVMContext"* dereferenceable(8), %"class.llvm::Twine"* dereferenceable(24), %"class.llvm::Function"*, %"class.llvm::BasicBlock"*) unnamed_addr #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: uwtable
define linkonce_odr void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(%"class.llvm::IRBuilderBase"*, %"class.llvm::Instruction"*) local_unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.llvm::DebugLoc", align 8
  %4 = bitcast %"class.llvm::IRBuilderBase"* %0 to %"class.llvm::MDNode"**
  %5 = load %"class.llvm::MDNode"*, %"class.llvm::MDNode"** %4, align 8, !tbaa !2
  %6 = icmp eq %"class.llvm::MDNode"* %5, null
  br i1 %6, label %54, label %7

; <label>:7:                                      ; preds = %2
  %8 = ptrtoint %"class.llvm::MDNode"* %5 to i64
  %9 = bitcast %"class.llvm::DebugLoc"* %3 to i64*
  store i64 %8, i64* %9, align 8, !tbaa !2
  %10 = getelementptr inbounds %"class.llvm::MDNode", %"class.llvm::MDNode"* %5, i64 0, i32 0
  %11 = bitcast %"class.llvm::DebugLoc"* %3 to i8*
  %12 = call zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_EEE(i8* nonnull %11, %"class.llvm::Metadata"* nonnull dereferenceable(8) %10, i64 2)
  %13 = getelementptr inbounds %"class.llvm::Instruction", %"class.llvm::Instruction"* %1, i64 0, i32 3
  %14 = icmp eq %"class.llvm::DebugLoc"* %13, %3
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %"class.llvm::DebugLoc", %"class.llvm::DebugLoc"* %3, i64 0, i32 0, i32 0, i32 0
  %17 = load %"class.llvm::Metadata"*, %"class.llvm::Metadata"** %16, align 8, !tbaa !2
  br label %35

; <label>:18:                                     ; preds = %7
  %19 = getelementptr inbounds %"class.llvm::DebugLoc", %"class.llvm::DebugLoc"* %13, i64 0, i32 0, i32 0, i32 0
  %20 = load %"class.llvm::Metadata"*, %"class.llvm::Metadata"** %19, align 8, !tbaa !2
  %21 = icmp eq %"class.llvm::Metadata"* %20, null
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %18
  %23 = bitcast %"class.llvm::DebugLoc"* %13 to i8*
  invoke void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(i8* nonnull %23, %"class.llvm::Metadata"* nonnull dereferenceable(8) %20)
          to label %24 unwind label %43

; <label>:24:                                     ; preds = %18, %22
  %25 = load i64, i64* %9, align 8, !tbaa !2
  %26 = bitcast %"class.llvm::DebugLoc"* %13 to i64*
  store i64 %25, i64* %26, align 8, !tbaa !2
  %27 = inttoptr i64 %25 to %"class.llvm::Metadata"*
  %28 = getelementptr inbounds %"class.llvm::DebugLoc", %"class.llvm::DebugLoc"* %3, i64 0, i32 0, i32 0, i32 0
  %29 = icmp eq i64 %25, 0
  br i1 %29, label %35, label %30

; <label>:30:                                     ; preds = %24
  %31 = bitcast %"class.llvm::DebugLoc"* %3 to i8*
  %32 = bitcast %"class.llvm::DebugLoc"* %13 to i8*
  %33 = invoke zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(i8* nonnull %31, %"class.llvm::Metadata"* nonnull dereferenceable(8) %27, i8* nonnull %32)
          to label %34 unwind label %43

; <label>:34:                                     ; preds = %30
  store %"class.llvm::Metadata"* null, %"class.llvm::Metadata"** %28, align 8, !tbaa !2
  br label %54

; <label>:35:                                     ; preds = %15, %24
  %36 = phi %"class.llvm::Metadata"* [ %17, %15 ], [ %27, %24 ]
  %37 = icmp eq %"class.llvm::Metadata"* %36, null
  br i1 %37, label %54, label %38

; <label>:38:                                     ; preds = %35
  %39 = bitcast %"class.llvm::DebugLoc"* %3 to i8*
  invoke void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(i8* nonnull %39, %"class.llvm::Metadata"* nonnull dereferenceable(8) %36)
          to label %54 unwind label %40

; <label>:40:                                     ; preds = %38
  %41 = landingpad { i8*, i32 }
          catch i8* null
  %42 = extractvalue { i8*, i32 } %41, 0
  call void @__clang_call_terminate(i8* %42) #10
  unreachable

; <label>:43:                                     ; preds = %30, %22
  %44 = landingpad { i8*, i32 }
          cleanup
  %45 = getelementptr inbounds %"class.llvm::DebugLoc", %"class.llvm::DebugLoc"* %3, i64 0, i32 0, i32 0, i32 0
  %46 = load %"class.llvm::Metadata"*, %"class.llvm::Metadata"** %45, align 8, !tbaa !2
  %47 = icmp eq %"class.llvm::Metadata"* %46, null
  br i1 %47, label %53, label %48

; <label>:48:                                     ; preds = %43
  %49 = bitcast %"class.llvm::DebugLoc"* %3 to i8*
  invoke void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(i8* nonnull %49, %"class.llvm::Metadata"* nonnull dereferenceable(8) %46)
          to label %53 unwind label %50

; <label>:50:                                     ; preds = %48
  %51 = landingpad { i8*, i32 }
          catch i8* null
  %52 = extractvalue { i8*, i32 } %51, 0
  call void @__clang_call_terminate(i8* %52) #10
  unreachable

; <label>:53:                                     ; preds = %43, %48
  resume { i8*, i32 } %44

; <label>:54:                                     ; preds = %34, %2, %38, %35
  ret void
}

declare zeroext i1 @_ZN4llvm16MetadataTracking7retrackEPvRNS_8MetadataES1_(i8*, %"class.llvm::Metadata"* dereferenceable(8), i8*) local_unnamed_addr #0

declare zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_EEE(i8*, %"class.llvm::Metadata"* dereferenceable(8), i64) local_unnamed_addr #0

declare i8* @_ZN4llvm4UsernwEmj(i64, i32) local_unnamed_addr #0

declare void @_ZN4llvm10ReturnInstC1ERNS_11LLVMContextEPNS_5ValueEPNS_11InstructionE(%"class.llvm::ReturnInst"*, %"class.llvm::LLVMContext"* dereferenceable(8), %"class.llvm::Value"*, %"class.llvm::Instruction"*) unnamed_addr #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_generate_basic_blocks.cpp() #6 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
  tail call void @_ZN4llvm11LLVMContextC1Ev(%"class.llvm::LLVMContext"* nonnull @_ZL7Context)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.llvm::LLVMContext"*)* @_ZN4llvm11LLVMContextD1Ev to void (i8*)*), i8* bitcast (%"class.llvm::LLVMContext"* @_ZL7Context to i8*), i8* nonnull @__dso_handle) #2
  store %"class.llvm::Metadata"* null, %"class.llvm::Metadata"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8, !tbaa !2
  store %"class.llvm::LLVMContext"* @_ZL7Context, %"class.llvm::LLVMContext"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 3), align 8, !tbaa !19
  store %"class.llvm::IRBuilderFolder"* getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 1, i32 0), %"class.llvm::IRBuilderFolder"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 4), align 8, !tbaa !19
  store %"class.llvm::IRBuilderDefaultInserter"* getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 2), %"class.llvm::IRBuilderDefaultInserter"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 5), align 8, !tbaa !19
  store %"class.llvm::MDNode"* null, %"class.llvm::MDNode"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 6), align 8, !tbaa !34
  store i32 0, i32* getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 7, i32 0), align 8, !tbaa !35
  store i8 0, i8* getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 8), align 4, !tbaa !36
  store i8 2, i8* getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 9), align 1, !tbaa !37
  store i8 7, i8* getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 10), align 2, !tbaa !38
  tail call void @llvm.memset.p0i8.i64(i8* nonnull bitcast (%"class.llvm::BasicBlock"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 1) to i8*), i8 0, i64 16, i32 8, i1 false) #2
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (%"class.llvm::OperandBundleDefT"** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 0, i32 11, i32 0) to i8*), i8 0, i64 16, i32 8, i1 false)
  store <2 x i32 (...)**> <i32 (...)** bitcast (i8** getelementptr inbounds ({ [53 x i8*] }, { [53 x i8*] }* @_ZTVN4llvm14ConstantFolderE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 0, inrange i32 0, i64 2) to i32 (...)**)>, <2 x i32 (...)**>* bitcast (i32 (...)*** getelementptr inbounds (%"class.llvm::IRBuilder", %"class.llvm::IRBuilder"* @_ZL7Builder, i64 0, i32 1, i32 0, i32 0) to <2 x i32 (...)**>*), align 8, !tbaa !32
  %2 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.llvm::IRBuilder"*)* @_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEED2Ev to void (i8*)*), i8* bitcast (%"class.llvm::IRBuilder"* @_ZL7Builder to i8*), i8* nonnull @__dso_handle) #2
  %3 = tail call i8* @_Znwm(i64 744) #11
  %4 = bitcast i8* %3 to %"class.llvm::Module"*
  invoke void @_ZN4llvm6ModuleC1ENS_9StringRefERNS_11LLVMContextE(%"class.llvm::Module"* nonnull %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 14, %"class.llvm::LLVMContext"* nonnull dereferenceable(8) @_ZL7Context)
          to label %7 unwind label %5

; <label>:5:                                      ; preds = %0
  %6 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZdlPv(i8* nonnull %3) #12
  resume { i8*, i32 } %6

; <label>:7:                                      ; preds = %0
  store i8* %3, i8** bitcast (%"class.llvm::Module"** @_ZL12ModuleObject to i8**), align 8, !tbaa !19
  ret void
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"_ZTSN4llvm13TrackingMDRefE", !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 24}
!8 = !{!"_ZTSN4llvm13IRBuilderBaseE", !9, i64 0, !4, i64 8, !11, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !12, i64 56, !14, i64 60, !15, i64 61, !16, i64 62, !17, i64 64}
!9 = !{!"_ZTSN4llvm8DebugLocE", !10, i64 0}
!10 = !{!"_ZTSN4llvm18TypedTrackingMDRefINS_6MDNodeEEE", !3, i64 0}
!11 = !{!"_ZTSN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb1ELb0EvEELb0ELb0EEE", !4, i64 0}
!12 = !{!"_ZTSN4llvm13FastMathFlagsE", !13, i64 0}
!13 = !{!"int", !5, i64 0}
!14 = !{!"bool", !5, i64 0}
!15 = !{!"_ZTSN4llvm2fp17ExceptionBehaviorE", !5, i64 0}
!16 = !{!"_ZTSN4llvm12RoundingModeE", !5, i64 0}
!17 = !{!"_ZTSN4llvm8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE", !4, i64 0, !18, i64 8}
!18 = !{!"long", !5, i64 0}
!19 = !{!4, !4, i64 0}
!20 = !{!21, !22, i64 16}
!21 = !{!"_ZTSN4llvm5TwineE", !5, i64 0, !5, i64 8, !22, i64 16, !22, i64 17}
!22 = !{!"_ZTSN4llvm5Twine8NodeKindE", !5, i64 0}
!23 = !{!21, !22, i64 17}
!24 = !{!5, !5, i64 0}
!25 = !{!26, !4, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !4, i64 0}
!27 = !{!28, !18, i64 8}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !18, i64 8, !5, i64 16}
!29 = !{!28, !4, i64 0}
!30 = !{!8, !4, i64 8}
!31 = !{!8, !4, i64 40}
!32 = !{!33, !33, i64 0}
!33 = !{!"vtable pointer", !6, i64 0}
!34 = !{!8, !4, i64 48}
!35 = !{!12, !13, i64 0}
!36 = !{!8, !14, i64 60}
!37 = !{!8, !15, i64 61}
!38 = !{!8, !16, i64 62}
