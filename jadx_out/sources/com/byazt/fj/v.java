package com.byazt.fj;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.byazt.dt.hp;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes2.dex */
public class v implements gu, zy, hp.InterfaceC0210hp {

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.dt.hp<?, PointF> f19869a;
    public final com.byazt.dt.hp<?, PointF> eb;
    public boolean gu;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f19871j;
    public final String jx;

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.dt.hp<?, Float> f19874s;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.na.s f19875w;
    public final Path hp = new Path();

    /* renamed from: l, reason: collision with root package name */
    public final RectF f19872l = new RectF();

    /* renamed from: q, reason: collision with root package name */
    public final l f19873q = new l();

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.dt.hp<Float, Float> f19870e = null;

    public v(com.byazt.na.s sVar, com.byazt.at.jx jxVar, com.byazt.mo.gu guVar) {
        this.jx = guVar.hp();
        this.f19871j = guVar.w();
        this.f19875w = sVar;
        com.byazt.dt.hp<PointF, PointF> hpVarHp = guVar.j().hp();
        this.f19869a = hpVarHp;
        com.byazt.dt.hp<PointF, PointF> hpVarHp2 = guVar.jx().hp();
        this.eb = hpVarHp2;
        com.byazt.dt.hp<Float, Float> hpVarHp3 = guVar.l().hp();
        this.f19874s = hpVarHp3;
        jxVar.hp(hpVarHp);
        jxVar.hp(hpVarHp2);
        jxVar.hp(hpVarHp3);
        hpVarHp.hp(this);
        hpVarHp2.hp(this);
        hpVarHp3.hp(this);
    }

    private void l() {
        this.gu = false;
        this.f19875w.invalidateSelf();
    }

    @Override // com.byazt.dt.hp.InterfaceC0210hp
    public void hp() {
        l();
    }

    @Override // com.byazt.fj.zy
    public Path j() {
        com.byazt.dt.hp<Float, Float> hpVar;
        if (this.gu) {
            return this.hp;
        }
        this.hp.reset();
        if (this.f19871j) {
            this.gu = true;
            return this.hp;
        }
        PointF pointFEb = this.eb.eb();
        float f2 = pointFEb.x / 2.0f;
        float f3 = pointFEb.y / 2.0f;
        com.byazt.dt.hp<?, Float> hpVar2 = this.f19874s;
        float fQ = hpVar2 == null ? 0.0f : ((com.byazt.dt.j) hpVar2).q();
        if (fQ == 0.0f && (hpVar = this.f19870e) != null) {
            fQ = Math.min(hpVar.eb().floatValue(), Math.min(f2, f3));
        }
        float fMin = Math.min(f2, f3);
        if (fQ > fMin) {
            fQ = fMin;
        }
        PointF pointFEb2 = this.f19869a.eb();
        this.hp.moveTo(pointFEb2.x + f2, (pointFEb2.y - f3) + fQ);
        this.hp.lineTo(pointFEb2.x + f2, (pointFEb2.y + f3) - fQ);
        if (fQ > 0.0f) {
            RectF rectF = this.f19872l;
            float f4 = pointFEb2.x;
            float f5 = fQ * 2.0f;
            float f6 = pointFEb2.y;
            rectF.set((f4 + f2) - f5, (f6 + f3) - f5, f4 + f2, f6 + f3);
            this.hp.arcTo(this.f19872l, 0.0f, 90.0f, false);
        }
        this.hp.lineTo((pointFEb2.x - f2) + fQ, pointFEb2.y + f3);
        if (fQ > 0.0f) {
            RectF rectF2 = this.f19872l;
            float f7 = pointFEb2.x;
            float f8 = pointFEb2.y;
            float f9 = fQ * 2.0f;
            rectF2.set(f7 - f2, (f8 + f3) - f9, (f7 - f2) + f9, f8 + f3);
            this.hp.arcTo(this.f19872l, 90.0f, 90.0f, false);
        }
        this.hp.lineTo(pointFEb2.x - f2, (pointFEb2.y - f3) + fQ);
        if (fQ > 0.0f) {
            RectF rectF3 = this.f19872l;
            float f10 = pointFEb2.x;
            float f11 = pointFEb2.y;
            float f12 = fQ * 2.0f;
            rectF3.set(f10 - f2, f11 - f3, (f10 - f2) + f12, (f11 - f3) + f12);
            this.hp.arcTo(this.f19872l, 180.0f, 90.0f, false);
        }
        this.hp.lineTo((pointFEb2.x + f2) - fQ, pointFEb2.y - f3);
        if (fQ > 0.0f) {
            RectF rectF4 = this.f19872l;
            float f13 = pointFEb2.x;
            float f14 = fQ * 2.0f;
            float f15 = pointFEb2.y;
            rectF4.set((f13 + f2) - f14, f15 - f3, f13 + f2, (f15 - f3) + f14);
            this.hp.arcTo(this.f19872l, 270.0f, 90.0f, false);
        }
        this.hp.close();
        this.f19873q.hp(this.hp);
        this.gu = true;
        return this.hp;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    @Override // com.byazt.fj.jx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(java.util.List<com.byazt.fj.jx> r5, java.util.List<com.byazt.fj.jx> r6) {
        /*
            r4 = this;
            r6 = 0
        L1:
            int r0 = r5.size()
            if (r6 >= r0) goto L34
            java.lang.Object r0 = r5.get(r6)
            com.byazt.fj.jx r0 = (com.byazt.fj.jx) r0
            boolean r1 = r0 instanceof com.byazt.fj.n
            if (r1 == 0) goto L25
            r1 = r0
            com.byazt.fj.n r1 = (com.byazt.fj.n) r1
            com.byazt.mo.ec$hp r2 = r1.getType()
            com.byazt.mo.ec$hp r3 = com.byazt.mo.ec.hp.SIMULTANEOUSLY
            if (r2 != r3) goto L25
            com.byazt.fj.l r0 = r4.f19873q
            r0.hp(r1)
            r1.hp(r4)
            goto L31
        L25:
            boolean r1 = r0 instanceof com.byazt.fj.xs
            if (r1 == 0) goto L31
            com.byazt.fj.xs r0 = (com.byazt.fj.xs) r0
            com.byazt.dt.hp r0 = r0.l()
            r4.f19870e = r0
        L31:
            int r6 = r6 + 1
            goto L1
        L34:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fj.v.hp(java.util.List, java.util.List):void");
    }
}
