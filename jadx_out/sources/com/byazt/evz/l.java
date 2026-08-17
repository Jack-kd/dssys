package com.byazt.evz;

import com.byazt.jz.sz;
import java.util.Random;

@com.byazt.kj.hp(hp = {0, 1, 1155, 34})
/* loaded from: classes2.dex */
public class l {
    public static volatile Random hp = null;

    /* renamed from: l, reason: collision with root package name */
    public static volatile boolean f19514l = false;

    public static boolean hp() {
        return f19514l;
    }

    private static Random jx() {
        if (hp != null) {
            return hp;
        }
        Random randomJx = com.byazt.ymw.hp.jx();
        hp = randomJx;
        return randomJx;
    }

    public static void l() {
        hp(sz.l().an(), true);
    }

    public static boolean hp(float f2, boolean z2) {
        if (f2 <= 0.0f) {
            if (z2) {
                f19514l = false;
            }
            return false;
        }
        int iNextInt = jx().nextInt(10000);
        int i2 = (int) (f2 * 10000.0f);
        if (z2) {
            f19514l = iNextInt < i2;
        }
        return iNextInt < i2;
    }
}
