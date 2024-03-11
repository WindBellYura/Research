; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.37.32822"

$sprintf = comdat any

$vsprintf = comdat any

$_snprintf = comdat any

$_vsnprintf = comdat any

$printf = comdat any

$_vsprintf_l = comdat any

$_vsnprintf_l = comdat any

$__local_stdio_printf_options = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BC@EABJEFAM@start_timing?3?5?$CFu?6?$AA@" = comdat any

$"??_C@_0BA@EMPPCHMC@end_timing?3?5?$CFu?6?$AA@" = comdat any

$"??_C@_0BN@GJEKFNGL@Value?5at?5address?5?$FL?$CF08X?$FN?3?5?$CFd?6?$AA@" = comdat any

$"??_C@_0BL@FFNGEOLI@Execution?5Time?3?5?$CFu?5cycles?6?$AA@" = comdat any

$"??_C@_0CC@CABHFFGF@Execution?5Time?3?5?$CFu?5microseconds?6@" = comdat any

$"??_C@_0O@HHNLAIMN@Iteration?3?$CFd?6?$AA@" = comdat any

$"??_C@_0L@NHEBGPCM@Test?5Code?6?$AA@" = comdat any

$"??_C@_0L@IPKPMLPK@result?$DN?$CFd?6?$AA@" = comdat any

@start = dso_local global i32 0, align 4
@"??_C@_0BC@EABJEFAM@start_timing?3?5?$CFu?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"start_timing: %u\0A\00", comdat, align 1
@end = dso_local global i32 0, align 4
@"??_C@_0BA@EMPPCHMC@end_timing?3?5?$CFu?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"end_timing: %u\0A\00", comdat, align 1
@"??_C@_0BN@GJEKFNGL@Value?5at?5address?5?$FL?$CF08X?$FN?3?5?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [29 x i8] c"Value at address [%08X]: %d\0A\00", comdat, align 1
@total_cycles = dso_local global i32 0, align 4
@processor_clock_frequency = dso_local global i32 0, align 4
@execution_time = dso_local global i32 0, align 4
@"??_C@_0BL@FFNGEOLI@Execution?5Time?3?5?$CFu?5cycles?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"Execution Time: %u cycles\0A\00", comdat, align 1
@"??_C@_0CC@CABHFFGF@Execution?5Time?3?5?$CFu?5microseconds?6@" = linkonce_odr dso_local unnamed_addr constant [34 x i8] c"Execution Time: %u microseconds\0A\0A\00", comdat, align 1
@"??_C@_0O@HHNLAIMN@Iteration?3?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"Iteration:%d\0A\00", comdat, align 1
@"??_C@_0L@NHEBGPCM@Test?5Code?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"Test Code\0A\00", comdat, align 1
@"??_C@_0L@IPKPMLPK@result?$DN?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"result=%d\0A\00", comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @sprintf(ptr noundef %0, ptr noundef %1, ...) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.va_start(ptr %6)
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 @_vsprintf_l(ptr noundef %9, ptr noundef %8, ptr noundef null, ptr noundef %7)
  store i32 %10, ptr %5, align 4
  call void @llvm.va_end(ptr %6)
  %11 = load i32, ptr %5, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @vsprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call i32 @_vsnprintf_l(ptr noundef %9, i64 noundef -1, ptr noundef %8, ptr noundef null, ptr noundef %7)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ...) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.va_start(ptr %8)
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load i64, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = call i32 @_vsnprintf(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef %9)
  store i32 %13, ptr %7, align 4
  call void @llvm.va_end(ptr %8)
  %14 = load i32, ptr %7, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @_vsnprintf_l(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef null, ptr noundef %9)
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enable_dwt() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr inttoptr (i64 3758157308 to ptr), ptr %1, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = load volatile i32, ptr %4, align 4
  %6 = or i32 %5, 16777216
  store volatile i32 %6, ptr %4, align 4
  store ptr inttoptr (i64 3758100480 to ptr), ptr %2, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = load volatile i32, ptr %7, align 4
  %9 = or i32 %8, 1
  store volatile i32 %9, ptr %7, align 4
  store ptr inttoptr (i64 3758100484 to ptr), ptr %3, align 8
  %10 = load ptr, ptr %3, align 8
  store volatile i32 0, ptr %10, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_timing() #0 {
  %1 = alloca ptr, align 8
  store ptr inttoptr (i64 3758100484 to ptr), ptr %1, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load volatile i32, ptr %2, align 4
  store volatile i32 %3, ptr @start, align 4
  %4 = load volatile i32, ptr @start, align 4
  %5 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BC@EABJEFAM@start_timing?3?5?$CFu?6?$AA@", i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @printf(ptr noundef %0, ...) #0 comdat {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.va_start(ptr %4)
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @__acrt_iob_func(i32 noundef 1)
  %8 = call i32 @_vfprintf_l(ptr noundef %7, ptr noundef %6, ptr noundef null, ptr noundef %5)
  store i32 %8, ptr %3, align 4
  call void @llvm.va_end(ptr %4)
  %9 = load i32, ptr %3, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_timing() #0 {
  %1 = alloca ptr, align 8
  store ptr inttoptr (i64 3758100484 to ptr), ptr %1, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load volatile i32, ptr %2, align 4
  store volatile i32 %3, ptr @end, align 4
  %4 = load volatile i32, ptr @end, align 4
  %5 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@EMPPCHMC@end_timing?3?5?$CFu?6?$AA@", i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printValueAtAddress(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = load i32, ptr %2, align 4
  %6 = zext i32 %5 to i64
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %3, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load volatile i32, ptr %8, align 4
  store i32 %9, ptr %4, align 4
  %10 = load i32, ptr %4, align 4
  %11 = load i32, ptr %2, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BN@GJEKFNGL@Value?5at?5address?5?$FL?$CF08X?$FN?3?5?$CFd?6?$AA@", i32 noundef %11, i32 noundef %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_execution_time() #0 {
  %1 = load volatile i32, ptr @end, align 4
  %2 = load volatile i32, ptr @start, align 4
  %3 = sub i32 %1, %2
  store i32 %3, ptr @total_cycles, align 4
  store i32 16000000, ptr @processor_clock_frequency, align 4
  %4 = load i32, ptr @total_cycles, align 4
  %5 = load i32, ptr @processor_clock_frequency, align 4
  %6 = udiv i32 %5, 1000000
  %7 = udiv i32 %4, %6
  store i32 %7, ptr @execution_time, align 4
  %8 = load i32, ptr @total_cycles, align 4
  %9 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BL@FFNGEOLI@Execution?5Time?3?5?$CFu?5cycles?6?$AA@", i32 noundef %8)
  %10 = load i32, ptr @execution_time, align 4
  %11 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0CC@CABHFFGF@Execution?5Time?3?5?$CFu?5microseconds?6@", i32 noundef %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %9 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@HHNLAIMN@Iteration?3?$CFd?6?$AA@", i32 noundef 10000)
  call void @enable_dwt()
  store volatile i32 10, ptr %2, align 4
  store volatile i32 30, ptr %3, align 4
  store volatile i32 20, ptr %4, align 4
  store volatile i32 40, ptr %5, align 4
  store volatile i32 5, ptr %6, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0L@NHEBGPCM@Test?5Code?6?$AA@")
  call void @start_timing()
  store i32 0, ptr %8, align 4
  br label %11

