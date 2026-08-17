package com.byazt.dt;

import android.graphics.Color;
import android.graphics.Paint;
import com.byazt.dt.hp;

@com.byazt.kj.hp(hp = {0, 1, 1622, 30})
/* loaded from: classes2.dex */
public class jx implements hp.InterfaceC0210hp {

    /* renamed from: a, reason: collision with root package name */
    public final hp<Float, Float> f19274a;
    public boolean eb = true;
    public final hp.InterfaceC0210hp hp;

    /* renamed from: j, reason: collision with root package name */
    public final hp<Float, Float> f19275j;
    public final hp<Float, Float> jx;

    /* renamed from: l, reason: collision with root package name */
    public final hp<Integer, Integer> f19276l;

    /* renamed from: w, reason: collision with root package name */
    public final hp<Float, Float> f19277w;

    public jx(hp.InterfaceC0210hp interfaceC0210hp, com.byazt.at.jx jxVar, com.byazt.av.e eVar) {
        this.hp = interfaceC0210hp;
        hp<Integer, Integer> hpVarHp = eVar.hp().hp();
        this.f19276l = hpVarHp;
        hpVarHp.hp(this);
        jxVar.hp(hpVarHp);
        hp<Float, Float> hpVarHp2 = eVar.l().hp();
        this.jx = hpVarHp2;
        hpVarHp2.hp(this);
        jxVar.hp(hpVarHp2);
        hp<Float, Float> hpVarHp3 = eVar.jx().hp();
        this.f19275j = hpVarHp3;
        hpVarHp3.hp(this);
        jxVar.hp(hpVarHp3);
        hp<Float, Float> hpVarHp4 = eVar.j().hp();
        this.f19277w = hpVarHp4;
        hpVarHp4.hp(this);
        jxVar.hp(hpVarHp4);
        hp<Float, Float> hpVarHp5 = eVar.w().hp();
        this.f19274a = hpVarHp5;
        hpVarHp5.hp(this);
        jxVar.hp(hpVarHp5);
    }

    @Override // com.byazt.dt.hp.InterfaceC0210hp
    public void hp() {
        this.eb = true;
        this.hp.hp();
    }

    public void hp(Paint paint) {
        if (this.eb) {
            this.eb = false;
            double dFloatValue = this.f19275j.eb().floatValue() * 0.017453292519943295d;
            float fFloatValue = this.f19277w.eb().floatValue();
            float fSin = ((float) Math.sin(dFloatValue)) * fFloatValue;
            float fCos = ((float) Math.cos(dFloatValue + 3.141592653589793d)) * fFloatValue;
            int iIntValue = this.f19276l.eb().intValue();
            paint.setShadowLayer(this.f19274a.eb().floatValue(), fSin, fCos, Color.argb(Math.round(this.jx.eb().floatValue()), Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue)));
        }
    }
}
