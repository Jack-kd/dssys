package com.byazt.dt;

import android.graphics.PointF;
import java.util.Collections;

@com.byazt.kj.hp(hp = {0, 1, 1622, 42})
/* loaded from: classes2.dex */
public class k extends hp<PointF, PointF> {

    /* renamed from: a, reason: collision with root package name */
    public final PointF f19278a;
    public final PointF eb;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.ch.jx<Float> f19279j;

    /* renamed from: q, reason: collision with root package name */
    public final hp<Float, Float> f19280q;

    /* renamed from: s, reason: collision with root package name */
    public final hp<Float, Float> f19281s;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.ch.jx<Float> f19282w;

    public k(hp<Float, Float> hpVar, hp<Float, Float> hpVar2) {
        super(Collections.EMPTY_LIST);
        this.f19278a = new PointF();
        this.eb = new PointF();
        this.f19281s = hpVar;
        this.f19280q = hpVar2;
        hp(s());
    }

    @Override // com.byazt.dt.hp
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public PointF hp(com.byazt.ch.hp<PointF> hpVar, float f2) {
        float f3;
        Float fHp;
        com.byazt.ch.hp<Float> hpVarJx;
        com.byazt.ch.hp<Float> hpVarJx2;
        Float fHp2 = null;
        if (this.f19279j == null || (hpVarJx2 = this.f19281s.jx()) == null) {
            f3 = f2;
            fHp = null;
        } else {
            float fW = this.f19281s.w();
            Float f4 = hpVarJx2.eb;
            com.byazt.ch.jx<Float> jxVar = this.f19279j;
            float f5 = hpVarJx2.f18846a;
            f3 = f2;
            fHp = jxVar.hp(f5, f4 == null ? f5 : f4.floatValue(), hpVarJx2.hp, hpVarJx2.f18850l, f2, f2, fW);
        }
        if (this.f19282w != null && (hpVarJx = this.f19280q.jx()) != null) {
            float fW2 = this.f19280q.w();
            Float f6 = hpVarJx.eb;
            com.byazt.ch.jx<Float> jxVar2 = this.f19282w;
            float f7 = hpVarJx.f18846a;
            fHp2 = jxVar2.hp(f7, f6 == null ? f7 : f6.floatValue(), hpVarJx.hp, hpVarJx.f18850l, f3, f3, fW2);
        }
        if (fHp == null) {
            this.eb.set(this.f19278a.x, 0.0f);
        } else {
            this.eb.set(fHp.floatValue(), 0.0f);
        }
        if (fHp2 == null) {
            PointF pointF = this.eb;
            pointF.set(pointF.x, this.f19278a.y);
        } else {
            PointF pointF2 = this.eb;
            pointF2.set(pointF2.x, fHp2.floatValue());
        }
        return this.eb;
    }

    @Override // com.byazt.dt.hp
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public PointF eb() {
        return hp(null, 0.0f);
    }

    @Override // com.byazt.dt.hp
    public void hp(float f2) {
        this.f19281s.hp(f2);
        this.f19280q.hp(f2);
        this.f19278a.set(this.f19281s.eb().floatValue(), this.f19280q.eb().floatValue());
        for (int i2 = 0; i2 < this.hp.size(); i2++) {
            this.hp.get(i2).hp();
        }
    }
}
