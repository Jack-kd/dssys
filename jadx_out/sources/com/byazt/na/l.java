package com.byazt.na;

@com.byazt.kj.hp(hp = {0, 1, 2, 34})
/* loaded from: classes3.dex */
public class l {
    public static final int[] hp = new int[0];

    /* renamed from: l, reason: collision with root package name */
    public static final long[] f23455l = new long[0];
    public static final Object[] jx = new Object[0];

    public static int hp(int[] iArr, int i2, int i3) {
        int i4 = i2 - 1;
        int i5 = 0;
        while (i5 <= i4) {
            int i6 = (i5 + i4) >>> 1;
            int i7 = iArr[i6];
            if (i7 < i3) {
                i5 = i6 + 1;
            } else {
                if (i7 <= i3) {
                    return i6;
                }
                i4 = i6 - 1;
            }
        }
        return ~i5;
    }
}
