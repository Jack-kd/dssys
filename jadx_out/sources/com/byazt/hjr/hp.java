package com.byazt.hjr;

@com.byazt.kj.hp(hp = {0, 1, 1246, 28})
/* loaded from: classes2.dex */
public class hp {
    public static volatile l hp;

    public static l hp(com.byazt.jw.w wVar) {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new jx(new a(wVar), wVar);
                    }
                } finally {
                }
            }
        }
        return hp;
    }
}
