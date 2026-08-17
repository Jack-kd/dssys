package com.byazt.lc;

import android.os.Build;
import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 1769, 150})
/* loaded from: classes3.dex */
public class q {
    public static boolean a() {
        return Build.VERSION.SDK_INT <= 25;
    }

    public static boolean e() {
        return true;
    }

    public static boolean eb() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 >= 26 && i2 <= 28;
    }

    public static boolean ec() {
        return TextUtils.equals(Build.BRAND.toLowerCase(), "huawei");
    }

    public static boolean gu() {
        return Build.VERSION.SDK_INT <= 25;
    }

    public static boolean hp() {
        return true;
    }

    public static boolean j() {
        return false;
    }

    public static boolean jl() {
        return Build.VERSION.SDK_INT <= 28;
    }

    public static boolean jx() {
        return Build.VERSION.SDK_INT <= 28;
    }

    public static boolean k() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 28) {
            return i2 == 27 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }

    public static boolean l() {
        return true;
    }

    public static boolean q() {
        return true;
    }

    public static boolean s() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 >= 29 && i2 <= 30;
    }

    public static boolean sz() {
        return TextUtils.equals(Build.BRAND.toLowerCase(), "samsung");
    }

    public static boolean u() {
        return Build.VERSION.SDK_INT == 29;
    }

    public static boolean v() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 29) {
            return i2 == 28 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }

    public static boolean vv() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 31) {
            return i2 == 30 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }

    public static boolean w() {
        return false;
    }

    public static boolean xs() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 30) {
            return i2 == 29 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }

    public static boolean zy() {
        return Build.VERSION.SDK_INT >= 26;
    }
}
