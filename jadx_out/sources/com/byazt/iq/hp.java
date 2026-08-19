package com.byazt.iq;

@com.byazt.kj.hp(hp = {0, 1, 1269, 28})
/* loaded from: classes.dex */
public final class hp {

    /* renamed from: l, reason: collision with root package name */
    public static volatile hp f21177l;
    public volatile l hp;

    private hp() {
    }

    public static hp hp() {
        if (f21177l == null) {
            synchronized (hp.class) {
                try {
                    if (f21177l == null) {
                        f21177l = new hp();
                    }
                } finally {
                }
            }
        }
        return f21177l;
    }

    public l l() {
        return this.hp;
    }
}
