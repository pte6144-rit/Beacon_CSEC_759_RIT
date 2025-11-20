; ModuleID = 'modular.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"Please provide 2 or 3 arguments\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MODFAIL\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

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
  br label %100, !dbg !29

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %4, align 4, !dbg !30
  %22 = srem i32 %21, 2, !dbg !32
  %23 = icmp ne i32 %22, 0, !dbg !32
  br i1 %23, label %24, label %27, !dbg !33

; <label>:24:                                     ; preds = %20
  %25 = getelementptr [8 x i8], [8 x i8]* @.str.1, i32 0, i32 0
  %26 = call i32 (i8*, ...) @printf(i8* %25), !dbg !34
  store i32 18, i32* %3, align 4, !dbg !36
  br label %100, !dbg !36

; <label>:27:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i8** %6, metadata !37, metadata !14), !dbg !38
  %28 = load i8**, i8*** %5, align 8, !dbg !39
  %29 = getelementptr inbounds i8*, i8** %28, i64 1, !dbg !39
  %30 = load i8*, i8** %29, align 8, !dbg !39
  store i8* %30, i8** %6, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %7, metadata !40, metadata !14), !dbg !42
  %31 = load i8*, i8** %6, align 8, !dbg !43
  %32 = call i64 @strlen(i8* %31) #5, !dbg !44
  %33 = trunc i64 %32 to i32, !dbg !44
  store i32 %33, i32* %7, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %8, metadata !45, metadata !14), !dbg !46
  %34 = load i8**, i8*** %5, align 8, !dbg !47
  %35 = getelementptr inbounds i8*, i8** %34, i64 2, !dbg !47
  %36 = load i8*, i8** %35, align 8, !dbg !47
  %37 = call i32 @atoi(i8* %36) #5, !dbg !48
  store i32 %37, i32* %8, align 4, !dbg !46
  %38 = load i32, i32* %4, align 4, !dbg !49
  %39 = icmp eq i32 %38, 4, !dbg !51
  br i1 %39, label %40, label %48, !dbg !52

; <label>:40:                                     ; preds = %27
  %41 = load i8**, i8*** %5, align 8, !dbg !53
  %42 = getelementptr inbounds i8*, i8** %41, i64 3, !dbg !53
  %43 = load i8*, i8** %42, align 8, !dbg !53
  %44 = call i32 @atoi(i8* %43) #5, !dbg !55
  %45 = add nsw i32 %44, 1, !dbg !56
  %46 = load i32, i32* %8, align 4, !dbg !57
  %47 = udiv i32 %46, %45, !dbg !57
  store i32 %47, i32* %8, align 4, !dbg !57
  br label %48, !dbg !58

; <label>:48:                                     ; preds = %40, %27
  %49 = load i32, i32* %8, align 4, !dbg !59
  %50 = icmp ugt i32 %49, 100, !dbg !61
  br i1 %50, label %51, label %52, !dbg !62

; <label>:51:                                     ; preds = %48
  store i32 100, i32* %8, align 4, !dbg !63
  br label %52, !dbg !65

; <label>:52:                                     ; preds = %51, %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !66, metadata !14), !dbg !67
  %53 = load i32, i32* %7, align 4, !dbg !68
  %54 = load i32, i32* %8, align 4, !dbg !69
  %55 = mul i32 %53, %54, !dbg !70
  %56 = add i32 %55, 1, !dbg !71
  %57 = zext i32 %56 to i64, !dbg !68
  %58 = call noalias i8* @malloc(i64 %57) #6, !dbg !72
  store i8* %58, i8** %9, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %10, metadata !73, metadata !14), !dbg !75
  store i32 0, i32* %10, align 4, !dbg !75
  br label %59, !dbg !76

; <label>:59:                                     ; preds = %86, %52
  %60 = load i32, i32* %10, align 4, !dbg !77
  %61 = load i32, i32* %8, align 4, !dbg !80
  %62 = icmp ult i32 %60, %61, !dbg !81
  br i1 %62, label %63, label %89, !dbg !82

; <label>:63:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata i32* %11, metadata !84, metadata !14), !dbg !87
  store i32 0, i32* %11, align 4, !dbg !87
  br label %64, !dbg !88

; <label>:64:                                     ; preds = %82, %63
  %65 = load i32, i32* %11, align 4, !dbg !89
  %66 = load i32, i32* %7, align 4, !dbg !92
  %67 = icmp ult i32 %65, %66, !dbg !93
  br i1 %67, label %68, label %85, !dbg !94

; <label>:68:                                     ; preds = %64
  %69 = load i8*, i8** %6, align 8, !dbg !96
  %70 = load i32, i32* %11, align 4, !dbg !98
  %71 = zext i32 %70 to i64, !dbg !96
  %72 = getelementptr inbounds i8, i8* %69, i64 %71, !dbg !96
  %73 = load i8, i8* %72, align 1, !dbg !96
  %74 = load i8*, i8** %9, align 8, !dbg !99
  %75 = load i32, i32* %10, align 4, !dbg !100
  %76 = load i32, i32* %7, align 4, !dbg !101
  %77 = mul i32 %75, %76, !dbg !102
  %78 = load i32, i32* %11, align 4, !dbg !103
  %79 = add i32 %77, %78, !dbg !104
  %80 = zext i32 %79 to i64, !dbg !99
  %81 = getelementptr inbounds i8, i8* %74, i64 %80, !dbg !99
  store i8 %73, i8* %81, align 1, !dbg !105
  br label %82, !dbg !106

