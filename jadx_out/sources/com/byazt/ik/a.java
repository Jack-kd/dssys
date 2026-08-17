package com.byazt.ik;

import com.byazt.ymw.u;

@com.byazt.kj.hp(hp = {0, 1, 110, 54})
/* loaded from: classes.dex */
public class a {
    public static boolean hp = false;

    /* renamed from: l, reason: collision with root package name */
    public static int f21126l = 4;

    public static void hp(String str) {
    }

    public static void j(String str, String str2) {
    }

    public static void jx(String str, String str2) {
    }

    public static void l(String str, String str2) {
    }

    public static void w(String str, String str2) {
        if (hp && str2 != null && f21126l <= 6) {
            u.l(str, str2);
        }
    }

    public static void hp(String str, String str2) {
    }

    public static void j(String str, String str2, Throwable th) {
    }

    public static void jx(String str, String str2, Throwable th) {
    }

    public static void l(String str, String str2, Throwable th) {
    }

    public static void hp(String str, String str2, Throwable th) {
    }

    public static void l(String str, Object... objArr) {
        if (hp && objArr != null && f21126l <= 5) {
            hp(objArr);
        }
    }

    public static void hp(Throwable th) {
    }

    public static void w(String str, String str2, Throwable th) {
        if (hp) {
            if (!(str2 == null && th == null) && f21126l <= 6) {
                u.hp(str, str2, th);
            }
        }
    }

    public static void hp(int i2) {
        f21126l = i2;
    }

    public static void hp() {
        hp = true;
        hp(3);
    }

    public static void l(String str) {
        if (hp) {
            w("TTLogger", str);
        }
    }

    public static void hp(String str, Object... objArr) {
        if (hp && objArr != null && f21126l <= 3) {
            hp(objArr);
        }
    }

    private static String hp(Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            StringBuilder sb = new StringBuilder();
            for (Object obj : objArr) {
                if (obj != null) {
                    sb.append(obj.toString());
                } else {
                    sb.append(" null ");
                }
                sb.append(" ");
            }
            return sb.toString();
        }
        return "";
    }
}
