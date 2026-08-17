package com.smartdigimkt.i5;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.g5.a f40744a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f40745b;

    public c(h hVar, com.smartdigimkt.g5.a aVar) {
        this.f40745b = hVar;
        this.f40744a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f40745b.f40758d.set(true);
        this.f40744a.a(com.smartdigimkt.k4.b.a("10007", ""));
        this.f40745b.d(this.f40744a);
    }
}
