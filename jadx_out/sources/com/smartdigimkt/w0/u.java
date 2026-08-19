package com.smartdigimkt.w0;

import java.util.Iterator;

/* loaded from: classes5.dex */
public final class u implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.k0.c f44863a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f44864b;

    public u(x xVar, com.smartdigimkt.k0.c cVar) {
        this.f44864b = xVar;
        this.f44863a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.k0.c cVar = this.f44863a;
        x xVar = this.f44864b;
        int i2 = xVar.f44869a;
        m mVar = xVar.f44870b;
        com.smartdigimkt.k0.a aVar = cVar.f41252d;
        aVar.getClass();
        aVar.f41244d = new com.smartdigimkt.k0.b(i2, mVar);
        cVar.a(i2, mVar);
        Iterator it = cVar.f41249a.iterator();
        if (it.hasNext()) {
            com.smartdigimkt.a.a.a(it.next());
            throw null;
        }
    }
}
