package com.byazt.zf;

@com.byazt.kj.hp(hp = {0, 1, 582, 38})
/* loaded from: classes3.dex */
public class j extends Exception {
    public boolean hp;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f28404l;

    public j(boolean z2) {
        this.hp = z2;
    }

    public j(boolean z2, boolean z3, long j2) {
        this.hp = z2;
        this.f28404l = z3;
        this.jx = j2;
    }

    public j(boolean z2, long j2) {
        this.hp = z2;
        this.jx = j2;
    }
}
