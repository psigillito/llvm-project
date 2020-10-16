; ModuleID = 'block_split.bc'
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
  %2 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0
  br label %3

3:                                                ; preds = %1
  %4 = load i8*, i8** %2, align 8, !tbaa !2
  br label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 1
  br label %7

7:                                                ; preds = %5
  %8 = load i8*, i8** %6, align 8, !tbaa !2
  br label %9

9:                                                ; preds = %7
  %10 = icmp eq i8* %4, %8
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  br label %13

12:                                               ; preds = %23, %9
  ret void

13:                                               ; preds = %11, %23
  %14 = phi i8* [ %22, %23 ], [ %4, %11 ]
  br label %15

15:                                               ; preds = %13
  %16 = load i8, i8* %14, align 1, !tbaa !6
  br label %17

17:                                               ; preds = %15
  %18 = sext i8 %16 to i32
  br label %19

19:                                               ; preds = %17
  %20 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, i8* %14, i64 1
  br label %23

23:                                               ; preds = %21
  %24 = icmp eq i8* %22, %8
  br i1 %24, label %12, label %13
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind readnone uwtable
define void @_Z24our_testy_empty_functionv() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: norecurse uwtable
define i32 @main() local_unnamed_addr #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  br label %2

2:                                                ; preds = %0
  %3 = bitcast %"class.std::__cxx11::basic_string"* %1 to i8*
  br label %4

4:                                                ; preds = %2
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #7
  br label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  br label %7

7:                                                ; preds = %5
  %8 = bitcast %"class.std::__cxx11::basic_string"* %1 to %union.anon**
  br label %9

9:                                                ; preds = %7
  store %union.anon* %6, %union.anon** %8, align 8, !tbaa !7
  br label %10

10:                                               ; preds = %9
  %11 = bitcast %union.anon* %6 to i8*
  br label %12

12:                                               ; preds = %10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 12, i1 false)
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  br label %15

15:                                               ; preds = %13
  store i64 12, i64* %14, align 8, !tbaa !9
  br label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2, i32 1, i64 4
  br label %18

18:                                               ; preds = %16
  store i8 0, i8* %17, align 4, !tbaa !6
  br label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  br label %21

21:                                               ; preds = %19
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %union.anon* nonnull %6)
  %23 = invoke i8* @_Znwm(i64 4)
          to label %24 unwind label %39

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 97) #7
  br label %26

26:                                               ; preds = %24
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 98) #7
  br label %28

28:                                               ; preds = %26
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 99) #7
  br label %30

30:                                               ; preds = %28
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 100) #7
  br label %32

32:                                               ; preds = %30
  call void @_ZdlPv(i8* nonnull %23) #7
  br label %33

33:                                               ; preds = %32
  %34 = load i8*, i8** %20, align 8, !tbaa !12
  br label %35

35:                                               ; preds = %33
  %36 = icmp eq i8* %34, %11
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  call void @_ZdlPv(i8* %34) #7
  br label %38

38:                                               ; preds = %35, %37
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #7
  ret i32 0

39:                                               ; preds = %21
  %40 = landingpad { i8*, i32 }
          cleanup
  br label %41

41:                                               ; preds = %39
  %42 = load i8*, i8** %20, align 8, !tbaa !12
  br label %43

43:                                               ; preds = %41
  %44 = icmp eq i8* %42, %11
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  call void @_ZdlPv(i8* %42) #7
  br label %46

46:                                               ; preds = %45, %43
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #7
  resume { i8*, i32 } %40
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
