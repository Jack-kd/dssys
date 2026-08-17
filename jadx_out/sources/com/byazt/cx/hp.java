package com.byazt.cx;

import com.byazt.vu.eb;
import com.byazt.vu.q;

@com.byazt.kj.hp(hp = {0, 1, 301, 28})
/* loaded from: classes2.dex */
public class hp {
    public com.byazt.rq.l hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.qt.l f19013j;
    public j<q, eb> jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.vu.jx f19014l;

    public hp(com.byazt.vu.jx jxVar, j<q, eb> jVar, com.byazt.ocx.hp hpVar) {
        if (jxVar == null || jVar == null) {
            return;
        }
        this.f19014l = jxVar;
        this.jx = jVar;
        com.byazt.rq.l lVar = new com.byazt.rq.l(jxVar.getContext(), jxVar.eb(), jxVar.a(), this.f19014l.s(), jxVar, jVar, hpVar);
        this.hp = lVar;
        this.f19013j = lVar;
    }

    public void hp(int i2) {
        com.byazt.rq.l lVar = this.hp;
        if (lVar != null) {
            lVar.setExpressTimeOut(i2);
        }
    }

    public void l() {
        com.byazt.rq.l lVar = this.hp;
        if (lVar != null) {
            lVar.renderSplash(this.f19014l, this.jx);
        }
    }

    public void hp(a aVar) {
        com.byazt.vu.jx jxVar = this.f19014l;
        if (jxVar == null || jxVar.f26689j == null || aVar == null) {
            return;
        }
        boolean zHp = aVar.hp();
        this.f19014l.f26689j.hp(zHp);
        com.byazt.rq.l lVar = this.hp;
        if (lVar != null) {
            lVar.updateSplashVideoFlag(zHp);
        }
    }

    public com.byazt.qt.l hp() {
        return this.f19013j;
    }
}
