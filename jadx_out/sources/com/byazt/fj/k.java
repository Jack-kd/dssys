package com.byazt.fj;

import android.graphics.Path;
import android.graphics.PointF;
import com.byazt.dt.hp;
import com.byazt.mo.e;
import com.byazt.mo.ec;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, 42})
/* loaded from: classes2.dex */
public class k implements gu, zy, hp.InterfaceC0210hp {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f19827a;

    /* renamed from: e, reason: collision with root package name */
    public final com.byazt.dt.hp<?, Float> f19828e;
    public final com.byazt.dt.hp<?, Float> eb;
    public final com.byazt.dt.hp<?, Float> gu;

    /* renamed from: j, reason: collision with root package name */
    public final e.hp f19829j;
    public final com.byazt.dt.hp<?, Float> jl;
    public final com.byazt.na.s jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f19831l;

    /* renamed from: q, reason: collision with root package name */
    public final com.byazt.dt.hp<?, Float> f19832q;

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.dt.hp<?, PointF> f19833s;

    /* renamed from: v, reason: collision with root package name */
    public boolean f19834v;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f19835w;
    public final com.byazt.dt.hp<?, Float> zy;
    public final Path hp = new Path();

    /* renamed from: k, reason: collision with root package name */
    public final l f19830k = new l();

