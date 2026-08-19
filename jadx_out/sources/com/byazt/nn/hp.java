package com.byazt.nn;

@com.byazt.kj.hp(hp = {0, 1, 2455, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp hp;

    /* renamed from: l, reason: collision with root package name */
    public int f23700l;

    private hp() {
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public int l() {
        return this.f23700l;
    }

    public void hp(int i2) {
        if (i2 <= 0) {
            return;
        }
        this.f23700l = i2;
    }
}
