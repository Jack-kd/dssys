package com.byazt.ruu;

@com.byazt.kj.hp(hp = {0, 1, 695, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile boolean hp = false;
    public static j jx;

    /* renamed from: l, reason: collision with root package name */
    public static jx f25385l;

    public static void hp(jx jxVar, j jVar) {
        if (hp) {
            return;
        }
        hp = true;
        f25385l = jxVar;
        jx = jVar;
    }

    public static j l() {
        return jx;
    }

    public static jx hp() {
        return f25385l;
    }
}