11:                                               ; preds = %27, %0
  %12 = load i32, ptr %8, align 4
  %13 = icmp slt i32 %12, 10000
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load volatile i32, ptr %2, align 4
  %16 = load volatile i32, ptr %3, align 4
  %17 = add i32 %15, %16
  store volatile i32 %17, ptr %7, align 4
  %18 = load volatile i32, ptr %7, align 4
  %19 = load volatile i32, ptr %4, align 4
  %20 = sub i32 %18, %19
  store volatile i32 %20, ptr %7, align 4
  %21 = load volatile i32, ptr %7, align 4
  %22 = load volatile i32, ptr %5, align 4
  %23 = mul i32 %21, %22
  store volatile i32 %23, ptr %7, align 4
  %24 = load volatile i32, ptr %7, align 4
  %25 = load volatile i32, ptr %6, align 4
  %26 = udiv i32 %24, %25
  store volatile i32 %26, ptr %7, align 4
  br label %27

27:                                               ; preds = %14
  %28 = load i32, ptr %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %8, align 4
  br label %11, !llvm.loop !4

30:                                               ; preds = %11
  call void @stop_timing()
  call void @print_execution_time()
  %31 = load volatile i32, ptr %7, align 4
  %32 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0L@IPKPMLPK@result?$DN?$CFd?6?$AA@", i32 noundef %31)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @_vsnprintf_l(ptr noundef %12, i64 noundef -1, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsnprintf_l(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = call ptr @__local_stdio_printf_options()
  %18 = load i64, ptr %17, align 8
  %19 = or i64 %18, 1
  %20 = call i32 @__stdio_common_vsprintf(i64 noundef %19, ptr noundef %16, i64 noundef %15, ptr noundef %14, ptr noundef %13, ptr noundef %12)
  store i32 %20, ptr %11, align 4
  %21 = load i32, ptr %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %26

24:                                               ; preds = %5
  %25 = load i32, ptr %11, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ -1, %23 ], [ %25, %24 ]
  ret i32 %27
}

declare dso_local i32 @__stdio_common_vsprintf(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #0 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call ptr @__local_stdio_printf_options()
  %14 = load i64, ptr %13, align 8
  %15 = call i32 @__stdio_common_vfprintf(i64 noundef %14, ptr noundef %12, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %15
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) #2

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 16.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
