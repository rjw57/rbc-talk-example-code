; ModuleID = 'print100.b'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@b.putnumb = external global i64, align 8

define i64 @b.main() {
entry:
  %.5 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 100)
  ret i64 0
}
