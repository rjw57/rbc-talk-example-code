; ModuleID = 'factorial.b'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@b.putnumb = external global i64, align 8
@b.putchar = external global i64, align 8

; Function Attrs: nounwind readnone
define i64 @b.fact(i64 %n) #0 {
entry:
  %.71 = icmp eq i64 %n, 0
  br i1 %.71, label %entry.endif, label %entry.else.preheader

entry.else.preheader:                             ; preds = %entry
  br label %entry.else

entry.else:                                       ; preds = %entry.else.preheader, %entry.else
  %n.tr3 = phi i64 [ %.20, %entry.else ], [ %n, %entry.else.preheader ]
  %accumulator.tr2 = phi i64 [ %.22, %entry.else ], [ 1, %entry.else.preheader ]
  %.20 = add i64 %n.tr3, -1
  %.22 = mul i64 %n.tr3, %accumulator.tr2
  %.7 = icmp eq i64 %.20, 0
  br i1 %.7, label %entry.endif.loopexit, label %entry.else

entry.endif.loopexit:                             ; preds = %entry.else
  %.22.lcssa = phi i64 [ %.22, %entry.else ]
  br label %entry.endif

entry.endif:                                      ; preds = %entry.endif.loopexit, %entry
  %accumulator.tr.lcssa = phi i64 [ 1, %entry ], [ %.22.lcssa, %entry.endif.loopexit ]
  ret i64 %accumulator.tr.lcssa
}

define i64 @b.main() {
entry:
  br label %whilethen

whilethen:                                        ; preds = %whilethen, %entry
  %storemerge1 = phi i64 [ 0, %entry ], [ %.43, %whilethen ]
  %.19 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 %storemerge1)
  %.23 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 555760928)
  %.31 = tail call i64 @b.fact(i64 %storemerge1)
  %.33 = tail call i64 bitcast (i64* @b.putnumb to i64 (i64)*)(i64 %.31)
  %.37 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 10)
  %.43 = add nuw nsw i64 %storemerge1, 1
  %exitcond = icmp eq i64 %.43, 21
  br i1 %exitcond, label %whileend, label %whilethen

whileend:                                         ; preds = %whilethen
  ret i64 0
}

attributes #0 = { nounwind readnone }
