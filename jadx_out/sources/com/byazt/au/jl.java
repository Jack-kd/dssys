package com.byazt.au;

@com.byazt.kj.hp(hp = {0, 1, 273, 19})
/* loaded from: classes2.dex */
public class jl {
    public static volatile com.byazt.yk.zy hp;

    /* renamed from: l, reason: collision with root package name */
    public static volatile com.byazt.yk.zy f18291l;

    public static com.byazt.yk.zy hp(boolean z2) {
        if (z2 && com.byazt.yk.jx.nd()) {
            if (f18291l == null) {
                synchronized (jl.class) {
                    try {
                        if (f18291l == null) {
                            f18291l = com.byazt.yk.jx.hd().l();
                        }
                    } finally {
                    }
                }
            }
            return f18291l;
        }
        if (hp == null) {
            synchronized (jl.class) {
                try {
                    if (hp == null) {
                        hp = new u();
                    }
                } finally {
                }
            }
        }
        return hp;
    }
}
