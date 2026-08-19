package com.smartdigimkt.j0;

/* loaded from: classes5.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public z f40947a;

    /* renamed from: b, reason: collision with root package name */
    public int f40948b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f40949c;

    /* renamed from: d, reason: collision with root package name */
    public int f40950d;

    public final void a(int i2) {
        if (!this.f40949c || this.f40950d == 4) {
            this.f40949c = true;
            this.f40950d = i2;
        } else if (i2 != 4) {
            throw new IllegalArgumentException();
        }
    }
}
