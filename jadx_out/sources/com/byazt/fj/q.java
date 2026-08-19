package com.byazt.fj;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.LongSparseArray;
import com.bytedance.sdk.openadsdk.TTAdConstant;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, 150})
/* loaded from: classes2.dex */
public class q extends hp {

    /* renamed from: a, reason: collision with root package name */
    public final LongSparseArray<LinearGradient> f19840a;

    /* renamed from: e, reason: collision with root package name */
    public final int f19841e;
    public final LongSparseArray<RadialGradient> eb;
    public final com.byazt.dt.hp<com.byazt.mo.j, com.byazt.mo.j> gu;

    /* renamed from: j, reason: collision with root package name */
    public final String f19842j;
    public final com.byazt.dt.hp<PointF, PointF> jl;

    /* renamed from: k, reason: collision with root package name */
    public com.byazt.dt.xs f19843k;

    /* renamed from: q, reason: collision with root package name */
    public final com.byazt.mo.eb f19844q;

    /* renamed from: s, reason: collision with root package name */
    public final RectF f19845s;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f19846w;
    public final com.byazt.dt.hp<PointF, PointF> zy;

    public q(com.byazt.na.s sVar, com.byazt.at.jx jxVar, com.byazt.mo.a aVar) {
        super(sVar, jxVar, aVar.s().hp(), aVar.q().hp(), aVar.jl(), aVar.j(), aVar.eb(), aVar.e(), aVar.gu());
        this.f19840a = new LongSparseArray<>();
        this.eb = new LongSparseArray<>();
        this.f19845s = new RectF();
        this.f19842j = aVar.hp();
        this.f19844q = aVar.l();
        this.f19846w = aVar.zy();
        this.f19841e = (int) (sVar.d().w() / 32.0f);
        com.byazt.dt.hp<com.byazt.mo.j, com.byazt.mo.j> hpVarHp = aVar.jx().hp();
        this.gu = hpVarHp;
        hpVarHp.hp(this);
        jxVar.hp(hpVarHp);
        com.byazt.dt.hp<PointF, PointF> hpVarHp2 = aVar.w().hp();
        this.jl = hpVarHp2;
        hpVarHp2.hp(this);
        jxVar.hp(hpVarHp2);
        com.byazt.dt.hp<PointF, PointF> hpVarHp3 = aVar.a().hp();
        this.zy = hpVarHp3;
        hpVarHp3.hp(this);
        jxVar.hp(hpVarHp3);
    }

    private int j() {
        int iRound = Math.round(this.jl.s() * this.f19841e);
        int iRound2 = Math.round(this.zy.s() * this.f19841e);
        int iRound3 = Math.round(this.gu.s() * this.f19841e);
        int i2 = iRound != 0 ? iRound * 527 : 17;
        if (iRound2 != 0) {
            i2 = i2 * 31 * iRound2;
        }
        return iRound3 != 0 ? i2 * 31 * iRound3 : i2;
    }

    private RadialGradient jx() {
        long j2 = j();
        RadialGradient radialGradient = this.eb.get(j2);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointFEb = this.jl.eb();
        PointF pointFEb2 = this.zy.eb();
        com.byazt.mo.j jVarEb = this.gu.eb();
        int[] iArrHp = hp(jVarEb.l());
        float[] fArrHp = jVarEb.hp();
        RadialGradient radialGradient2 = new RadialGradient(pointFEb.x, pointFEb.y, (float) Math.hypot(pointFEb2.x - r7, pointFEb2.y - r8), iArrHp, fArrHp, Shader.TileMode.CLAMP);
        this.eb.put(j2, radialGradient2);
        return radialGradient2;
    }

    private LinearGradient l() {
        long j2 = j();
        LinearGradient linearGradient = this.f19840a.get(j2);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointFEb = this.jl.eb();
        PointF pointFEb2 = this.zy.eb();
        com.byazt.mo.j jVarEb = this.gu.eb();
        LinearGradient linearGradient2 = new LinearGradient(pointFEb.x, pointFEb.y, pointFEb2.x, pointFEb2.y, hp(jVarEb.l()), jVarEb.hp(), Shader.TileMode.CLAMP);
        this.f19840a.put(j2, linearGradient2);
        return linearGradient2;
    }

    @Override // com.byazt.fj.hp, com.byazt.fj.w
    public void hp(Canvas canvas, Matrix matrix, int i2) {
        if (this.f19846w) {
            return;
        }
        hp(this.f19845s, matrix, false);
        Shader shaderL = this.f19844q == com.byazt.mo.eb.LINEAR ? l() : jx();
        shaderL.setLocalMatrix(matrix);
        this.f19809l.setShader(shaderL);
        super.hp(canvas, matrix, i2);
    }

    private int[] hp(int[] iArr) {
        com.byazt.dt.xs xsVar = this.f19843k;
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
