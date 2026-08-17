package com.smartdigimkt.b1;

/* loaded from: classes5.dex */
public final class r implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m0.c f39566a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f39567b;

    public r(s sVar, com.smartdigimkt.m0.c cVar) {
        this.f39567b = sVar;
        this.f39566a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f39566a) {
        }
        this.f39567b.f39569b.d(this.f39566a);
    }
}
