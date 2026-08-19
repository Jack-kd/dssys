package com.byazt.fj;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.LongSparseArray;
import com.byazt.dt.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s implements gu, w, hp.InterfaceC0210hp {

    /* renamed from: e, reason: collision with root package name */
    public final List<zy> f19848e;
    public final Path eb;
    public final int ec;
    public final com.byazt.mo.eb gu;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.at.jx f19849j;
    public final com.byazt.dt.hp<com.byazt.mo.j, com.byazt.mo.j> jl;
    public final boolean jx;

    /* renamed from: k, reason: collision with root package name */
    public final com.byazt.dt.hp<PointF, PointF> f19850k;

    /* renamed from: l, reason: collision with root package name */
    public final String f19851l;

    /* renamed from: n, reason: collision with root package name */
    public com.byazt.dt.jx f19852n;

    /* renamed from: q, reason: collision with root package name */
    public final RectF f19853q;

    /* renamed from: s, reason: collision with root package name */
    public final Paint f19854s;
    public com.byazt.dt.hp<Float, Float> sz;

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.dt.hp<ColorFilter, ColorFilter> f19855u;

    /* renamed from: v, reason: collision with root package name */
    public final com.byazt.dt.hp<PointF, PointF> f19856v;
    public final com.byazt.na.s vv;
    public com.byazt.dt.xs xs;
    public final com.byazt.dt.hp<Integer, Integer> zy;

    /* renamed from: w, reason: collision with root package name */
    public final LongSparseArray<LinearGradient> f19857w = new LongSparseArray<>();

    /* renamed from: a, reason: collision with root package name */
    public final LongSparseArray<RadialGradient> f19847a = new LongSparseArray<>();

    public s(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar, com.byazt.mo.w wVar) {
        Path path = new Path();
        this.eb = path;
        this.f19854s = new com.byazt.nv.hp(1);
        this.f19853q = new RectF();
        this.f19848e = new ArrayList();
        this.hp = 0.0f;
        this.f19849j = jxVar;
        this.f19851l = wVar.hp();
        this.jx = wVar.s();
        this.vv = sVar;
        this.gu = wVar.l();
        path.setFillType(wVar.jx());
        this.ec = (int) (aVar.w() / 32.0f);
        com.byazt.dt.hp<com.byazt.mo.j, com.byazt.mo.j> hpVarHp = wVar.j().hp();
        this.jl = hpVarHp;
        hpVarHp.hp(this);
        jxVar.hp(hpVarHp);
        com.byazt.dt.hp<Integer, Integer> hpVarHp2 = wVar.w().hp();
        this.zy = hpVarHp2;
        hpVarHp2.hp(this);
        jxVar.hp(hpVarHp2);
        com.byazt.dt.hp<PointF, PointF> hpVarHp3 = wVar.a().hp();
        this.f19850k = hpVarHp3;
        hpVarHp3.hp(this);
        jxVar.hp(hpVarHp3);
        com.byazt.dt.hp<PointF, PointF> hpVarHp4 = wVar.eb().hp();
        this.f19856v = hpVarHp4;
        hpVarHp4.hp(this);
        jxVar.hp(hpVarHp4);
        if (jxVar.jl() != null) {
            com.byazt.dt.hp<Float, Float> hpVarHp5 = jxVar.jl().hp().hp();
            this.sz = hpVarHp5;
            hpVarHp5.hp(this);
            jxVar.hp(this.sz);
        }
        if (jxVar.zy() != null) {
            this.f19852n = new com.byazt.dt.jx(this, jxVar, jxVar.zy());
        }
    }

    private int j() {
        int iRound = Math.round(this.f19850k.s() * this.ec);
        int iRound2 = Math.round(this.f19856v.s() * this.ec);
        int iRound3 = Math.round(this.jl.s() * this.ec);
        int i2 = iRound != 0 ? iRound * 527 : 17;
        if (iRound2 != 0) {
            i2 = i2 * 31 * iRound2;
        }
        return iRound3 != 0 ? i2 * 31 * iRound3 : i2;
    }

    private RadialGradient jx() {
        long j2 = j();
        RadialGradient radialGradient = this.f19847a.get(j2);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointFEb = this.f19850k.eb();
        PointF pointFEb2 = this.f19856v.eb();
        com.byazt.mo.j jVarEb = this.jl.eb();
        int[] iArrHp = hp(jVarEb.l());
        float[] fArrHp = jVarEb.hp();
        float f2 = pointFEb.x;
        float f3 = pointFEb.y;
        float fHypot = (float) Math.hypot(pointFEb2.x - f2, pointFEb2.y - f3);
        if (fHypot <= 0.0f) {
            fHypot = 0.001f;
        }
        RadialGradient radialGradient2 = new RadialGradient(f2, f3, fHypot, iArrHp, fArrHp, Shader.TileMode.CLAMP);
        this.f19847a.put(j2, radialGradient2);
        return radialGradient2;
    }

    private LinearGradient l() {
        long j2 = j();
        LinearGradient linearGradient = this.f19857w.get(j2);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointFEb = this.f19850k.eb();
        PointF pointFEb2 = this.f19856v.eb();
        com.byazt.mo.j jVarEb = this.jl.eb();
        LinearGradient linearGradient2 = new LinearGradient(pointFEb.x, pointFEb.y, pointFEb2.x, pointFEb2.y, hp(jVarEb.l()), jVarEb.hp(), Shader.TileMode.CLAMP);
        this.f19857w.put(j2, linearGradient2);
        return linearGradient2;
    }

    @Override // com.byazt.dt.hp.InterfaceC0210hp
    public void hp() {
        this.vv.invalidateSelf();
    }

    @Override // com.byazt.fj.jx
    public void hp(List<jx> list, List<jx> list2) {
        for (int i2 = 0; i2 < list2.size(); i2++) {
            jx jxVar = list2.get(i2);
            if (jxVar instanceof zy) {
                this.f19848e.add((zy) jxVar);
            }
        }
    }

    @Override // com.byazt.fj.w
    public void hp(Canvas canvas, Matrix matrix, int i2) {
        Shader shaderJx;
        if (this.jx) {
            return;
        }
        com.byazt.na.w.hp("GradientFillContent#draw");
        this.eb.reset();
        for (int i3 = 0; i3 < this.f19848e.size(); i3++) {
            this.eb.addPath(this.f19848e.get(i3).j(), matrix);
        }
        this.eb.computeBounds(this.f19853q, false);
        if (this.gu == com.byazt.mo.eb.LINEAR) {
            shaderJx = l();
        } else {
            shaderJx = jx();
        }
        shaderJx.setLocalMatrix(matrix);
        this.f19854s.setShader(shaderJx);
        com.byazt.dt.hp<ColorFilter, ColorFilter> hpVar = this.f19855u;
        if (hpVar != null) {
            this.f19854s.setColorFilter(hpVar.eb());
        }
        com.byazt.dt.hp<Float, Float> hpVar2 = this.sz;
        if (hpVar2 != null) {
            float fFloatValue = hpVar2.eb().floatValue();
            if (fFloatValue == 0.0f) {
                this.f19854s.setMaskFilter(null);
            } else if (fFloatValue != this.hp) {
                this.f19854s.setMaskFilter(new BlurMaskFilter(fFloatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.hp = fFloatValue;
        }
        com.byazt.dt.jx jxVar = this.f19852n;
        if (jxVar != null) {
            jxVar.hp(this.f19854s);
        }
        this.f19854s.setAlpha(com.byazt.ze.q.hp((int) ((((i2 / 255.0f) * this.zy.eb().intValue()) / 100.0f) * 255.0f), 0, 255));
        canvas.drawPath(this.eb, this.f19854s);
        com.byazt.na.w.l("GradientFillContent#draw");
    }

    @Override // com.byazt.fj.w
    public void hp(RectF rectF, Matrix matrix, boolean z2) {
        this.eb.reset();
        for (int i2 = 0; i2 < this.f19848e.size(); i2++) {
            this.eb.addPath(this.f19848e.get(i2).j(), matrix);
        }
        this.eb.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    private int[] hp(int[] iArr) {
        com.byazt.dt.xs xsVar = this.xs;
        if (xsVar != null) {
            Integer[] numArr = (Integer[]) xsVar.eb();
            int i2 = 0;
            if (iArr.length == numArr.length) {
                while (i2 < iArr.length) {
                    iArr[i2] = numArr[i2].intValue();
                    i2++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i2 < numArr.length) {
                    iArr[i2] = numArr[i2].intValue();
                    i2++;
                }
            }
        }
        return iArr;
    }
}
