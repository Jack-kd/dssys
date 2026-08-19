package com.byazt.kw;

@com.byazt.kj.hp(hp = {0, 1, 756, 45})
/* loaded from: classes.dex */
public final class e {
    public static void hp(String str) {
        com.byazt.aj.s.w();
    }

    public static void l(Throwable th) {
        com.byazt.aj.s.w();
    }

    public static void hp(Throwable th) {
        if (com.byazt.aj.s.w().a()) {
            com.byazt.ymw.u.hp("npth", "NPTH Catch Error", th);
        }
    }

    public static void hp(String str, Throwable th) {
        if (com.byazt.aj.s.w().a()) {
            com.byazt.ymw.u.hp(str, "NPTH Catch Error", th);
        }
    }
}
