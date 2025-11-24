; ModuleID = 'main.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"Please provide 2 or 3 arguments\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !13, metadata !14), !dbg !15
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !16, metadata !14), !dbg !17
  %12 = load i32, i32* %4, align 4, !dbg !18
  %13 = icmp slt i32 %12, 3, !dbg !20
  br i1 %13, label %17, label %14, !dbg !21

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %4, align 4, !dbg !22
  %16 = icmp sgt i32 %15, 4, !dbg !24
  br i1 %16, label %17, label %20, !dbg !25

; <label>:17:                                     ; preds = %14, %2
  %18 = getelementptr [32 x i8], [32 x i8]* @.str, i32 0, i32 0
  %19 = call i32 (i8*, ...) @printf(i8* %18), !dbg !27
  store i32 5, i32* %3, align 4, !dbg !29
  br label %93, !dbg !29

; <label>:20:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata i8** %6, metadata !30, metadata !14), !dbg !31
  %21 = load i8**, i8*** %5, align 8, !dbg !32
  %22 = getelementptr inbounds i8*, i8** %21, i64 1, !dbg !32
  %23 = load i8*, i8** %22, align 8, !dbg !32
  store i8* %23, i8** %6, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %7, metadata !33, metadata !14), !dbg !35
  %24 = load i8*, i8** %6, align 8, !dbg !36
  %25 = call i64 @strlen(i8* %24) #5, !dbg !37
  %26 = trunc i64 %25 to i32, !dbg !37
  store i32 %26, i32* %7, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %8, metadata !38, metadata !14), !dbg !39
  %27 = load i8**, i8*** %5, align 8, !dbg !40
  %28 = getelementptr inbounds i8*, i8** %27, i64 2, !dbg !40
  %29 = load i8*, i8** %28, align 8, !dbg !40
  %30 = call i32 @atoi(i8* %29) #5, !dbg !41
  store i32 %30, i32* %8, align 4, !dbg !39
  %31 = load i32, i32* %4, align 4, !dbg !42
  %32 = icmp eq i32 %31, 4, !dbg !44
  br i1 %32, label %33, label %41, !dbg !45

; <label>:33:                                     ; preds = %20
  %34 = load i8**, i8*** %5, align 8, !dbg !46
  %35 = getelementptr inbounds i8*, i8** %34, i64 3, !dbg !46
  %36 = load i8*, i8** %35, align 8, !dbg !46
  %37 = call i32 @atoi(i8* %36) #5, !dbg !48
  %38 = add nsw i32 %37, 1, !dbg !49
  %39 = load i32, i32* %8, align 4, !dbg !50
  %40 = udiv i32 %39, %38, !dbg !50
  store i32 %40, i32* %8, align 4, !dbg !50
  br label %41, !dbg !51

; <label>:41:                                     ; preds = %33, %20
  %42 = load i32, i32* %8, align 4, !dbg !52
  %43 = icmp ugt i32 %42, 100, !dbg !54
  br i1 %43, label %44, label %45, !dbg !55

; <label>:44:                                     ; preds = %41
  store i32 100, i32* %8, align 4, !dbg !56
  br label %45, !dbg !58

; <label>:45:                                     ; preds = %44, %41
  call void @llvm.dbg.declare(metadata i8** %9, metadata !59, metadata !14), !dbg !60
  %46 = load i32, i32* %7, align 4, !dbg !61
  %47 = load i32, i32* %8, align 4, !dbg !62
  %48 = mul i32 %46, %47, !dbg !63
  %49 = add i32 %48, 1, !dbg !64
  %50 = zext i32 %49 to i64, !dbg !61
  %51 = call noalias i8* @malloc(i64 %50) #6, !dbg !65
  store i8* %51, i8** %9, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %10, metadata !66, metadata !14), !dbg !68
  store i32 0, i32* %10, align 4, !dbg !68
  br label %52, !dbg !69

; <label>:52:                                     ; preds = %79, %45
  %53 = load i32, i32* %10, align 4, !dbg !70
  %54 = load i32, i32* %8, align 4, !dbg !73
  %55 = icmp ult i32 %53, %54, !dbg !74
  br i1 %55, label %56, label %82, !dbg !75

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata i32* %11, metadata !77, metadata !14), !dbg !80
  store i32 0, i32* %11, align 4, !dbg !80
  br label %57, !dbg !81

; <label>:57:                                     ; preds = %75, %56
  %58 = load i32, i32* %11, align 4, !dbg !82
  %59 = load i32, i32* %7, align 4, !dbg !85
  %60 = icmp ult i32 %58, %59, !dbg !86
  br i1 %60, label %61, label %78, !dbg !87

