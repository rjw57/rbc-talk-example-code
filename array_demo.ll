; ModuleID = 'array_demo.b'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@b.v = global [7 x i64] zeroinitializer, align 8
@b.putnumb = external global i64, align 8
@b.putchar = external global i64, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__ctor.v, i8* null }]

define i64 @b.main() {
whilethen:
  %.23 = load i64* inttoptr (i64 shl (i64 udiv (i64 ptrtoint ([7 x i64]* @b.v to i64), i64 8), i64 3) to i64*), align 8
  %.25 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 %.23)
  %.29 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 32)
  %.23.1 = load i64* inttoptr (i64 shl (i64 add (i64 udiv (i64 ptrtoint ([7 x i64]* @b.v to i64), i64 8), i64 1), i64 3) to i64*), align 8
  %.25.1 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 %.23.1)
  %.29.1 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 32)
  %.23.2 = load i64* inttoptr (i64 shl (i64 add (i64 udiv (i64 ptrtoint ([7 x i64]* @b.v to i64), i64 8), i64 2), i64 3) to i64*), align 8
  %.25.2 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 %.23.2)
  %.29.2 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 32)
  %.23.3 = load i64* inttoptr (i64 shl (i64 add (i64 udiv (i64 ptrtoint ([7 x i64]* @b.v to i64), i64 8), i64 3), i64 3) to i64*), align 8
  %.25.3 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 %.23.3)
  %.29.3 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 32)
  %.23.4 = load i64* inttoptr (i64 shl (i64 add (i64 udiv (i64 ptrtoint ([7 x i64]* @b.v to i64), i64 8), i64 4), i64 3) to i64*), align 8
  %.25.4 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 %.23.4)
  %.29.4 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 32)
  %.23.5 = load i64* inttoptr (i64 shl (i64 add (i64 udiv (i64 ptrtoint ([7 x i64]* @b.v to i64), i64 8), i64 5), i64 3) to i64*), align 8
  %.25.5 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 %.23.5)
  %.29.5 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 32)
  %.23.6 = load i64* inttoptr (i64 shl (i64 add (i64 udiv (i64 ptrtoint ([7 x i64]* @b.v to i64), i64 8), i64 6), i64 3) to i64*), align 8
  %.25.6 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 %.23.6)
  %.29.6 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 32)
  %.23.7 = load i64* inttoptr (i64 shl (i64 add (i64 udiv (i64 ptrtoint ([7 x i64]* @b.v to i64), i64 8), i64 7), i64 3) to i64*), align 8
  %.25.7 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 %.23.7)
  %.29.7 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 32)
  %.41 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 10)
  %.47 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 udiv (i64 ptrtoint ([7 x i64]* @b.v to i64), i64 8))
  %.51 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 10)
  ret i64 0
}

; Function Attrs: nounwind
define private void @__ctor.v() #0 {
entry:
  store i64 1, i64* getelementptr inbounds ([7 x i64]* @b.v, i64 0, i64 0), align 8
  store i64 1, i64* getelementptr inbounds ([7 x i64]* @b.v, i64 0, i64 1), align 8
  store i64 2, i64* getelementptr inbounds ([7 x i64]* @b.v, i64 0, i64 2), align 8
  store i64 3, i64* getelementptr inbounds ([7 x i64]* @b.v, i64 0, i64 3), align 8
  store i64 5, i64* getelementptr inbounds ([7 x i64]* @b.v, i64 0, i64 4), align 8
  store i64 8, i64* getelementptr inbounds ([7 x i64]* @b.v, i64 0, i64 5), align 8
  store i64 13, i64* getelementptr inbounds ([7 x i64]* @b.v, i64 0, i64 6), align 8
  ret void
}

attributes #0 = { nounwind }
