package com.smartdigimkt.b1;

/* loaded from: classes5.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m0.c f39548a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f39549b;

    public l(s sVar, com.smartdigimkt.m0.c cVar) {
        this.f39549b = sVar;
        this.f39548a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f39549b.f39569b.c(this.f39548a);
    }
}
