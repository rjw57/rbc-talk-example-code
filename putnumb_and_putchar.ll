; ModuleID = 'putnumb_and_putchar.b'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@b.putnumb = external global i64, align 8
@b.putchar = external global i64, align 8

define i64 @b.main() {
entry:
  %.14 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 6382179)
  %.18 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 10)
  %.25 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 6382179)
  %.29 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 10)
  %.36 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 123)
  %.40 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 10)
  %.47 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 123)
  %.51 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 10)
  ret i64 0
}
