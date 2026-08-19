package com.smartdigimkt.b1;

/* loaded from: classes5.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f39556a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f39557b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ s f39558c;

    public o(s sVar, int i2, long j2) {
        this.f39558c = sVar;
        this.f39556a = i2;
        this.f39557b = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f39558c.f39569b.a(this.f39556a, this.f39557b);
    }
}
