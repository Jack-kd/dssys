package com.byazt.xa;

@com.byazt.kj.hp(hp = {0, 1, 1328, 30})
/* loaded from: classes3.dex */
public final class jx {
    public static float hp(String str, float f2) {
        if (str == null) {
            return f2;
        }
        try {
            return Float.parseFloat(str);
        } catch (Throwable unused) {
            return f2;
        }
    }

    public static int hp(String str, int i2) {
        if (str == null) {
            return i2;
        }
        try {
            return (int) Float.parseFloat(str);
        } catch (Throwable unused) {
            return i2;
        }
    }

    public static long hp(String str, long j2) {
        if (str == null) {
            return j2;
        }
        try {
            return Long.parseLong(str);
        } catch (Throwable unused) {
            return j2;
        }
    }

    public static double hp(String str, double d2) {
        if (str == null) {
            return d2;
        }
        try {
            return Double.parseDouble(str);
        } catch (Throwable unused) {
            return d2;
        }
    }

    public static boolean hp(String str, boolean z2) {
        if (str == null) {
            return z2;
        }
        try {
            return Boolean.parseBoolean(str);
        } catch (Throwable unused) {
            return z2;
        }
    }
}
