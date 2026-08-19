package com.byazt.rn;

import android.os.Handler;

@com.byazt.kj.hp(hp = {0, 1, 1042, 30})
/* loaded from: classes3.dex */
public class jx implements hp {
    public Handler hp;

    /* renamed from: l, reason: collision with root package name */
    public l f25264l;

    @Override // com.byazt.rn.hp
    public void hp(Handler handler, com.byazt.tgw.l lVar, l lVar2) {
        this.hp = handler;
        this.f25264l = lVar2;
        if (handler == null || lVar2 == null || lVar == null) {
            return;
        }
        lVar.s().put("serverBidding_timeout", Boolean.FALSE);
        handler.postDelayed(lVar2, lVar.e());
    }

    @Override // com.byazt.rn.hp
    public void hp() {
        l lVar;
        if (this.hp == null || (lVar = this.f25264l) == null || lVar.hp()) {
            return;
        }
        this.hp.removeCallbacks(this.f25264l);
        this.f25264l.run();
    }
}
