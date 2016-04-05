; ModuleID = 'calce.b'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@b.v = global [2001 x i64] zeroinitializer, align 8
@b.n = global i64 2000, align 8
@b.putchar = external global i64, align 8

define i64 @b.main() {
entry:
  %.1410 = load i64* @b.n, align 8
  %.1511 = icmp sgt i64 %.1410, 0
  br i1 %.1511, label %whilethen.preheader, label %while.1.preheader

whilethen.preheader:                              ; preds = %entry
  br label %whilethen

while.1.preheader.loopexit:                       ; preds = %whilethen
  br label %while.1.preheader

while.1.preheader:                                ; preds = %while.1.preheader.loopexit, %entry
  %.396 = load i64* @b.n, align 8
  %0 = trunc i64 %.396 to i63
  %.418 = icmp sgt i63 %0, 0
  br i1 %.418, label %whilethen.1.preheader, label %whileend.1

whilethen.1.preheader:                            ; preds = %while.1.preheader
  br label %whilethen.1

whilethen:                                        ; preds = %whilethen.preheader, %whilethen
  %1 = phi i64 [ %.26, %whilethen ], [ 0, %whilethen.preheader ]
  %.26 = add nsw i64 %1, 1
  %.28 = add i64 %1, udiv (i64 ptrtoint ([2001 x i64]* @b.v to i64), i64 8)
  %.29 = shl nuw nsw i64 %.28, 3
  %.30 = inttoptr i64 %.29 to i64*
  store i64 1, i64* %.30, align 8
  %.14 = load i64* @b.n, align 8
  %.15 = icmp slt i64 %.26, %.14
  br i1 %.15, label %whilethen, label %while.1.preheader.loopexit

whilethen.1:                                      ; preds = %whilethen.1.preheader, %while.1.backedge
  %.642 = phi i64 [ %.39, %while.1.backedge ], [ %.396, %whilethen.1.preheader ]
  %2 = phi i64 [ %.134, %while.1.backedge ], [ 0, %whilethen.1.preheader ]
  %.653 = icmp sgt i64 %.642, 0
  br i1 %.653, label %whilethen.2.lr.ph, label %whileend.2

whilethen.2.lr.ph:                                ; preds = %whilethen.1
  %.50 = add i64 %.642, 1
  br label %whilethen.2

whileend.1.loopexit:                              ; preds = %while.1.backedge
  br label %whileend.1

whileend.1:                                       ; preds = %whileend.1.loopexit, %while.1.preheader
  %.160 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 2570)
  ret i64 0

whilethen.2:                                      ; preds = %whilethen.2.lr.ph, %whilethen.2
  %storemerge5 = phi i64 [ 0, %whilethen.2.lr.ph ], [ %.118, %whilethen.2 ]
  %.5014 = phi i64 [ %.50, %whilethen.2.lr.ph ], [ %.116, %whilethen.2 ]
  %3 = phi i64 [ 0, %whilethen.2.lr.ph ], [ %.93, %whilethen.2 ]
  %.79 = add i64 %3, udiv (i64 ptrtoint ([2001 x i64]* @b.v to i64), i64 8)
  %.80 = shl nuw nsw i64 %.79, 3
  %.81 = inttoptr i64 %.80 to i64*
  %.82 = load i64* %.81, align 8
  %.83 = mul i64 %.82, 10
  %.84 = add i64 %.83, %storemerge5
  %.93 = add nsw i64 %3, 1
  %.104 = srem i64 %.84, %.5014
  store i64 %.104, i64* %.81, align 8
  %.116 = add i64 %.5014, -1
  %.118 = sdiv i64 %.84, %.5014
  %.64 = load i64* @b.n, align 8
  %.65 = icmp slt i64 %.93, %.64
  br i1 %.65, label %whilethen.2, label %whileend.2.loopexit

whileend.2.loopexit:                              ; preds = %whilethen.2
  %.118.lcssa = phi i64 [ %.118, %whilethen.2 ]
  br label %whileend.2

whileend.2:                                       ; preds = %whileend.2.loopexit, %whilethen.1
  %storemerge.lcssa = phi i64 [ 0, %whilethen.1 ], [ %.118.lcssa, %whileend.2.loopexit ]
  %.126 = add i64 %storemerge.lcssa, 48
  %.128 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 %.126)
  %.134 = add nsw i64 %2, 1
  %.136 = srem i64 %.134, 5
  %.137 = icmp eq i64 %.136, 0
  br i1 %.137, label %whileend.2.if, label %while.1.backedge

while.1.backedge:                                 ; preds = %whileend.2, %whileend.2.if
  %.39 = load i64* @b.n, align 8
  %.40 = shl i64 %.39, 1
  %.41 = icmp slt i64 %.134, %.40
  br i1 %.41, label %whilethen.1, label %whileend.1.loopexit

whileend.2.if:                                    ; preds = %whileend.2
  %.146 = srem i64 %.134, 50
  %.147 = icmp eq i64 %.146, 0
  %. = select i1 %.147, i64 10, i64 32
  %.153 = tail call i64 bitcast (i64* @b.putchar to i64 (i64)*)(i64 %.)
  br label %while.1.backedge
}
