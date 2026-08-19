package com.byazt.fj;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import com.byazt.dt.hp;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, 28})
/* loaded from: classes2.dex */
public abstract class hp implements gu, w, hp.InterfaceC0210hp {

    /* renamed from: e, reason: collision with root package name */
    public final float[] f19806e;
    public final com.byazt.dt.hp<?, Float> gu;
    public final com.byazt.at.jx hp;
    public final com.byazt.dt.hp<?, Integer> jl;
    public float jx;

    /* renamed from: k, reason: collision with root package name */
    public final com.byazt.dt.hp<?, Float> f19808k;

    /* renamed from: l, reason: collision with root package name */
    public final Paint f19809l;

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.na.s f19811s;

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.dt.hp<Float, Float> f19812u;

    /* renamed from: v, reason: collision with root package name */
    public com.byazt.dt.hp<ColorFilter, ColorFilter> f19813v;
    public com.byazt.dt.jx xs;
    public final List<com.byazt.dt.hp<?, Float>> zy;

    /* renamed from: j, reason: collision with root package name */
    public final PathMeasure f19807j = new PathMeasure();

    /* renamed from: w, reason: collision with root package name */
    public final Path f19814w = new Path();

    /* renamed from: a, reason: collision with root package name */
    public final Path f19805a = new Path();
    public final RectF eb = new RectF();

    /* renamed from: q, reason: collision with root package name */
    public final List<C0226hp> f19810q = new ArrayList();

