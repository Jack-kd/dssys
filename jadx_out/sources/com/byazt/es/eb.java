package com.byazt.es;

@com.byazt.kj.hp(hp = {0, 1, 155, 94})
/* loaded from: classes2.dex */
public class eb {
    public static hp hp;

    public interface hp {
        void hp(String str, String str2, Throwable th);
    }

    public static void hp(hp hpVar) {
        hp = hpVar;
    }

    public static boolean hp() {
        return hp != null;
    }

    public static void hp(String str, String str2, Throwable th) {
        if (hp == null) {
            return;
        }
        if (th == null) {
            th = new Throwable();
        }
        hp.hp(str, str2, th);
    }
}
