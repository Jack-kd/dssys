package com.byazt.am;

@com.byazt.kj.hp(hp = {0, 1, 214, 28})
/* loaded from: classes2.dex */
public class hp extends l {
    public static volatile hp hp;

    private hp() {
    }

    public static l hp() {
        if (hp == null) {
            synchronized (l.class) {
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

    @Override // com.byazt.am.l
    public synchronized long jx() {
        return com.byazt.lca.w.hp().l();
    }

    @Override // com.byazt.am.l
    public synchronized int l() {
        int iJx = com.byazt.lca.w.hp().jx();
        if (com.byazt.lca.w.hp().j() <= 0.0f) {
            return iJx;
        }
        return (int) Math.ceil(r1 * iJx);
    }
}
