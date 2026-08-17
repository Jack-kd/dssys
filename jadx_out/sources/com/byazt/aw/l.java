package com.byazt.aw;

import com.byazt.ymw.u;
import com.byazt.zg.e;

@com.byazt.kj.hp(hp = {0, 1, 1452, 34})
/* loaded from: classes2.dex */
public class l {
    public static boolean hp = true;
    public static int jx = 4;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f18327l = false;

    public static void hp(int i2) {
        jx = i2;
    }

    public static void j(String str, String str2) {
        if (l() && str2 != null && jx <= 6) {
            u.l(str, str2);
        }
    }

    public static void jx(String str, String str2) {
        l();
    }

    public static boolean l() {
        return e.hp || f18327l;
    }

    public static void hp() {
        f18327l = true;
        hp(3);
    }

    public static void jx(String str) {
        if (l()) {
            j("Logger", str);
        }
    }

    public static void l(String str) {
        if (l()) {
            l("Logger", str);
        }
    }

    public static void hp(String str) {
        if (l()) {
            hp("Logger", str);
        }
    }

    public static void l(String str, String str2) {
        l();
    }

    public static void l(String str, String str2, Throwable th) {
        if (l()) {
            if (!(str2 == null && th == null) && jx <= 6) {
                u.hp(str, str2, th);
            }
        }
    }

    public static void hp(String str, String str2) {
        l();
    }

    public static void hp(String str, String str2, Throwable th) {
        l();
    }
}
