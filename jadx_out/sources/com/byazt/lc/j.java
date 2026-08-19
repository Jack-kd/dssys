package com.byazt.lc;

import androidx.annotation.Nullable;

@com.byazt.kj.hp(hp = {0, 1, 1769, 38})
/* loaded from: classes3.dex */
public class j {
    public static <T> boolean hp(@Nullable T[] tArr) {
        return tArr == null || tArr.length == 0;
    }

    public static <T> int l(@Nullable T[] tArr, T t2) {
        if (tArr == null) {
            return -1;
        }
        for (int i2 = 0; i2 < tArr.length; i2++) {
            T t3 = tArr[i2];
            if (t3 == t2 || (t3 != null && t3.equals(t2))) {
                return i2;
            }
        }
        return -1;
    }

    public static <T> boolean hp(@Nullable T[] tArr, T t2) {
        return l(tArr, t2) != -1;
    }

    public static <T> boolean hp(@Nullable T[] tArr, T[] tArr2) {
        if (tArr2 == null) {
            return true;
        }
        for (T t2 : tArr2) {
            if (!hp(tArr, t2)) {
                return false;
            }
        }
        return true;
    }
}