; <label>:61:                                     ; preds = %57
  %62 = load i8*, i8** %6, align 8, !dbg !89
  %63 = load i32, i32* %11, align 4, !dbg !91
  %64 = zext i32 %63 to i64, !dbg !89
  %65 = getelementptr inbounds i8, i8* %62, i64 %64, !dbg !89
  %66 = load i8, i8* %65, align 1, !dbg !89
  %67 = load i8*, i8** %9, align 8, !dbg !92
  %68 = load i32, i32* %10, align 4, !dbg !93
  %69 = load i32, i32* %7, align 4, !dbg !94
  %70 = mul i32 %68, %69, !dbg !95
  %71 = load i32, i32* %11, align 4, !dbg !96
  %72 = add i32 %70, %71, !dbg !97
  %73 = zext i32 %72 to i64, !dbg !92
  %74 = getelementptr inbounds i8, i8* %67, i64 %73, !dbg !92
  store i8 %66, i8* %74, align 1, !dbg !98
  br label %75, !dbg !99

; <label>:75:                                     ; preds = %61
  %76 = load i32, i32* %11, align 4, !dbg !100
  %77 = add i32 %76, 1, !dbg !100
  store i32 %77, i32* %11, align 4, !dbg !100
  br label %57, !dbg !102, !llvm.loop !103

; <label>:78:                                     ; preds = %57
  br label %79, !dbg !106

; <label>:79:                                     ; preds = %78
  %80 = load i32, i32* %10, align 4, !dbg !107
  %81 = add i32 %80, 1, !dbg !107
  store i32 %81, i32* %10, align 4, !dbg !107
  br label %52, !dbg !109, !llvm.loop !110

; <label>:82:                                     ; preds = %52
  %83 = load i8*, i8** %9, align 8, !dbg !113
  %84 = load i32, i32* %8, align 4, !dbg !114
  %85 = load i32, i32* %7, align 4, !dbg !115
  %86 = mul i32 %84, %85, !dbg !116
  %87 = zext i32 %86 to i64, !dbg !113
  %88 = getelementptr inbounds i8, i8* %83, i64 %87, !dbg !113
  store i8 0, i8* %88, align 1, !dbg !117
  %89 = load i8*, i8** %9, align 8, !dbg !118
  %90 = getelementptr [3 x i8], [3 x i8]* @.str.1, i32 0, i32 0
  %91 = call i32 (i8*, ...) @printf(i8* %90, i8* %89), !dbg !119
  %92 = load i8*, i8** %9, align 8, !dbg !120
  call void @free(i8* %92) #6, !dbg !121
  store i32 0, i32* %3, align 4, !dbg !122
  br label %93, !dbg !122

