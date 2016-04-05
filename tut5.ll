; ModuleID = 'tut5.b'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@b.getchar = external global i64, align 8
@b.putchar = external global i64, align 8

define i64 @b.main() {
entry:
  %.7 = tail call i64 bitcast (i64* @b.getchar to i64 ()*)()
  %.15 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 %.7)
  ret i64 0
}
