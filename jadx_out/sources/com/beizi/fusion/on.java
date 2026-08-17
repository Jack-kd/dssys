package com.beizi.fusion;

import com.beizi.fusion.ze;

/* loaded from: classes2.dex */
public class on implements ze {

    /* renamed from: b, reason: collision with root package name */
    private long f15473b = 0;

    /* renamed from: a, reason: collision with root package name */
    private final ze.c f15472a = new ze.c();

    @Override // com.beizi.fusion.ze
    public void a(int i2, float f2, float f3, float f4, float f5, long j2) {
        this.f15472a.a(i2, new ze.b(f2, f3, f4, f5), j2);
        this.f15473b = System.currentTimeMillis();
    }

    @Override // com.beizi.fusion.ze
    public long b() {
        return this.f15473b;
    }

    @Override // com.beizi.fusion.ze
    public ze.c a() {
        return this.f15472a;
    }
}
