package com.byazt.fj;

import android.graphics.Path;
import android.graphics.PointF;
import com.byazt.dt.hp;
import com.byazt.mo.ec;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, 54})
/* loaded from: classes2.dex */
public class a implements gu, zy, hp.InterfaceC0210hp {

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.mo.l f19793a;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.dt.hp<?, PointF> f19794j;
    public final com.byazt.na.s jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f19795l;

    /* renamed from: s, reason: collision with root package name */
    public boolean f19796s;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.dt.hp<?, PointF> f19797w;
    public final Path hp = new Path();
    public final l eb = new l();

    public a(com.byazt.na.s sVar, com.byazt.at.jx jxVar, com.byazt.mo.l lVar) {
        this.f19795l = lVar.hp();
        this.jx = sVar;
        com.byazt.dt.hp<PointF, PointF> hpVarHp = lVar.jx().hp();
        this.f19794j = hpVarHp;
        com.byazt.dt.hp<PointF, PointF> hpVarHp2 = lVar.l().hp();
        this.f19797w = hpVarHp2;
        this.f19793a = lVar;
        jxVar.hp(hpVarHp);
        jxVar.hp(hpVarHp2);
        hpVarHp.hp(this);
        hpVarHp2.hp(this);
    }

    private void l() {
        this.f19796s = false;
        this.jx.invalidateSelf();
    }

    @Override // com.byazt.dt.hp.InterfaceC0210hp
    public void hp() {
        l();
    }

    @Override // com.byazt.fj.zy
    public Path j() {
        if (this.f19796s) {
            return this.hp;
        }
        this.hp.reset();
        if (this.f19793a.w()) {
            this.f19796s = true;
            return this.hp;
        }
        PointF pointFEb = this.f19794j.eb();
        float f2 = pointFEb.x / 2.0f;
        float f3 = pointFEb.y / 2.0f;
        float f4 = f2 * 0.55228f;
        float f5 = 0.55228f * f3;
        this.hp.reset();
        if (this.f19793a.j()) {
            float f6 = -f3;
            this.hp.moveTo(0.0f, f6);
            float f7 = 0.0f - f4;
            float f8 = -f2;
            float f9 = 0.0f - f5;
            this.hp.cubicTo(f7, f6, f8, f9, f8, 0.0f);
            float f10 = f5 + 0.0f;
            this.hp.cubicTo(f8, f10, f7, f3, 0.0f, f3);
            float f11 = f4 + 0.0f;
            this.hp.cubicTo(f11, f3, f2, f10, f2, 0.0f);
            this.hp.cubicTo(f2, f9, f11, f6, 0.0f, f6);
        } else {
            float f12 = -f3;
            this.hp.moveTo(0.0f, f12);
            float f13 = f4 + 0.0f;
            float f14 = 0.0f - f5;
            this.hp.cubicTo(f13, f12, f2, f14, f2, 0.0f);
            float f15 = f5 + 0.0f;
            this.hp.cubicTo(f2, f15, f13, f3, 0.0f, f3);
            float f16 = 0.0f - f4;
            float f17 = -f2;
            this.hp.cubicTo(f16, f3, f17, f15, f17, 0.0f);
            this.hp.cubicTo(f17, f14, f16, f12, 0.0f, f12);
        }
        PointF pointFEb2 = this.f19797w.eb();
        this.hp.offset(pointFEb2.x, pointFEb2.y);
        this.hp.close();
        this.eb.hp(this.hp);
        this.f19796s = true;
        return this.hp;
    }

    @Override // com.byazt.fj.jx
    public void hp(List<jx> list, List<jx> list2) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            jx jxVar = list.get(i2);
            if (jxVar instanceof n) {
                n nVar = (n) jxVar;
                if (nVar.getType() == ec.hp.SIMULTANEOUSLY) {
                    this.eb.hp(nVar);
                    nVar.hp(this);
                }
            }
        }
    }
}
