package com.byazt.ha;

import android.graphics.PointF;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1209, 150})
/* loaded from: classes2.dex */
public class q implements zy<PointF, PointF> {
    public final l hp;

    /* renamed from: l, reason: collision with root package name */
    public final l f20650l;

    public q(l lVar, l lVar2) {
        this.hp = lVar;
        this.f20650l = lVar2;
    }

    @Override // com.byazt.ha.zy
    public com.byazt.dt.hp<PointF, PointF> hp() {
        return new com.byazt.dt.k(this.hp.hp(), this.f20650l.hp());
    }

    @Override // com.byazt.ha.zy
    public List<com.byazt.ch.hp<PointF>> jx() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // com.byazt.ha.zy
    public boolean l() {
        return this.hp.l() && this.f20650l.l();
    }
}
