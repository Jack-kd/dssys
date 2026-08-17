package com.byazt.fg;

import com.byazt.ymw.u;
import com.bytedance.sdk.openadsdk.TTAdConstant;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.IMAGE_CODE, 28})
/* loaded from: classes2.dex */
public class hp {
    public static int hp = 6;

    /* renamed from: l, reason: collision with root package name */
    public static l f19732l = C0224hp.hp();

    @com.byazt.kj.hp(hp = {0, 1, TTAdConstant.IMAGE_CODE, 170})
    /* renamed from: com.byazt.fg.hp$hp, reason: collision with other inner class name */
    public static final class C0224hp extends l {

        @com.byazt.kj.hp(hp = {0, 1, TTAdConstant.IMAGE_CODE, TTAdConstant.IMAGE_URL_CODE})
        /* renamed from: com.byazt.fg.hp$hp$hp, reason: collision with other inner class name */
        public static class C0225hp {
            public static final C0224hp hp = new C0224hp();
        }

        public static C0224hp hp() {
            return C0225hp.hp;
        }

        private C0224hp() {
        }

        @Override // com.byazt.fg.hp.l
        public void hp(String str, String str2, Throwable th) {
            u.hp(str, str2, th);
        }

        @Override // com.byazt.fg.hp.l
        public void hp(String str, String str2) {
            u.l(str, str2);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, TTAdConstant.IMAGE_CODE, 255})
    public static abstract class l {
        public void hp(String str, String str2) {
        }

        public void hp(String str, String str2, Throwable th) {
        }

        public boolean hp(int i2) {
            return hp.hp() <= i2;
        }
    }

    public static int hp() {
        return hp;
    }

    public static void j(String str, String str2) {
        if (str2 != null && f19732l.hp(6)) {
            f19732l.hp(str, str2);
        }
    }

    public static void jx(String str, String str2) {
        if (str2 == null) {
            return;
        }
        f19732l.hp(5);
    }

    public static boolean l() {
        return hp <= 3;
    }

    public static void hp(String str) {
        hp("Logger", str);
    }

    public static void l(String str, String str2) {
        if (str2 == null) {
            return;
        }
        f19732l.hp(4);
    }

    public static void hp(String str, String str2) {
        if (str2 == null) {
            return;
        }
        f19732l.hp(3);
    }

    public static void l(String str) {
        j("Logger", str);
    }

    public static void hp(String str, String str2, Throwable th) {
        if (!(str2 == null && th == null) && f19732l.hp(6)) {
            f19732l.hp(str, str2, th);
        }
    }
}
