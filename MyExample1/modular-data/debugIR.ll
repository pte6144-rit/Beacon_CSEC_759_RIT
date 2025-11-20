; ModuleID = 'modular.bc'
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
  br label %94, !dbg !29

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
  %32 = srem i32 %31, 2, !dbg !44
  %33 = icmp eq i32 %32, 0, !dbg !45
  br i1 %33, label %34, label %42, !dbg !46

; <label>:34:                                     ; preds = %20
  %35 = load i8**, i8*** %5, align 8, !dbg !47
  %36 = getelementptr inbounds i8*, i8** %35, i64 3, !dbg !47
  %37 = load i8*, i8** %36, align 8, !dbg !47
  %38 = call i32 @atoi(i8* %37) #5, !dbg !49
  %39 = add nsw i32 %38, 1, !dbg !50
  %40 = load i32, i32* %8, align 4, !dbg !51
  %41 = udiv i32 %40, %39, !dbg !51
  store i32 %41, i32* %8, align 4, !dbg !51
  br label %42, !dbg !52

; <label>:42:                                     ; preds = %34, %20
  %43 = load i32, i32* %8, align 4, !dbg !53
  %44 = icmp ugt i32 %43, 100, !dbg !55
  br i1 %44, label %45, label %46, !dbg !56

; <label>:45:                                     ; preds = %42
  store i32 100, i32* %8, align 4, !dbg !57
  br label %46, !dbg !59

; <label>:46:                                     ; preds = %45, %42
  call void @llvm.dbg.declare(metadata i8** %9, metadata !60, metadata !14), !dbg !61
  %47 = load i32, i32* %7, align 4, !dbg !62
  %48 = load i32, i32* %8, align 4, !dbg !63
  %49 = mul i32 %47, %48, !dbg !64
  %50 = add i32 %49, 1, !dbg !65
  %51 = zext i32 %50 to i64, !dbg !62
  %52 = call noalias i8* @malloc(i64 %51) #6, !dbg !66
  store i8* %52, i8** %9, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %10, metadata !67, metadata !14), !dbg !69
  store i32 0, i32* %10, align 4, !dbg !69
  br label %53, !dbg !70

; <label>:53:                                     ; preds = %80, %46
  %54 = load i32, i32* %10, align 4, !dbg !71
  %55 = load i32, i32* %8, align 4, !dbg !74
  %56 = icmp ult i32 %54, %55, !dbg !75
  br i1 %56, label %57, label %83, !dbg !76

; <label>:57:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata i32* %11, metadata !78, metadata !14), !dbg !81
  store i32 0, i32* %11, align 4, !dbg !81
  br label %58, !dbg !82

; <label>:58:                                     ; preds = %76, %57
  %59 = load i32, i32* %11, align 4, !dbg !83
  %60 = load i32, i32* %7, align 4, !dbg !86
  %61 = icmp ult i32 %59, %60, !dbg !87
  br i1 %61, label %62, label %79, !dbg !88

; <label>:62:                                     ; preds = %58
  %63 = load i8*, i8** %6, align 8, !dbg !90
  %64 = load i32, i32* %11, align 4, !dbg !92
  %65 = zext i32 %64 to i64, !dbg !90
  %66 = getelementptr inbounds i8, i8* %63, i64 %65, !dbg !90
  %67 = load i8, i8* %66, align 1, !dbg !90
  %68 = load i8*, i8** %9, align 8, !dbg !93
  %69 = load i32, i32* %10, align 4, !dbg !94
  %70 = load i32, i32* %7, align 4, !dbg !95
  %71 = mul i32 %69, %70, !dbg !96
  %72 = load i32, i32* %11, align 4, !dbg !97
  %73 = add i32 %71, %72, !dbg !98
  %74 = zext i32 %73 to i64, !dbg !93
  %75 = getelementptr inbounds i8, i8* %68, i64 %74, !dbg !93
  store i8 %67, i8* %75, align 1, !dbg !99
  br label %76, !dbg !100

; <label>:76:                                     ; preds = %62
  %77 = load i32, i32* %11, align 4, !dbg !101
  %78 = add i32 %77, 1, !dbg !101
  store i32 %78, i32* %11, align 4, !dbg !101
  br label %58, !dbg !103, !llvm.loop !104

; <label>:79:                                     ; preds = %58
  br label %80, !dbg !107

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %10, align 4, !dbg !108
  %82 = add i32 %81, 1, !dbg !108
  store i32 %82, i32* %10, align 4, !dbg !108
  br label %53, !dbg !110, !llvm.loop !111

; <label>:83:                                     ; preds = %53
  %84 = load i8*, i8** %9, align 8, !dbg !114
  %85 = load i32, i32* %8, align 4, !dbg !115
  %86 = load i32, i32* %7, align 4, !dbg !116
  %87 = mul i32 %85, %86, !dbg !117
  %88 = zext i32 %87 to i64, !dbg !114
  %89 = getelementptr inbounds i8, i8* %84, i64 %88, !dbg !114
  store i8 0, i8* %89, align 1, !dbg !118
  %90 = load i8*, i8** %9, align 8, !dbg !119
  %91 = getelementptr [3 x i8], [3 x i8]* @.str.1, i32 0, i32 0
  %92 = call i32 (i8*, ...) @printf(i8* %91, i8* %90), !dbg !120
  %93 = load i8*, i8** %9, align 8, !dbg !121
  call void @free(i8* %93) #6, !dbg !122
  store i32 0, i32* %3, align 4, !dbg !123
  br label %94, !dbg !123

