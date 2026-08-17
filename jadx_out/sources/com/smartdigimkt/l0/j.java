package com.smartdigimkt.l0;

/* loaded from: classes5.dex */
public final class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m0.c f41553a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f41554b;

    public j(l lVar, com.smartdigimkt.m0.c cVar) {
        this.f41554b = lVar;
        this.f41553a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f41553a) {
        }
        this.f41554b.f41558b.a(this.f41553a);
    }
}
