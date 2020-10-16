; ModuleID = 'block_shuffled.bc'
source_filename = "hello.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<char, std::allocator<char> >::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char> >::_Vector_impl" = type { i8*, i8*, i8* }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@global1 = local_unnamed_addr global i32 1, align 4
@global2 = local_unnamed_addr global i32 2, align 4
@global_alias_int = local_unnamed_addr global i32 1, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"alias string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define void @_Z9test_loopRSt6vectorIcSaIcEE(%"class.std::vector"* nocapture readonly dereferenceable(24) %0) local_unnamed_addr #0 {
_Z9test_loopRSt6vectorIcSaIcEE0:
  %1 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8, !tbaa !2
  %3 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 1
  %4 = load i8*, i8** %3, align 8, !tbaa !2
  %5 = icmp eq i8* %2, %4
  br i1 %5, label %_Z9test_loopRSt6vectorIcSaIcEE02, label %_Z9test_loopRSt6vectorIcSaIcEE01

_Z9test_loopRSt6vectorIcSaIcEE03:                 ; preds = %_Z9test_loopRSt6vectorIcSaIcEE01, %_Z9test_loopRSt6vectorIcSaIcEE03
  %6 = phi i8* [ %10, %_Z9test_loopRSt6vectorIcSaIcEE03 ], [ %2, %_Z9test_loopRSt6vectorIcSaIcEE01 ]
  %7 = load i8, i8* %6, align 1, !tbaa !6
  %8 = sext i8 %7 to i32
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = getelementptr inbounds i8, i8* %6, i64 1
  %11 = icmp eq i8* %10, %4
  br i1 %11, label %_Z9test_loopRSt6vectorIcSaIcEE02, label %_Z9test_loopRSt6vectorIcSaIcEE03

_Z9test_loopRSt6vectorIcSaIcEE01:                 ; preds = %_Z9test_loopRSt6vectorIcSaIcEE0
  br label %_Z9test_loopRSt6vectorIcSaIcEE03

_Z9test_loopRSt6vectorIcSaIcEE02:                 ; preds = %_Z9test_loopRSt6vectorIcSaIcEE03, %_Z9test_loopRSt6vectorIcSaIcEE0
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind readnone uwtable
define void @_Z24our_testy_empty_functionv() local_unnamed_addr #3 {
_Z24our_testy_empty_functionv0:
  ret void
}

; Function Attrs: norecurse uwtable
define i32 @main() local_unnamed_addr #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
main0:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8
  %1 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %3 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %2, %union.anon** %3, align 8, !tbaa !7
  %4 = bitcast %union.anon* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 12, i1 false)
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 12, i64* %5, align 8, !tbaa !9
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 1, i64 4
  store i8 0, i8* %6, align 4, !tbaa !6
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %union.anon* nonnull %2)
  %9 = invoke i8* @_Znwm(i64 4)
          to label %main01 unwind label %main04

main02:                                           ; preds = %main01
  call void @_ZdlPv(i8* %14) #7
  br label %main03

main06:                                           ; preds = %main05, %main04
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7
  resume { i8*, i32 } %16

main03:                                           ; preds = %main01, %main02
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7
  ret i32 0

main01:                                           ; preds = %main0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 97) #7
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 98) #7
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 99) #7
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 100) #7
  call void @_ZdlPv(i8* nonnull %9) #7
  %14 = load i8*, i8** %7, align 8, !tbaa !12
  %15 = icmp eq i8* %14, %4
  br i1 %15, label %main03, label %main02

main05:                                           ; preds = %main04
  call void @_ZdlPv(i8* %17) #7
  br label %main06

main04:                                           ; preds = %main0
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %7, align 8, !tbaa !12
  %18 = icmp eq i8* %17, %4
  br i1 %18, label %main06, label %main05
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #5

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !3, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !3, i64 0}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !11, i64 8, !4, i64 16}
!11 = !{!"long", !4, i64 0}
!12 = !{!10, !3, i64 0}
