; ModuleID = 'split_and_shuffled.bc'
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
  br label %_Z9test_loopRSt6vectorIcSaIcEE01

_Z9test_loopRSt6vectorIcSaIcEE03:                 ; preds = %_Z9test_loopRSt6vectorIcSaIcEE02
  %2 = load i8*, i8** %8, align 8, !tbaa !2
  br label %_Z9test_loopRSt6vectorIcSaIcEE04

_Z9test_loopRSt6vectorIcSaIcEE08:                 ; preds = %_Z9test_loopRSt6vectorIcSaIcEE07
  %3 = load i8, i8* %10, align 1, !tbaa !6
  br label %_Z9test_loopRSt6vectorIcSaIcEE09

_Z9test_loopRSt6vectorIcSaIcEE05:                 ; preds = %_Z9test_loopRSt6vectorIcSaIcEE04
  br label %_Z9test_loopRSt6vectorIcSaIcEE07

_Z9test_loopRSt6vectorIcSaIcEE011:                ; preds = %_Z9test_loopRSt6vectorIcSaIcEE010
  %4 = getelementptr inbounds i8, i8* %10, i64 1
  br label %_Z9test_loopRSt6vectorIcSaIcEE012

_Z9test_loopRSt6vectorIcSaIcEE04:                 ; preds = %_Z9test_loopRSt6vectorIcSaIcEE03
  %5 = icmp eq i8* %9, %2
  br i1 %5, label %_Z9test_loopRSt6vectorIcSaIcEE06, label %_Z9test_loopRSt6vectorIcSaIcEE05

_Z9test_loopRSt6vectorIcSaIcEE09:                 ; preds = %_Z9test_loopRSt6vectorIcSaIcEE08
  %6 = sext i8 %3 to i32
  br label %_Z9test_loopRSt6vectorIcSaIcEE010

_Z9test_loopRSt6vectorIcSaIcEE012:                ; preds = %_Z9test_loopRSt6vectorIcSaIcEE011
  %7 = icmp eq i8* %4, %2
  br i1 %7, label %_Z9test_loopRSt6vectorIcSaIcEE06, label %_Z9test_loopRSt6vectorIcSaIcEE07

_Z9test_loopRSt6vectorIcSaIcEE02:                 ; preds = %_Z9test_loopRSt6vectorIcSaIcEE01
  %8 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 1
  br label %_Z9test_loopRSt6vectorIcSaIcEE03

_Z9test_loopRSt6vectorIcSaIcEE01:                 ; preds = %_Z9test_loopRSt6vectorIcSaIcEE0
  %9 = load i8*, i8** %1, align 8, !tbaa !2
  br label %_Z9test_loopRSt6vectorIcSaIcEE02

_Z9test_loopRSt6vectorIcSaIcEE07:                 ; preds = %_Z9test_loopRSt6vectorIcSaIcEE05, %_Z9test_loopRSt6vectorIcSaIcEE012
  %10 = phi i8* [ %4, %_Z9test_loopRSt6vectorIcSaIcEE012 ], [ %9, %_Z9test_loopRSt6vectorIcSaIcEE05 ]
  br label %_Z9test_loopRSt6vectorIcSaIcEE08

_Z9test_loopRSt6vectorIcSaIcEE010:                ; preds = %_Z9test_loopRSt6vectorIcSaIcEE09
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %_Z9test_loopRSt6vectorIcSaIcEE011

_Z9test_loopRSt6vectorIcSaIcEE06:                 ; preds = %_Z9test_loopRSt6vectorIcSaIcEE012, %_Z9test_loopRSt6vectorIcSaIcEE04
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
  br label %main01

main020:                                          ; preds = %main019
  %1 = icmp eq i8* %10, %13
  br i1 %1, label %main022, label %main021

main016:                                          ; preds = %main015
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 99) #7
  br label %main017

main026:                                          ; preds = %main025
  call void @_ZdlPv(i8* %11) #7
  br label %main027

main023:                                          ; preds = %main013
  %3 = landingpad { i8*, i32 }
          cleanup
  br label %main024

main013:                                          ; preds = %main012
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %union.anon* nonnull %15)
  %5 = invoke i8* @_Znwm(i64 4)
          to label %main014 unwind label %main023

main01:                                           ; preds = %main0
  %6 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  br label %main02

main02:                                           ; preds = %main01
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #7
  br label %main03

main04:                                           ; preds = %main03
  %7 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  br label %main05

main025:                                          ; preds = %main024
  %8 = icmp eq i8* %11, %13
  br i1 %8, label %main027, label %main026

main012:                                          ; preds = %main011
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  br label %main013

main018:                                          ; preds = %main017
  call void @_ZdlPv(i8* nonnull %5) #7
  br label %main019

main019:                                          ; preds = %main018
  %10 = load i8*, i8** %9, align 8, !tbaa !7
  br label %main020

main024:                                          ; preds = %main023
  %11 = load i8*, i8** %9, align 8, !tbaa !7
  br label %main025

main021:                                          ; preds = %main020
  call void @_ZdlPv(i8* %10) #7
  br label %main022

main011:                                          ; preds = %main010
  store i8 0, i8* %17, align 4, !tbaa !6
  br label %main012

main014:                                          ; preds = %main013
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 97) #7
  br label %main015

main022:                                          ; preds = %main020, %main021
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #7
  ret i32 0

main06:                                           ; preds = %main05
  %13 = bitcast %union.anon* %15 to i8*
  br label %main07

main08:                                           ; preds = %main07
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  br label %main09

main027:                                          ; preds = %main026, %main025
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #7
  resume { i8*, i32 } %3

main05:                                           ; preds = %main04
  store %union.anon* %15, %union.anon** %7, align 8, !tbaa !11
  br label %main06

main03:                                           ; preds = %main02
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  br label %main04

main017:                                          ; preds = %main016
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 100) #7
  br label %main018

main010:                                          ; preds = %main09
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 1, i64 4
  br label %main011

main09:                                           ; preds = %main08
  store i64 12, i64* %14, align 8, !tbaa !12
  br label %main010

main015:                                          ; preds = %main014
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 98) #7
  br label %main016

main07:                                           ; preds = %main06
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 12, i1 false)
  br label %main08
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
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !10, i64 8, !4, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !3, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!9, !3, i64 0}
!12 = !{!8, !10, i64 8}
