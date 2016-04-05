; ModuleID = 'tut4.b'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@b.a = global i64 1751477356, align 8
@b.b = global i64 1865162871, align 8
@b.c = global i64 1869769828, align 8
@b.d = global i64 8458, align 8
@b.putchar = external global i64, align 8

define i64 @b.main() {
entry:
  %.6 = load i64* @b.a, align 8
  %.9 = load i64* @b.b, align 8
  %.10 = tail call i64 @b.put2char(i64 %.6, i64 %.9)
  %.15 = load i64* @b.c, align 8
  %.18 = load i64* @b.d, align 8
  %.19 = tail call i64 @b.put2char(i64 %.15, i64 %.18)
  ret i64 0
}

define i64 @b.put2char(i64 %x, i64 %y) {
entry:
  %.12 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 %x)
  %.19 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 %y)
  ret i64 0
}
