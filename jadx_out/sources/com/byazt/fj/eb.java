package com.byazt.fj;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.core.view.ViewCompat;
import com.byazt.dt.hp;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, 94})
/* loaded from: classes2.dex */
public class eb implements gu, w, hp.InterfaceC0210hp {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f19798a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.dt.hp<ColorFilter, ColorFilter> f19799e;
    public final List<zy> eb;
    public final com.byazt.na.s gu;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.at.jx f19800j;
    public com.byazt.dt.hp<Float, Float> jl;
    public final Paint jx;

    /* renamed from: l, reason: collision with root package name */
    public final Path f19801l;

    /* renamed from: q, reason: collision with root package name */
    public final com.byazt.dt.hp<Integer, Integer> f19802q;

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.dt.hp<Integer, Integer> f19803s;

    /* renamed from: w, reason: collision with root package name */
    public final String f19804w;
    public com.byazt.dt.jx zy;

    public eb(com.byazt.na.s sVar, com.byazt.at.jx jxVar, com.byazt.mo.v vVar) {
        Path path = new Path();
        this.f19801l = path;
        this.jx = new com.byazt.nv.hp(1);
        this.eb = new ArrayList();
        this.f19800j = jxVar;
        this.f19804w = vVar.hp();
        this.f19798a = vVar.w();
        this.gu = sVar;
        if (jxVar.jl() != null) {
            com.byazt.dt.hp<Float, Float> hpVarHp = jxVar.jl().hp().hp();
            this.jl = hpVarHp;
            hpVarHp.hp(this);
            jxVar.hp(this.jl);
        }
        if (jxVar.zy() != null) {
            this.zy = new com.byazt.dt.jx(this, jxVar, jxVar.zy());
        }
        if (vVar.l() == null || vVar.jx() == null) {
            this.f19803s = null;
            this.f19802q = null;
            return;
        }
        path.setFillType(vVar.j());
        com.byazt.dt.hp<Integer, Integer> hpVarHp2 = vVar.l().hp();
        this.f19803s = hpVarHp2;
        hpVarHp2.hp(this);
        jxVar.hp(hpVarHp2);
        com.byazt.dt.hp<Integer, Integer> hpVarHp3 = vVar.jx().hp();
        this.f19802q = hpVarHp3;
        hpVarHp3.hp(this);
        jxVar.hp(hpVarHp3);
    }

    @Override // com.byazt.dt.hp.InterfaceC0210hp
    public void hp() {
        this.gu.invalidateSelf();
    }

    @Override // com.byazt.fj.jx
    public void hp(List<jx> list, List<jx> list2) {
        for (int i2 = 0; i2 < list2.size(); i2++) {
            jx jxVar = list2.get(i2);
            if (jxVar instanceof zy) {
                this.eb.add((zy) jxVar);
            }
        }
    }

    @Override // com.byazt.fj.w
    public void hp(Canvas canvas, Matrix matrix, int i2) {
        if (this.f19798a) {
            return;
        }
        com.byazt.na.w.hp("FillContent#draw");
        this.jx.setColor((com.byazt.ze.q.hp((int) ((((i2 / 255.0f) * this.f19802q.eb().intValue()) / 100.0f) * 255.0f), 0, 255) << 24) | (((com.byazt.dt.l) this.f19803s).q() & ViewCompat.MEASURED_SIZE_MASK));
        com.byazt.dt.hp<ColorFilter, ColorFilter> hpVar = this.f19799e;
        if (hpVar != null) {
            this.jx.setColorFilter(hpVar.eb());
        }
        com.byazt.dt.hp<Float, Float> hpVar2 = this.jl;
        if (hpVar2 != null) {
            float fFloatValue = hpVar2.eb().floatValue();
            if (fFloatValue == 0.0f) {
                this.jx.setMaskFilter(null);
            } else if (fFloatValue != this.hp) {
                this.jx.setMaskFilter(this.f19800j.l(fFloatValue));
            }
            this.hp = fFloatValue;
        }
        com.byazt.dt.jx jxVar = this.zy;
        if (jxVar != null) {
            jxVar.hp(this.jx);
        }
        this.f19801l.reset();
        for (int i3 = 0; i3 < this.eb.size(); i3++) {
            this.f19801l.addPath(this.eb.get(i3).j(), matrix);
        }
        canvas.drawPath(this.f19801l, this.jx);
        com.byazt.na.w.l("FillContent#draw");
    }

    @Override // com.byazt.fj.w
    public void hp(RectF rectF, Matrix matrix, boolean z2) {
        this.f19801l.reset();
        for (int i2 = 0; i2 < this.eb.size(); i2++) {
            this.f19801l.addPath(this.eb.get(i2).j(), matrix);
        }
        this.f19801l.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }
}