; <label>:94:                                     ; preds = %83, %17
  %95 = load i32, i32* %3, align 4, !dbg !124
  ret i32 %95, !dbg !124
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
!45 = !DILocation(line: 13, column: 18, scope: !43)
!46 = !DILocation(line: 13, column: 9, scope: !6)
!47 = !DILocation(line: 14, column: 29, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !1, line: 13, column: 24)
!49 = !DILocation(line: 14, column: 24, scope: !48)
!50 = !DILocation(line: 14, column: 38, scope: !48)
!51 = !DILocation(line: 14, column: 20, scope: !48)
!52 = !DILocation(line: 15, column: 5, scope: !48)
!53 = !DILocation(line: 16, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !6, file: !1, line: 16, column: 9)
!55 = !DILocation(line: 16, column: 20, scope: !54)
!56 = !DILocation(line: 16, column: 9, scope: !6)
!57 = !DILocation(line: 17, column: 20, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 16, column: 27)
!59 = !DILocation(line: 18, column: 5, scope: !58)
!60 = !DILocalVariable(name: "result_string", scope: !6, file: !1, line: 19, type: !11)
!61 = !DILocation(line: 19, column: 11, scope: !6)
!62 = !DILocation(line: 19, column: 34, scope: !6)
!63 = !DILocation(line: 19, column: 48, scope: !6)
!64 = !DILocation(line: 19, column: 46, scope: !6)
!65 = !DILocation(line: 19, column: 59, scope: !6)
!66 = !DILocation(line: 19, column: 27, scope: !6)
!67 = !DILocalVariable(name: "i", scope: !68, file: !1, line: 20, type: !34)
!68 = distinct !DILexicalBlock(scope: !6, file: !1, line: 20, column: 5)
!69 = !DILocation(line: 20, column: 23, scope: !68)
!70 = !DILocation(line: 20, column: 10, scope: !68)
!71 = !DILocation(line: 20, column: 30, scope: !72)
!72 = !DILexicalBlockFile(scope: !73, file: !1, discriminator: 1)
!73 = distinct !DILexicalBlock(scope: !68, file: !1, line: 20, column: 5)
!74 = !DILocation(line: 20, column: 34, scope: !72)
!75 = !DILocation(line: 20, column: 32, scope: !72)
!76 = !DILocation(line: 20, column: 5, scope: !77)
!77 = !DILexicalBlockFile(scope: !68, file: !1, discriminator: 1)
!78 = !DILocalVariable(name: "j", scope: !79, file: !1, line: 21, type: !34)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 21, column: 9)
!80 = distinct !DILexicalBlock(scope: !73, file: !1, line: 20, column: 51)
!81 = !DILocation(line: 21, column: 27, scope: !79)
!82 = !DILocation(line: 21, column: 14, scope: !79)
!83 = !DILocation(line: 21, column: 34, scope: !84)
!84 = !DILexicalBlockFile(scope: !85, file: !1, discriminator: 1)
!85 = distinct !DILexicalBlock(scope: !79, file: !1, line: 21, column: 9)
!86 = !DILocation(line: 21, column: 38, scope: !84)
!87 = !DILocation(line: 21, column: 36, scope: !84)
!88 = !DILocation(line: 21, column: 9, scope: !89)
!89 = !DILexicalBlockFile(scope: !79, file: !1, discriminator: 1)
!90 = !DILocation(line: 22, column: 46, scope: !91)
!91 = distinct !DILexicalBlock(scope: !85, file: !1, line: 21, column: 56)
!92 = !DILocation(line: 22, column: 58, scope: !91)
!93 = !DILocation(line: 22, column: 13, scope: !91)
!94 = !DILocation(line: 22, column: 27, scope: !91)
!95 = !DILocation(line: 22, column: 29, scope: !91)
!96 = !DILocation(line: 22, column: 28, scope: !91)
!97 = !DILocation(line: 22, column: 41, scope: !91)
!98 = !DILocation(line: 22, column: 40, scope: !91)
!99 = !DILocation(line: 22, column: 44, scope: !91)
!100 = !DILocation(line: 23, column: 9, scope: !91)
!101 = !DILocation(line: 21, column: 52, scope: !102)
!102 = !DILexicalBlockFile(scope: !85, file: !1, discriminator: 2)
!103 = !DILocation(line: 21, column: 9, scope: !102)
!104 = distinct !{!104, !105, !106}
!105 = !DILocation(line: 21, column: 9, scope: !79)
!106 = !DILocation(line: 23, column: 9, scope: !79)
!107 = !DILocation(line: 24, column: 5, scope: !80)
!108 = !DILocation(line: 20, column: 47, scope: !109)
!109 = !DILexicalBlockFile(scope: !73, file: !1, discriminator: 2)
!110 = !DILocation(line: 20, column: 5, scope: !109)
!111 = distinct !{!111, !112, !113}
!112 = !DILocation(line: 20, column: 5, scope: !68)
!113 = !DILocation(line: 24, column: 5, scope: !68)
!114 = !DILocation(line: 25, column: 5, scope: !6)
!115 = !DILocation(line: 25, column: 19, scope: !6)
!116 = !DILocation(line: 25, column: 30, scope: !6)
!117 = !DILocation(line: 25, column: 29, scope: !6)
!118 = !DILocation(line: 25, column: 43, scope: !6)
!119 = !DILocation(line: 27, column: 18, scope: !6)
!120 = !DILocation(line: 27, column: 5, scope: !6)
!121 = !DILocation(line: 29, column: 10, scope: !6)
!122 = !DILocation(line: 29, column: 5, scope: !6)
!123 = !DILocation(line: 31, column: 5, scope: !6)
!124 = !DILocation(line: 32, column: 1, scope: !6)
