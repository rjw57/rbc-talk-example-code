; ModuleID = 'helloworld.b'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@b.putstr = external global i64, align 8
@b.__str.0 = private unnamed_addr constant [15 x i8] c"Hello, world!\0A\04", align 8

define i64 @b.main() {
entry:
  %.7 = tail call i64 bitcast (i64* @b.putstr to i64 (i64)*)(i64 udiv (i64 ptrtoint ([15 x i8]* @b.__str.0 to i64), i64 8))
  ret i64 0
}
