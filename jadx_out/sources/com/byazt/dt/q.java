package com.byazt.dt;

import android.graphics.Path;
import android.graphics.PointF;

@com.byazt.kj.hp(hp = {0, 1, 1622, 150})
/* loaded from: classes2.dex */
public class q extends com.byazt.ch.hp<PointF> {

    /* renamed from: e, reason: collision with root package name */
    public Path f19283e;
    public final com.byazt.ch.hp<PointF> gu;

    public q(com.byazt.na.a aVar, com.byazt.ch.hp<PointF> hpVar) {
        super(aVar, hpVar.hp, hpVar.f18850l, hpVar.jx, hpVar.f18848j, hpVar.f18855w, hpVar.f18846a, hpVar.eb);
        this.gu = hpVar;
        hp();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void hp() {
        T t2;
        T t3;
        T t4 = this.f18850l;
        boolean z2 = (t4 == 0 || (t3 = this.hp) == 0 || !((PointF) t3).equals(((PointF) t4).x, ((PointF) t4).y)) ? false : true;
        T t5 = this.hp;
        if (t5 == 0 || (t2 = this.f18850l) == 0 || z2) {
            return;
        }
        com.byazt.ch.hp<PointF> hpVar = this.gu;
        this.f19283e = com.byazt.ze.e.hp((PointF) t5, (PointF) t2, hpVar.f18852s, hpVar.f18851q);
    }

    public Path l() {
        return this.f19283e;
    }
}
