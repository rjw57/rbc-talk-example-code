; ModuleID = 'tut3.b'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@b.a = global i64 1751477356, align 8
@b.b = global i64 1865162871, align 8
@b.c = global i64 1869769828, align 8
@b.putchar = external global i64, align 8

define i64 @b.main() {
entry:
  %.6 = load i64* @b.a, align 8
  %.8 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 %.6)
  %.13 = load i64* @b.b, align 8
  %.15 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 %.13)
  %.20 = load i64* @b.c, align 8
  %.22 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 %.20)
  %.26 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 8458)
  ret i64 0
}