    @com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, 752})
    /* renamed from: com.byazt.fj.k$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[e.hp.values().length];
            hp = iArr;
            try {
                iArr[e.hp.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[e.hp.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public k(com.byazt.na.s sVar, com.byazt.at.jx jxVar, com.byazt.mo.e eVar) {
        this.jx = sVar;
        this.f19831l = eVar.hp();
        e.hp type = eVar.getType();
        this.f19829j = type;
        this.f19835w = eVar.q();
        this.f19827a = eVar.e();
        com.byazt.dt.hp<Float, Float> hpVarHp = eVar.l().hp();
        this.eb = hpVarHp;
        com.byazt.dt.hp<PointF, PointF> hpVarHp2 = eVar.jx().hp();
        this.f19833s = hpVarHp2;
        com.byazt.dt.hp<Float, Float> hpVarHp3 = eVar.j().hp();
        this.f19832q = hpVarHp3;
        com.byazt.dt.hp<Float, Float> hpVarHp4 = eVar.a().hp();
        this.gu = hpVarHp4;
        com.byazt.dt.hp<Float, Float> hpVarHp5 = eVar.s().hp();
        this.zy = hpVarHp5;
        e.hp hpVar = e.hp.STAR;
        if (type == hpVar) {
            this.f19828e = eVar.w().hp();
            this.jl = eVar.eb().hp();
        } else {
            this.f19828e = null;
            this.jl = null;
        }
        jxVar.hp(hpVarHp);
        jxVar.hp(hpVarHp2);
        jxVar.hp(hpVarHp3);
        jxVar.hp(hpVarHp4);
        jxVar.hp(hpVarHp5);
        if (type == hpVar) {
            jxVar.hp(this.f19828e);
            jxVar.hp(this.jl);
        }
        hpVarHp.hp(this);
        hpVarHp2.hp(this);
        hpVarHp3.hp(this);
        hpVarHp4.hp(this);
        hpVarHp5.hp(this);
        if (type == hpVar) {
            this.f19828e.hp(this);
            this.jl.hp(this);
        }
    }

    private void jx() {
        float f2;
        float f3;
        int i2;
        float fCos;
        float fSin;
        float f4;
        float f5;
        double d2;
        float f6;
        int i3;
        float f7;
        double d3;
        float f8;
        float f9;
        double d4;
        float f10;
        float f11;
        float fFloatValue = this.eb.eb().floatValue();
        double radians = Math.toRadians((this.f19832q == null ? 0.0d : r2.eb().floatValue()) - 90.0d);
        double d5 = fFloatValue;
        float f12 = (float) (6.283185307179586d / d5);
        if (this.f19827a) {
            f12 *= -1.0f;
        }
        float f13 = f12 / 2.0f;
        float f14 = fFloatValue - ((int) fFloatValue);
        int i4 = (f14 > 0.0f ? 1 : (f14 == 0.0f ? 0 : -1));
        if (i4 != 0) {
            radians += (1.0f - f14) * f13;
        }
        float fFloatValue2 = this.gu.eb().floatValue();
        float fFloatValue3 = this.f19828e.eb().floatValue();
        com.byazt.dt.hp<?, Float> hpVar = this.jl;
        float fFloatValue4 = hpVar != null ? hpVar.eb().floatValue() / 100.0f : 0.0f;
        com.byazt.dt.hp<?, Float> hpVar2 = this.zy;
        float fFloatValue5 = hpVar2 != null ? hpVar2.eb().floatValue() / 100.0f : 0.0f;
        if (i4 != 0) {
            f6 = ((fFloatValue2 - fFloatValue3) * f14) + fFloatValue3;
            f3 = 0.0f;
            i2 = i4;
            double d6 = f6;
            f2 = 2.0f;
            float fCos2 = (float) (d6 * Math.cos(radians));
            fSin = (float) (d6 * Math.sin(radians));
            this.hp.moveTo(fCos2, fSin);
            d2 = radians + ((f12 * f14) / 2.0f);
            f4 = f14;
            fCos = fCos2;
            f5 = f13;
        } else {
            f2 = 2.0f;
            f3 = 0.0f;
            i2 = i4;
            double d7 = fFloatValue2;
            fCos = (float) (Math.cos(radians) * d7);
            fSin = (float) (d7 * Math.sin(radians));
            this.hp.moveTo(fCos, fSin);
            f4 = f14;
            f5 = f13;
            d2 = radians + f5;
            f6 = 0.0f;
        }
        double dCeil = Math.ceil(d5) * 2.0d;
        int i5 = 0;
        boolean z2 = false;
        double d8 = d2;
        float f15 = fSin;
        float f16 = fCos;
        double d9 = d8;
        while (true) {
            double d10 = i5;
            if (d10 >= dCeil) {
                PointF pointFEb = this.f19833s.eb();
                this.hp.offset(pointFEb.x, pointFEb.y);
                this.hp.close();
                return;
            }
            float f17 = z2 ? fFloatValue2 : fFloatValue3;
            if (f6 == f3 || d10 != dCeil - 2.0d) {
                i3 = i5;
                f7 = f5;
            } else {
                i3 = i5;
                f7 = (f12 * f4) / f2;
            }
            if (f6 == f3 || d10 != dCeil - 1.0d) {
                d3 = d10;
                f8 = f17;
            } else {
                d3 = d10;
                f8 = f6;
            }
            double d11 = f8;
            float fCos3 = (float) (d11 * Math.cos(d9));
            float f18 = f12;
            float fSin2 = (float) (d11 * Math.sin(d9));
            if (fFloatValue4 == f3 && fFloatValue5 == f3) {
                this.hp.lineTo(fCos3, fSin2);
                f11 = fCos3;
                f10 = fSin2;
                f9 = f5;
                d4 = d9;
            } else {
                f9 = f5;
                d4 = d9;
                double dAtan2 = (float) (Math.atan2(f15, f16) - 1.5707963267948966d);
                float fCos4 = (float) Math.cos(dAtan2);
                float fSin3 = (float) Math.sin(dAtan2);
                float f19 = f16;
                float f20 = f15;
                f10 = fSin2;
                double dAtan22 = (float) (Math.atan2(fSin2, fCos3) - 1.5707963267948966d);
                float fCos5 = (float) Math.cos(dAtan22);
                float fSin4 = (float) Math.sin(dAtan22);
                float f21 = z2 ? fFloatValue4 : fFloatValue5;
                float f22 = z2 ? fFloatValue5 : fFloatValue4;
                float f23 = (z2 ? fFloatValue3 : fFloatValue2) * f21 * 0.47829f;
                float f24 = fCos4 * f23;
                float f25 = f23 * fSin3;
                float f26 = (z2 ? fFloatValue2 : fFloatValue3) * f22 * 0.47829f;
                float f27 = fCos5 * f26;
                float f28 = f26 * fSin4;
                if (i2 != 0) {
                    if (i3 == 0) {
                        f24 *= f4;
                        f25 *= f4;
                    } else if (d3 == dCeil - 1.0d) {
                        f27 *= f4;
                        f28 *= f4;
                    }
                }
                f11 = fCos3;
                this.hp.cubicTo(f19 - f24, f20 - f25, fCos3 + f27, f10 + f28, f11, f10);
            }
            d9 = d4 + f7;
            z2 = !z2;
            i5 = i3 + 1;
            f5 = f9;
            f16 = f11;
            f15 = f10;
            f12 = f18;
        }
    }

    private void l() {
        this.f19834v = false;
        this.jx.invalidateSelf();
    }

    private void w() {
        double d2;
        int iFloor = (int) Math.floor(this.eb.eb().floatValue());
        double radians = Math.toRadians((this.f19832q == null ? 0.0d : r2.eb().floatValue()) - 90.0d);
        double d3 = iFloor;
        float fFloatValue = this.zy.eb().floatValue() / 100.0f;
        float fFloatValue2 = this.gu.eb().floatValue();
        double d4 = fFloatValue2;
        float fCos = (float) (Math.cos(radians) * d4);
        float fSin = (float) (Math.sin(radians) * d4);
        this.hp.moveTo(fCos, fSin);
        double d5 = (float) (6.283185307179586d / d3);
        double d6 = radians + d5;
        double dCeil = Math.ceil(d3);
        int i2 = 0;
        while (i2 < dCeil) {
            float fCos2 = (float) (Math.cos(d6) * d4);
            int i3 = i2;
            double d7 = d6;
            float fSin2 = (float) (d4 * Math.sin(d6));
            if (fFloatValue != 0.0f) {
                d2 = dCeil;
                double dAtan2 = (float) (Math.atan2(fSin, fCos) - 1.5707963267948966d);
                float fCos3 = (float) Math.cos(dAtan2);
                float fSin3 = (float) Math.sin(dAtan2);
                double dAtan22 = (float) (Math.atan2(fSin2, fCos2) - 1.5707963267948966d);
                float f2 = fFloatValue2 * fFloatValue * 0.25f;
                this.hp.cubicTo(fCos - (f2 * fCos3), fSin - (f2 * fSin3), fCos2 + (((float) Math.cos(dAtan22)) * f2), fSin2 + (f2 * ((float) Math.sin(dAtan22))), fCos2, fSin2);
                fCos = fCos2;
                fSin = fSin2;
            } else {
                fSin = fSin2;
                d2 = dCeil;
                fCos = fCos2;
                this.hp.lineTo(fCos, fSin);
            }
            d6 = d7 + d5;
            i2 = i3 + 1;
            dCeil = d2;
        }
        PointF pointFEb = this.f19833s.eb();
        this.hp.offset(pointFEb.x, pointFEb.y);
        this.hp.close();
    }

    @Override // com.byazt.dt.hp.InterfaceC0210hp
    public void hp() {
        l();
    }

    @Override // com.byazt.fj.zy
    public Path j() {
        if (this.f19834v) {
            return this.hp;
        }
        this.hp.reset();
        if (this.f19835w) {
            this.f19834v = true;
            return this.hp;
        }
        int i2 = AnonymousClass1.hp[this.f19829j.ordinal()];
        if (i2 == 1) {
            jx();
        } else if (i2 == 2) {
            w();
        }
        this.hp.close();
        this.f19830k.hp(this.hp);
        this.f19834v = true;
        return this.hp;
    }

    @Override // com.byazt.fj.jx
    public void hp(List<jx> list, List<jx> list2) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            jx jxVar = list.get(i2);
            if (jxVar instanceof n) {
                n nVar = (n) jxVar;
                if (nVar.getType() == ec.hp.SIMULTANEOUSLY) {
                    this.f19830k.hp(nVar);
                    nVar.hp(this);
                }
            }
        }
    }
}