; <label>:82:                                     ; preds = %68
  %83 = load i32, i32* %11, align 4, !dbg !107
  %84 = add i32 %83, 1, !dbg !107
  store i32 %84, i32* %11, align 4, !dbg !107
  br label %64, !dbg !109, !llvm.loop !110

; <label>:85:                                     ; preds = %64
  br label %86, !dbg !113

; <label>:86:                                     ; preds = %85
  %87 = load i32, i32* %10, align 4, !dbg !114
  %88 = add i32 %87, 1, !dbg !114
  store i32 %88, i32* %10, align 4, !dbg !114
  br label %59, !dbg !116, !llvm.loop !117

; <label>:89:                                     ; preds = %59
  %90 = load i8*, i8** %9, align 8, !dbg !120
  %91 = load i32, i32* %8, align 4, !dbg !121
  %92 = load i32, i32* %7, align 4, !dbg !122
  %93 = mul i32 %91, %92, !dbg !123
  %94 = zext i32 %93 to i64, !dbg !120
  %95 = getelementptr inbounds i8, i8* %90, i64 %94, !dbg !120
  store i8 0, i8* %95, align 1, !dbg !124
  %96 = load i8*, i8** %9, align 8, !dbg !125
  %97 = getelementptr [3 x i8], [3 x i8]* @.str.2, i32 0, i32 0
  %98 = call i32 (i8*, ...) @printf(i8* %97, i8* %96), !dbg !126
  %99 = load i8*, i8** %9, align 8, !dbg !127
  call void @free(i8* %99) #6, !dbg !128
  store i32 0, i32* %3, align 4, !dbg !129
  br label %100, !dbg !129

