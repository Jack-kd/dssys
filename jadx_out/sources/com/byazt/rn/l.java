package com.byazt.rn;

@com.byazt.kj.hp(hp = {0, 1, 1042, 34})
/* loaded from: classes3.dex */
public class l implements Runnable {
    public com.byazt.tgw.l hp;
    public boolean jx = false;

    /* renamed from: l, reason: collision with root package name */
    public Runnable f25265l;

    public l(com.byazt.tgw.l lVar, Runnable runnable) {
        this.hp = lVar;
        this.f25265l = runnable;
    }

    public boolean hp() {
        return this.jx;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.byazt.tgw.l lVar = this.hp;
        if (lVar != null && lVar.q() == 4) {
            this.hp.s().put("serverBidding_timeout", Boolean.TRUE);
        }
        this.jx = true;
        Runnable runnable = this.f25265l;
        if (runnable != null) {
            runnable.run();
        }
    }
}