; <label>:93:                                     ; preds = %82, %17
  %94 = load i32, i32* %3, align 4, !dbg !123
  ret i32 %94, !dbg !123
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3}
!llvm.module.flags = !{!4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "src/main.c", directory: "/home/patrick/Documents/Git/Beacon_CSEC_759_RIT/MyExample1")
!2 = !{}
!3 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !7, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !9, !10}
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocalVariable(name: "argc", arg: 1, scope: !6, file: !1, line: 5, type: !9)
!14 = !DIExpression()
!15 = !DILocation(line: 5, column: 14, scope: !6)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !6, file: !1, line: 5, type: !10)
!17 = !DILocation(line: 5, column: 27, scope: !6)
!18 = !DILocation(line: 6, column: 6, scope: !19)
!19 = distinct !DILexicalBlock(scope: !6, file: !1, line: 6, column: 6)
!20 = !DILocation(line: 6, column: 11, scope: !19)
!21 = !DILocation(line: 6, column: 15, scope: !19)
!22 = !DILocation(line: 6, column: 18, scope: !23)
!23 = !DILexicalBlockFile(scope: !19, file: !1, discriminator: 1)
!24 = !DILocation(line: 6, column: 23, scope: !23)
!25 = !DILocation(line: 6, column: 6, scope: !26)
!26 = !DILexicalBlockFile(scope: !6, file: !1, discriminator: 1)
!27 = !DILocation(line: 7, column: 6, scope: !28)
!28 = distinct !DILexicalBlock(scope: !19, file: !1, line: 6, column: 28)
!29 = !DILocation(line: 8, column: 9, scope: !28)
!30 = !DILocalVariable(name: "base_string", scope: !6, file: !1, line: 10, type: !11)
!31 = !DILocation(line: 10, column: 11, scope: !6)
!32 = !DILocation(line: 10, column: 25, scope: !6)
!33 = !DILocalVariable(name: "base_length", scope: !6, file: !1, line: 11, type: !34)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 11, column: 18, scope: !6)
!36 = !DILocation(line: 11, column: 39, scope: !6)
!37 = !DILocation(line: 11, column: 32, scope: !6)
!38 = !DILocalVariable(name: "multiplier", scope: !6, file: !1, line: 12, type: !34)
!39 = !DILocation(line: 12, column: 18, scope: !6)
!40 = !DILocation(line: 12, column: 36, scope: !6)
!41 = !DILocation(line: 12, column: 31, scope: !6)
!42 = !DILocation(line: 13, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !6, file: !1, line: 13, column: 9)
!44 = !DILocation(line: 13, column: 14, scope: !43)
!45 = !DILocation(line: 13, column: 9, scope: !6)
!46 = !DILocation(line: 14, column: 29, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 13, column: 20)
!48 = !DILocation(line: 14, column: 24, scope: !47)
!49 = !DILocation(line: 14, column: 38, scope: !47)
!50 = !DILocation(line: 14, column: 20, scope: !47)
!51 = !DILocation(line: 15, column: 5, scope: !47)
!52 = !DILocation(line: 16, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !6, file: !1, line: 16, column: 9)
!54 = !DILocation(line: 16, column: 20, scope: !53)
!55 = !DILocation(line: 16, column: 9, scope: !6)
!56 = !DILocation(line: 17, column: 20, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 16, column: 27)
!58 = !DILocation(line: 18, column: 5, scope: !57)
!59 = !DILocalVariable(name: "result_string", scope: !6, file: !1, line: 19, type: !11)
!60 = !DILocation(line: 19, column: 11, scope: !6)
!61 = !DILocation(line: 19, column: 34, scope: !6)
!62 = !DILocation(line: 19, column: 48, scope: !6)
!63 = !DILocation(line: 19, column: 46, scope: !6)
!64 = !DILocation(line: 19, column: 59, scope: !6)
!65 = !DILocation(line: 19, column: 27, scope: !6)
!66 = !DILocalVariable(name: "i", scope: !67, file: !1, line: 20, type: !34)
!67 = distinct !DILexicalBlock(scope: !6, file: !1, line: 20, column: 5)
!68 = !DILocation(line: 20, column: 23, scope: !67)
!69 = !DILocation(line: 20, column: 10, scope: !67)
!70 = !DILocation(line: 20, column: 30, scope: !71)
!71 = !DILexicalBlockFile(scope: !72, file: !1, discriminator: 1)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 20, column: 5)
!73 = !DILocation(line: 20, column: 34, scope: !71)
!74 = !DILocation(line: 20, column: 32, scope: !71)
!75 = !DILocation(line: 20, column: 5, scope: !76)
!76 = !DILexicalBlockFile(scope: !67, file: !1, discriminator: 1)
!77 = !DILocalVariable(name: "j", scope: !78, file: !1, line: 21, type: !34)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 21, column: 9)
!79 = distinct !DILexicalBlock(scope: !72, file: !1, line: 20, column: 51)
!80 = !DILocation(line: 21, column: 27, scope: !78)
!81 = !DILocation(line: 21, column: 14, scope: !78)
!82 = !DILocation(line: 21, column: 34, scope: !83)
!83 = !DILexicalBlockFile(scope: !84, file: !1, discriminator: 1)
!84 = distinct !DILexicalBlock(scope: !78, file: !1, line: 21, column: 9)
!85 = !DILocation(line: 21, column: 38, scope: !83)
!86 = !DILocation(line: 21, column: 36, scope: !83)
!87 = !DILocation(line: 21, column: 9, scope: !88)
!88 = !DILexicalBlockFile(scope: !78, file: !1, discriminator: 1)
!89 = !DILocation(line: 22, column: 46, scope: !90)
!90 = distinct !DILexicalBlock(scope: !84, file: !1, line: 21, column: 56)
!91 = !DILocation(line: 22, column: 58, scope: !90)
!92 = !DILocation(line: 22, column: 13, scope: !90)
!93 = !DILocation(line: 22, column: 27, scope: !90)
!94 = !DILocation(line: 22, column: 29, scope: !90)
!95 = !DILocation(line: 22, column: 28, scope: !90)
!96 = !DILocation(line: 22, column: 41, scope: !90)
!97 = !DILocation(line: 22, column: 40, scope: !90)
!98 = !DILocation(line: 22, column: 44, scope: !90)
!99 = !DILocation(line: 23, column: 9, scope: !90)
!100 = !DILocation(line: 21, column: 52, scope: !101)
!101 = !DILexicalBlockFile(scope: !84, file: !1, discriminator: 2)
!102 = !DILocation(line: 21, column: 9, scope: !101)
!103 = distinct !{!103, !104, !105}
!104 = !DILocation(line: 21, column: 9, scope: !78)
!105 = !DILocation(line: 23, column: 9, scope: !78)
!106 = !DILocation(line: 24, column: 5, scope: !79)
!107 = !DILocation(line: 20, column: 47, scope: !108)
!108 = !DILexicalBlockFile(scope: !72, file: !1, discriminator: 2)
!109 = !DILocation(line: 20, column: 5, scope: !108)
!110 = distinct !{!110, !111, !112}
!111 = !DILocation(line: 20, column: 5, scope: !67)
!112 = !DILocation(line: 24, column: 5, scope: !67)
!113 = !DILocation(line: 25, column: 5, scope: !6)
!114 = !DILocation(line: 25, column: 19, scope: !6)
!115 = !DILocation(line: 25, column: 30, scope: !6)
!116 = !DILocation(line: 25, column: 29, scope: !6)
!117 = !DILocation(line: 25, column: 43, scope: !6)
!118 = !DILocation(line: 27, column: 18, scope: !6)
!119 = !DILocation(line: 27, column: 5, scope: !6)
!120 = !DILocation(line: 29, column: 10, scope: !6)
!121 = !DILocation(line: 29, column: 5, scope: !6)
!122 = !DILocation(line: 31, column: 5, scope: !6)
!123 = !DILocation(line: 32, column: 1, scope: !6)
