package com.smartdigimkt.k2;

/* loaded from: classes5.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41285a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f41286b;

    public b(c cVar, int i2) {
        this.f41286b = cVar;
        this.f41285a = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f41286b.b(this.f41285a);
    }
}