; <label>:100:                                    ; preds = %89, %24, %17
  %101 = load i32, i32* %3, align 4, !dbg !130
  ret i32 %101, !dbg !130
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
!1 = !DIFile(filename: "src/modular.c", directory: "/home/patrick/Documents/Git/Beacon_CSEC_759_RIT/MyExample1")
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
!18 = !DILocation(line: 6, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !6, file: !1, line: 6, column: 9)
!20 = !DILocation(line: 6, column: 14, scope: !19)
!21 = !DILocation(line: 6, column: 18, scope: !19)
!22 = !DILocation(line: 6, column: 21, scope: !23)
!23 = !DILexicalBlockFile(scope: !19, file: !1, discriminator: 1)
!24 = !DILocation(line: 6, column: 26, scope: !23)
!25 = !DILocation(line: 6, column: 9, scope: !26)
!26 = !DILexicalBlockFile(scope: !6, file: !1, discriminator: 1)
!27 = !DILocation(line: 7, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !19, file: !1, line: 6, column: 32)
!29 = !DILocation(line: 8, column: 9, scope: !28)
!30 = !DILocation(line: 10, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !6, file: !1, line: 10, column: 9)
!32 = !DILocation(line: 10, column: 14, scope: !31)
!33 = !DILocation(line: 10, column: 9, scope: !6)
!34 = !DILocation(line: 11, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 19)
!36 = !DILocation(line: 12, column: 2, scope: !35)
!37 = !DILocalVariable(name: "base_string", scope: !6, file: !1, line: 14, type: !11)
!38 = !DILocation(line: 14, column: 11, scope: !6)
!39 = !DILocation(line: 14, column: 25, scope: !6)
!40 = !DILocalVariable(name: "base_length", scope: !6, file: !1, line: 15, type: !41)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DILocation(line: 15, column: 18, scope: !6)
!43 = !DILocation(line: 15, column: 39, scope: !6)
!44 = !DILocation(line: 15, column: 32, scope: !6)
!45 = !DILocalVariable(name: "multiplier", scope: !6, file: !1, line: 16, type: !41)
!46 = !DILocation(line: 16, column: 18, scope: !6)
!47 = !DILocation(line: 16, column: 36, scope: !6)
!48 = !DILocation(line: 16, column: 31, scope: !6)
!49 = !DILocation(line: 17, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !6, file: !1, line: 17, column: 9)
!51 = !DILocation(line: 17, column: 14, scope: !50)
!52 = !DILocation(line: 17, column: 9, scope: !6)
!53 = !DILocation(line: 18, column: 29, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 17, column: 20)
!55 = !DILocation(line: 18, column: 24, scope: !54)
!56 = !DILocation(line: 18, column: 38, scope: !54)
!57 = !DILocation(line: 18, column: 20, scope: !54)
!58 = !DILocation(line: 19, column: 5, scope: !54)
!59 = !DILocation(line: 20, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !6, file: !1, line: 20, column: 9)
!61 = !DILocation(line: 20, column: 20, scope: !60)
!62 = !DILocation(line: 20, column: 9, scope: !6)
!63 = !DILocation(line: 21, column: 20, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 20, column: 27)
!65 = !DILocation(line: 22, column: 5, scope: !64)
!66 = !DILocalVariable(name: "result_string", scope: !6, file: !1, line: 23, type: !11)
!67 = !DILocation(line: 23, column: 11, scope: !6)
!68 = !DILocation(line: 23, column: 34, scope: !6)
!69 = !DILocation(line: 23, column: 48, scope: !6)
!70 = !DILocation(line: 23, column: 46, scope: !6)
!71 = !DILocation(line: 23, column: 59, scope: !6)
!72 = !DILocation(line: 23, column: 27, scope: !6)
!73 = !DILocalVariable(name: "i", scope: !74, file: !1, line: 24, type: !41)
!74 = distinct !DILexicalBlock(scope: !6, file: !1, line: 24, column: 5)
!75 = !DILocation(line: 24, column: 23, scope: !74)
!76 = !DILocation(line: 24, column: 10, scope: !74)
!77 = !DILocation(line: 24, column: 30, scope: !78)
!78 = !DILexicalBlockFile(scope: !79, file: !1, discriminator: 1)
!79 = distinct !DILexicalBlock(scope: !74, file: !1, line: 24, column: 5)
!80 = !DILocation(line: 24, column: 34, scope: !78)
!81 = !DILocation(line: 24, column: 32, scope: !78)
!82 = !DILocation(line: 24, column: 5, scope: !83)
!83 = !DILexicalBlockFile(scope: !74, file: !1, discriminator: 1)
!84 = !DILocalVariable(name: "j", scope: !85, file: !1, line: 25, type: !41)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 25, column: 9)
!86 = distinct !DILexicalBlock(scope: !79, file: !1, line: 24, column: 51)
!87 = !DILocation(line: 25, column: 27, scope: !85)
!88 = !DILocation(line: 25, column: 14, scope: !85)
!89 = !DILocation(line: 25, column: 34, scope: !90)
!90 = !DILexicalBlockFile(scope: !91, file: !1, discriminator: 1)
!91 = distinct !DILexicalBlock(scope: !85, file: !1, line: 25, column: 9)
!92 = !DILocation(line: 25, column: 38, scope: !90)
!93 = !DILocation(line: 25, column: 36, scope: !90)
!94 = !DILocation(line: 25, column: 9, scope: !95)
!95 = !DILexicalBlockFile(scope: !85, file: !1, discriminator: 1)
!96 = !DILocation(line: 26, column: 46, scope: !97)
!97 = distinct !DILexicalBlock(scope: !91, file: !1, line: 25, column: 56)
!98 = !DILocation(line: 26, column: 58, scope: !97)
!99 = !DILocation(line: 26, column: 13, scope: !97)
!100 = !DILocation(line: 26, column: 27, scope: !97)
!101 = !DILocation(line: 26, column: 29, scope: !97)
!102 = !DILocation(line: 26, column: 28, scope: !97)
!103 = !DILocation(line: 26, column: 41, scope: !97)
!104 = !DILocation(line: 26, column: 40, scope: !97)
!105 = !DILocation(line: 26, column: 44, scope: !97)
!106 = !DILocation(line: 27, column: 9, scope: !97)
!107 = !DILocation(line: 25, column: 52, scope: !108)
!108 = !DILexicalBlockFile(scope: !91, file: !1, discriminator: 2)
!109 = !DILocation(line: 25, column: 9, scope: !108)
!110 = distinct !{!110, !111, !112}
!111 = !DILocation(line: 25, column: 9, scope: !85)
!112 = !DILocation(line: 27, column: 9, scope: !85)
!113 = !DILocation(line: 28, column: 5, scope: !86)
!114 = !DILocation(line: 24, column: 47, scope: !115)
!115 = !DILexicalBlockFile(scope: !79, file: !1, discriminator: 2)
!116 = !DILocation(line: 24, column: 5, scope: !115)
!117 = distinct !{!117, !118, !119}
!118 = !DILocation(line: 24, column: 5, scope: !74)
!119 = !DILocation(line: 28, column: 5, scope: !74)
!120 = !DILocation(line: 29, column: 5, scope: !6)
!121 = !DILocation(line: 29, column: 19, scope: !6)
!122 = !DILocation(line: 29, column: 30, scope: !6)
!123 = !DILocation(line: 29, column: 29, scope: !6)
!124 = !DILocation(line: 29, column: 43, scope: !6)
!125 = !DILocation(line: 31, column: 18, scope: !6)
!126 = !DILocation(line: 31, column: 5, scope: !6)
!127 = !DILocation(line: 33, column: 10, scope: !6)
!128 = !DILocation(line: 33, column: 5, scope: !6)
!129 = !DILocation(line: 35, column: 5, scope: !6)
!130 = !DILocation(line: 36, column: 1, scope: !6)
