package com.byazt.l;

@com.byazt.kj.hp(hp = {0, 1, 34, 94})
/* loaded from: classes3.dex */
public class eb {
    public static volatile eb hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.b.a f22337l = null;

    private eb() {
    }

    public static eb hp() {
        if (hp == null) {
            synchronized (eb.class) {
                try {
                    if (hp == null) {
                        hp = new eb();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public com.byazt.b.a l() {
        return this.f22337l;
    }
}
