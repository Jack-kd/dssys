package com.byazt.dt;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.byazt.dt.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1622, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes2.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    public hp<PointF, PointF> f19285a;

    /* renamed from: e, reason: collision with root package name */
    public hp<Integer, Integer> f19286e;
    public hp<?, PointF> eb;
    public j gu;
    public final Matrix hp = new Matrix();

    /* renamed from: j, reason: collision with root package name */
    public final Matrix f19287j;
    public j jl;
    public final Matrix jx;

    /* renamed from: k, reason: collision with root package name */
    public hp<?, Float> f19288k;

    /* renamed from: l, reason: collision with root package name */
    public final Matrix f19289l;

    /* renamed from: q, reason: collision with root package name */
    public hp<Float, Float> f19290q;

    /* renamed from: s, reason: collision with root package name */
    public hp<com.byazt.ch.j, com.byazt.ch.j> f19291s;

    /* renamed from: w, reason: collision with root package name */
    public final float[] f19292w;
    public hp<?, Float> zy;

    public u(com.byazt.ha.jl jlVar) {
        this.f19285a = jlVar.hp() == null ? null : jlVar.hp().hp();
        this.eb = jlVar.l() == null ? null : jlVar.l().hp();
        this.f19291s = jlVar.jx() == null ? null : jlVar.jx().hp();
        this.f19290q = jlVar.j() == null ? null : jlVar.j().hp();
        j jVar = jlVar.s() == null ? null : (j) jlVar.s().hp();
        this.gu = jVar;
        if (jVar != null) {
            this.f19289l = new Matrix();
            this.jx = new Matrix();
            this.f19287j = new Matrix();
            this.f19292w = new float[9];
        } else {
            this.f19289l = null;
            this.jx = null;
            this.f19287j = null;
            this.f19292w = null;
        }
        this.jl = jlVar.q() == null ? null : (j) jlVar.q().hp();
        if (jlVar.w() != null) {
            this.f19286e = jlVar.w().hp();
        }
        if (jlVar.a() != null) {
            this.zy = jlVar.a().hp();
        } else {
            this.zy = null;
        }
        if (jlVar.eb() != null) {
            this.f19288k = jlVar.eb().hp();
        } else {
            this.f19288k = null;
        }
    }

    private void w() {
        for (int i2 = 0; i2 < 9; i2++) {
            this.f19292w[i2] = 0.0f;
        }
    }

    public void hp(com.byazt.at.jx jxVar) {
        jxVar.hp(this.f19286e);
        jxVar.hp(this.zy);
        jxVar.hp(this.f19288k);
        jxVar.hp(this.f19285a);
        jxVar.hp(this.eb);
        jxVar.hp(this.f19291s);
        jxVar.hp(this.f19290q);
        jxVar.hp(this.gu);
        jxVar.hp(this.jl);
    }

    public Matrix j() {
        PointF pointFEb;
        PointF pointFEb2;
        this.hp.reset();
        hp<?, PointF> hpVar = this.eb;
        if (hpVar != null && (pointFEb2 = hpVar.eb()) != null) {
            float f2 = pointFEb2.x;
            if (f2 != 0.0f || pointFEb2.y != 0.0f) {
                this.hp.preTranslate(f2, pointFEb2.y);
            }
        }
        hp<Float, Float> hpVar2 = this.f19290q;
        if (hpVar2 != null) {
            float fFloatValue = hpVar2 instanceof xs ? hpVar2.eb().floatValue() : ((j) hpVar2).q();
            if (fFloatValue != 0.0f) {
                this.hp.preRotate(fFloatValue);
            }
        }
        if (this.gu != null) {
            float fCos = this.jl == null ? 0.0f : (float) Math.cos(Math.toRadians((-r3.q()) + 90.0f));
            float fSin = this.jl == null ? 1.0f : (float) Math.sin(Math.toRadians((-r5.q()) + 90.0f));
            float fTan = (float) Math.tan(Math.toRadians(r0.q()));
            w();
            float[] fArr = this.f19292w;
            fArr[0] = fCos;
            fArr[1] = fSin;
            float f3 = -fSin;
            fArr[3] = f3;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            this.f19289l.setValues(fArr);
            w();
            float[] fArr2 = this.f19292w;
            fArr2[0] = 1.0f;
            fArr2[3] = fTan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.jx.setValues(fArr2);
            w();
            float[] fArr3 = this.f19292w;
            fArr3[0] = fCos;
            fArr3[1] = f3;
            fArr3[3] = fSin;
            fArr3[4] = fCos;
            fArr3[8] = 1.0f;
            this.f19287j.setValues(fArr3);
            this.jx.preConcat(this.f19289l);
            this.f19287j.preConcat(this.jx);
            this.hp.preConcat(this.f19287j);
        }
        hp<com.byazt.ch.j, com.byazt.ch.j> hpVar3 = this.f19291s;
        if (hpVar3 != null) {
            com.byazt.ch.j jVarEb = hpVar3.eb();
            if (jVarEb.hp() != 1.0f || jVarEb.l() != 1.0f) {
                this.hp.preScale(jVarEb.hp(), jVarEb.l());
            }
        }
        hp<PointF, PointF> hpVar4 = this.f19285a;
        if (hpVar4 != null && (((pointFEb = hpVar4.eb()) != null && pointFEb.x != 0.0f) || pointFEb.y != 0.0f)) {
            this.hp.preTranslate(-pointFEb.x, -pointFEb.y);
        }
        return this.hp;
    }

    public hp<?, Float> jx() {
        return this.f19288k;
    }

    public hp<?, Float> l() {
        return this.zy;
    }

    public Matrix l(float f2) {
        hp<?, PointF> hpVar = this.eb;
        PointF pointFEb = hpVar == null ? null : hpVar.eb();
        hp<com.byazt.ch.j, com.byazt.ch.j> hpVar2 = this.f19291s;
        com.byazt.ch.j jVarEb = hpVar2 == null ? null : hpVar2.eb();
        this.hp.reset();
        if (pointFEb != null) {
            this.hp.preTranslate(pointFEb.x * f2, pointFEb.y * f2);
        }
        if (jVarEb != null) {
            double d2 = f2;
            this.hp.preScale((float) Math.pow(jVarEb.hp(), d2), (float) Math.pow(jVarEb.l(), d2));
        }
        hp<Float, Float> hpVar3 = this.f19290q;
        if (hpVar3 != null) {
            float fFloatValue = hpVar3.eb().floatValue();
            hp<PointF, PointF> hpVar4 = this.f19285a;
            PointF pointFEb2 = hpVar4 != null ? hpVar4.eb() : null;
            this.hp.preRotate(fFloatValue * f2, pointFEb2 == null ? 0.0f : pointFEb2.x, pointFEb2 != null ? pointFEb2.y : 0.0f);
        }
        return this.hp;
    }

    public void hp(hp.InterfaceC0210hp interfaceC0210hp) {
        hp<Integer, Integer> hpVar = this.f19286e;
        if (hpVar != null) {
            hpVar.hp(interfaceC0210hp);
        }
        hp<?, Float> hpVar2 = this.zy;
        if (hpVar2 != null) {
            hpVar2.hp(interfaceC0210hp);
        }
        hp<?, Float> hpVar3 = this.f19288k;
        if (hpVar3 != null) {
            hpVar3.hp(interfaceC0210hp);
        }
        hp<PointF, PointF> hpVar4 = this.f19285a;
        if (hpVar4 != null) {
            hpVar4.hp(interfaceC0210hp);
        }
        hp<?, PointF> hpVar5 = this.eb;
        if (hpVar5 != null) {
            hpVar5.hp(interfaceC0210hp);
        }
        hp<com.byazt.ch.j, com.byazt.ch.j> hpVar6 = this.f19291s;
        if (hpVar6 != null) {
            hpVar6.hp(interfaceC0210hp);
        }
        hp<Float, Float> hpVar7 = this.f19290q;
        if (hpVar7 != null) {
            hpVar7.hp(interfaceC0210hp);
        }
        j jVar = this.gu;
        if (jVar != null) {
            jVar.hp(interfaceC0210hp);
        }
        j jVar2 = this.jl;
        if (jVar2 != null) {
            jVar2.hp(interfaceC0210hp);
        }
    }

    public void hp(float f2) {
        hp<Integer, Integer> hpVar = this.f19286e;
        if (hpVar != null) {
            hpVar.hp(f2);
        }
        hp<?, Float> hpVar2 = this.zy;
        if (hpVar2 != null) {
            hpVar2.hp(f2);
        }
        hp<?, Float> hpVar3 = this.f19288k;
        if (hpVar3 != null) {
            hpVar3.hp(f2);
        }
        hp<PointF, PointF> hpVar4 = this.f19285a;
        if (hpVar4 != null) {
            hpVar4.hp(f2);
        }
        hp<?, PointF> hpVar5 = this.eb;
        if (hpVar5 != null) {
            hpVar5.hp(f2);
        }
        hp<com.byazt.ch.j, com.byazt.ch.j> hpVar6 = this.f19291s;
        if (hpVar6 != null) {
            hpVar6.hp(f2);
        }
        hp<Float, Float> hpVar7 = this.f19290q;
        if (hpVar7 != null) {
            hpVar7.hp(f2);
        }
        j jVar = this.gu;
        if (jVar != null) {
            jVar.hp(f2);
        }
        j jVar2 = this.jl;
        if (jVar2 != null) {
            jVar2.hp(f2);
        }
    }

    public hp<?, Integer> hp() {
        return this.f19286e;
    }
}
