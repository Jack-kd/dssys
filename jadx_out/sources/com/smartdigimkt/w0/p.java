package com.smartdigimkt.w0;

/* loaded from: classes5.dex */
public final class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.k0.c f44853a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f44854b;

    public p(x xVar, com.smartdigimkt.k0.c cVar) {
        this.f44854b = xVar;
        this.f44853a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.k0.c cVar = this.f44853a;
        x xVar = this.f44854b;
        cVar.b(xVar.f44869a, xVar.f44870b);
    }
}
