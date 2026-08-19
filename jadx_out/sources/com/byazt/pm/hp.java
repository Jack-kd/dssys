package com.byazt.pm;

import com.byazt.pm.l;

@com.byazt.kj.hp(hp = {0, 1, 1191, 28})
/* loaded from: classes3.dex */
public class hp {
    public static void hp(String str) {
        l.hp.hp(str, 1, 0);
    }

    public static void jx(String str, long j2, long j3) {
        if (j2 > 0) {
            l.hp.hp(str, 4, (int) ((j3 * 100) / j2));
        }
    }

    public static void l(String str, long j2, long j3) {
        if (j2 > 0) {
            l.hp.hp(str, 2, (int) ((j3 * 100) / j2));
        }
    }

    public static void hp(String str, long j2, long j3) {
        if (j2 > 0) {
            l.hp.hp(str, 3, (int) ((j3 * 100) / j2));
        }
    }

    public static void jx(String str) {
        l.hp.hp(str, 6, 100);
    }

    public static void l(String str) {
        l.hp.hp(str, 5, 100);
    }
}
