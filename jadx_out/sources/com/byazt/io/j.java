package com.byazt.io;

@com.byazt.kj.hp(hp = {0, 1, 856, 38})
/* loaded from: classes.dex */
public class j extends BaseException {
    public final long hp;

    /* renamed from: l, reason: collision with root package name */
    public final long f21154l;

    public j(long j2, long j3) {
        super(1006, String.format("space is not enough required space is : %s but available space is :%s", String.valueOf(j3), String.valueOf(j2)));
        this.hp = j2;
        this.f21154l = j3;
    }

    public long hp() {
        return this.hp;
    }

    public long l() {
        return this.f21154l;
    }
}
