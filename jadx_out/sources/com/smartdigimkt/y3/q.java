package com.smartdigimkt.y3;

import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class q implements com.smartdigimkt.s4.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.q3.d f45245a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f45246b;

    public q(s sVar, com.smartdigimkt.q3.d dVar) {
        this.f45246b = sVar;
        this.f45245a = dVar;
    }

    @Override // com.smartdigimkt.s4.c
    public final void a(Object obj) {
        String str = this.f45246b.f45250a;
        this.f45245a.getClass();
        com.smartdigimkt.k3.j.a(com.smartdigimkt.k3.d.a(SDKContext.getInstance().d())).a(this.f45245a);
        this.f45246b.f45251b.decrementAndGet();
    }

    @Override // com.smartdigimkt.s4.c
    public final void a(Throwable th) {
        String str = this.f45246b.f45250a;
        this.f45245a.getClass();
        th.getMessage();
        this.f45246b.f45251b.decrementAndGet();
    }
}