    @com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, 170})
    /* renamed from: com.byazt.fj.hp$hp, reason: collision with other inner class name */
    public static final class C0226hp {
        public final List<zy> hp;

        /* renamed from: l, reason: collision with root package name */
        public final n f19815l;

        private C0226hp(n nVar) {
            this.hp = new ArrayList();
            this.f19815l = nVar;
        }
    }

    public hp(com.byazt.na.s sVar, com.byazt.at.jx jxVar, Paint.Cap cap, Paint.Join join, float f2, com.byazt.ha.j jVar, com.byazt.ha.l lVar, List<com.byazt.ha.l> list, com.byazt.ha.l lVar2) {
        com.byazt.nv.hp hpVar = new com.byazt.nv.hp(1);
        this.f19809l = hpVar;
        this.jx = 0.0f;
        this.f19811s = sVar;
        this.hp = jxVar;
        hpVar.setStyle(Paint.Style.STROKE);
        hpVar.setStrokeCap(cap);
        hpVar.setStrokeJoin(join);
        hpVar.setStrokeMiter(f2);
        this.jl = jVar.hp();
        this.gu = lVar.hp();
        if (lVar2 == null) {
            this.f19808k = null;
        } else {
            this.f19808k = lVar2.hp();
        }
        this.zy = new ArrayList(list.size());
        this.f19806e = new float[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zy.add(list.get(i2).hp());
        }
        jxVar.hp(this.jl);
        jxVar.hp(this.gu);
        for (int i3 = 0; i3 < this.zy.size(); i3++) {
            jxVar.hp(this.zy.get(i3));
        }
        com.byazt.dt.hp<?, Float> hpVar2 = this.f19808k;
        if (hpVar2 != null) {
            jxVar.hp(hpVar2);
        }
        this.jl.hp(this);
        this.gu.hp(this);
        for (int i4 = 0; i4 < list.size(); i4++) {
            this.zy.get(i4).hp(this);
        }
        com.byazt.dt.hp<?, Float> hpVar3 = this.f19808k;
        if (hpVar3 != null) {
            hpVar3.hp(this);
        }
        if (jxVar.jl() != null) {
            com.byazt.dt.hp<Float, Float> hpVarHp = jxVar.jl().hp().hp();
            this.f19812u = hpVarHp;
            hpVarHp.hp(this);
            jxVar.hp(this.f19812u);
        }
        if (jxVar.zy() != null) {
            this.xs = new com.byazt.dt.jx(this, jxVar, jxVar.zy());
        }
    }

    @Override // com.byazt.dt.hp.InterfaceC0210hp
    public void hp() {
        this.f19811s.invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0055  */
    @Override // com.byazt.fj.jx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(java.util.List<com.byazt.fj.jx> r8, java.util.List<com.byazt.fj.jx> r9) {
        /*
            r7 = this;
            int r0 = r8.size()
            int r0 = r0 + (-1)
            r1 = 0
            r2 = r1
        L8:
            if (r0 < 0) goto L22
            java.lang.Object r3 = r8.get(r0)
            com.byazt.fj.jx r3 = (com.byazt.fj.jx) r3
            boolean r4 = r3 instanceof com.byazt.fj.n
            if (r4 == 0) goto L1f
            com.byazt.fj.n r3 = (com.byazt.fj.n) r3
            com.byazt.mo.ec$hp r4 = r3.getType()
            com.byazt.mo.ec$hp r5 = com.byazt.mo.ec.hp.INDIVIDUALLY
            if (r4 != r5) goto L1f
            r2 = r3
        L1f:
            int r0 = r0 + (-1)
            goto L8
        L22:
            if (r2 == 0) goto L27
            r2.hp(r7)
        L27:
            int r8 = r9.size()
            int r8 = r8 + (-1)
            r0 = r1
        L2e:
            if (r8 < 0) goto L6c
            java.lang.Object r3 = r9.get(r8)
            com.byazt.fj.jx r3 = (com.byazt.fj.jx) r3
            boolean r4 = r3 instanceof com.byazt.fj.n
            if (r4 == 0) goto L55
            r4 = r3
            com.byazt.fj.n r4 = (com.byazt.fj.n) r4
            com.byazt.mo.ec$hp r5 = r4.getType()
            com.byazt.mo.ec$hp r6 = com.byazt.mo.ec.hp.INDIVIDUALLY
            if (r5 != r6) goto L55
            if (r0 == 0) goto L4c
            java.util.List<com.byazt.fj.hp$hp> r3 = r7.f19810q
            r3.add(r0)
        L4c:
            com.byazt.fj.hp$hp r0 = new com.byazt.fj.hp$hp
            r0.<init>(r4)
            r4.hp(r7)
            goto L69
        L55:
            boolean r4 = r3 instanceof com.byazt.fj.zy
            if (r4 == 0) goto L69
            if (r0 != 0) goto L60
            com.byazt.fj.hp$hp r0 = new com.byazt.fj.hp$hp
            r0.<init>(r2)
        L60:
            java.util.List r4 = com.byazt.fj.hp.C0226hp.hp(r0)
            com.byazt.fj.zy r3 = (com.byazt.fj.zy) r3
            r4.add(r3)
        L69:
            int r8 = r8 + (-1)
            goto L2e
        L6c:
            if (r0 == 0) goto L73
            java.util.List<com.byazt.fj.hp$hp> r8 = r7.f19810q
            r8.add(r0)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fj.hp.hp(java.util.List, java.util.List):void");
    }

    @Override // com.byazt.fj.w
    public void hp(Canvas canvas, Matrix matrix, int i2) {
        com.byazt.na.w.hp("StrokeContent#draw");
        if (com.byazt.ze.e.l(matrix)) {
            com.byazt.na.w.l("StrokeContent#draw");
            return;
        }
        this.f19809l.setAlpha(com.byazt.ze.q.hp((int) ((((i2 / 255.0f) * ((com.byazt.dt.a) this.jl).q()) / 100.0f) * 255.0f), 0, 255));
        this.f19809l.setStrokeWidth(((com.byazt.dt.j) this.gu).q() * com.byazt.ze.e.hp(matrix));
        if (this.f19809l.getStrokeWidth() <= 0.0f) {
            com.byazt.na.w.l("StrokeContent#draw");
            return;
        }
        hp(matrix);
        com.byazt.dt.hp<ColorFilter, ColorFilter> hpVar = this.f19813v;
        if (hpVar != null) {
            this.f19809l.setColorFilter(hpVar.eb());
        }
        com.byazt.dt.hp<Float, Float> hpVar2 = this.f19812u;
        if (hpVar2 != null) {
            float fFloatValue = hpVar2.eb().floatValue();
            if (fFloatValue == 0.0f) {
                this.f19809l.setMaskFilter(null);
            } else if (fFloatValue != this.jx) {
                this.f19809l.setMaskFilter(this.hp.l(fFloatValue));
            }
            this.jx = fFloatValue;
        }
        com.byazt.dt.jx jxVar = this.xs;
        if (jxVar != null) {
            jxVar.hp(this.f19809l);
        }
        for (int i3 = 0; i3 < this.f19810q.size(); i3++) {
            C0226hp c0226hp = this.f19810q.get(i3);
            if (c0226hp.f19815l != null) {
                hp(canvas, c0226hp, matrix);
            } else {
                com.byazt.na.w.hp("StrokeContent#buildPath");
                this.f19814w.reset();
                for (int size = c0226hp.hp.size() - 1; size >= 0; size--) {
                    this.f19814w.addPath(((zy) c0226hp.hp.get(size)).j(), matrix);
                }
                com.byazt.na.w.l("StrokeContent#buildPath");
                com.byazt.na.w.hp("StrokeContent#drawPath");
                canvas.drawPath(this.f19814w, this.f19809l);
                com.byazt.na.w.l("StrokeContent#drawPath");
            }
        }
        com.byazt.na.w.l("StrokeContent#draw");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(android.graphics.Canvas r17, com.byazt.fj.hp.C0226hp r18, android.graphics.Matrix r19) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.fj.hp.hp(android.graphics.Canvas, com.byazt.fj.hp$hp, android.graphics.Matrix):void");
    }

    @Override // com.byazt.fj.w
    public void hp(RectF rectF, Matrix matrix, boolean z2) {
        com.byazt.na.w.hp("StrokeContent#getBounds");
        this.f19814w.reset();
        for (int i2 = 0; i2 < this.f19810q.size(); i2++) {
            C0226hp c0226hp = this.f19810q.get(i2);
            for (int i3 = 0; i3 < c0226hp.hp.size(); i3++) {
                this.f19814w.addPath(((zy) c0226hp.hp.get(i3)).j(), matrix);
            }
        }
        this.f19814w.computeBounds(this.eb, false);
        float fQ = ((com.byazt.dt.j) this.gu).q();
        RectF rectF2 = this.eb;
        float f2 = fQ / 2.0f;
        rectF2.set(rectF2.left - f2, rectF2.top - f2, rectF2.right + f2, rectF2.bottom + f2);
        rectF.set(this.eb);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        com.byazt.na.w.l("StrokeContent#getBounds");
    }

    private void hp(Matrix matrix) {
        com.byazt.na.w.hp("StrokeContent#applyDashPattern");
        if (this.zy.isEmpty()) {
            com.byazt.na.w.l("StrokeContent#applyDashPattern");
            return;
        }
        float fHp = com.byazt.ze.e.hp(matrix);
        for (int i2 = 0; i2 < this.zy.size(); i2++) {
            this.f19806e[i2] = this.zy.get(i2).eb().floatValue();
            if (i2 % 2 == 0) {
                float[] fArr = this.f19806e;
                if (fArr[i2] < 1.0f) {
                    fArr[i2] = 1.0f;
                }
            } else {
                float[] fArr2 = this.f19806e;
                if (fArr2[i2] < 0.1f) {
                    fArr2[i2] = 0.1f;
                }
            }
            float[] fArr3 = this.f19806e;
            fArr3[i2] = fArr3[i2] * fHp;
        }
        com.byazt.dt.hp<?, Float> hpVar = this.f19808k;
        this.f19809l.setPathEffect(new DashPathEffect(this.f19806e, hpVar == null ? 0.0f : fHp * hpVar.eb().floatValue()));
        com.byazt.na.w.l("StrokeContent#applyDashPattern");
    }
}
