; ModuleID = 'libb.b'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@b.putchar = external global i64, align 8

define i64 @b.printn(i64 %n, i64 %b) {
entry:
  %.14 = sdiv i64 %n, %b
  %.16 = icmp eq i64 %.14, 0
  br i1 %.16, label %entry.endif, label %entry.if

entry.if:                                         ; preds = %entry
  %.26 = tail call i64 @b.printn(i64 %.14, i64 %b)
  br label %entry.endif

entry.endif:                                      ; preds = %entry, %entry.if
  %.37 = srem i64 %n, %b
  %.38 = add i64 %.37, 48
  %.40 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 %.38)
  ret i64 0
}
