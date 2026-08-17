package com.byazt.rl;

@com.byazt.kj.hp(hp = {0, 1, 578, 34})
/* loaded from: classes3.dex */
public class l {
    public static boolean hp(long j2, long j3) {
        return (j2 & j3) == j3;
    }

    public static boolean l(long j2) {
        return hp(j2, hp.USE_PITAYA.hp());
    }

    public static boolean hp(long j2) {
        return hp(j2, hp.USE_ALOG.hp());
    }
}
