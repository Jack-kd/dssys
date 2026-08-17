package com.meishu.sdk.core.utils;

/* loaded from: classes4.dex */
public class u0 {
    public static int a(int i2, int i3, int i4, int i5) {
        if (i4 < 0) {
            i4 = 0;
        }
        if (i4 > 100) {
            i4 = 100;
        }
        int iMax = Math.max(i3, i5);
        return iMax >= i2 ? i2 : Math.round(((i2 - iMax) * i4) / 100.0f) + iMax;
    }
}
