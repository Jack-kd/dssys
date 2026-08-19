package com.byazt.yg;

import android.annotation.SuppressLint;
import android.graphics.PointF;

@com.byazt.kj.hp(hp = {0, 1, 1463, 28})
/* loaded from: classes3.dex */
public class hp {
    public final PointF hp;
    public final PointF jx;

    /* renamed from: l, reason: collision with root package name */
    public final PointF f27908l;

    public hp() {
        this.hp = new PointF();
        this.f27908l = new PointF();
        this.jx = new PointF();
    }

    public void hp(float f2, float f3) {
        this.hp.set(f2, f3);
    }

    public void jx(float f2, float f3) {
        this.jx.set(f2, f3);
    }

    public void l(float f2, float f3) {
        this.f27908l.set(f2, f3);
    }

    @SuppressLint({"DefaultLocale"})
    public String toString() {
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", Float.valueOf(this.jx.x), Float.valueOf(this.jx.y), Float.valueOf(this.hp.x), Float.valueOf(this.hp.y), Float.valueOf(this.f27908l.x), Float.valueOf(this.f27908l.y));
    }

    public PointF hp() {
        return this.hp;
    }

    public PointF jx() {
        return this.jx;
    }

    public PointF l() {
        return this.f27908l;
    }

    public hp(PointF pointF, PointF pointF2, PointF pointF3) {
        this.hp = pointF;
        this.f27908l = pointF2;
        this.jx = pointF3;
    }
}
