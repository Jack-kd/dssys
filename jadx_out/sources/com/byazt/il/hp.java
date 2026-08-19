package com.byazt.il;

@com.byazt.kj.hp(hp = {0, 1, 1575, 28})
/* loaded from: classes.dex */
public class hp implements com.byazt.yb.hp {
    public final float hp;
    public final long jx;

    /* renamed from: l, reason: collision with root package name */
    public final float f21153l;

    public hp(float f2, float f3, long j2) {
        this.hp = f2;
        this.f21153l = f3;
        this.jx = j2;
    }

    @Override // com.byazt.yb.hp
    public long getLastTime() {
        return this.jx;
    }

    @Override // com.byazt.yb.hp
    public float getLatitude() {
        return this.hp;
    }

    @Override // com.byazt.yb.hp
    public float getLongitude() {
        return this.f21153l;
    }
}
