package com.smartdigimkt.w0;

import java.util.Iterator;

/* loaded from: classes5.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.k0.c f44851a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f44852b;

    public o(x xVar, com.smartdigimkt.k0.c cVar) {
        this.f44852b = xVar;
        this.f44851a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.k0.c cVar = this.f44851a;
        x xVar = this.f44852b;
        int i2 = xVar.f44869a;
        m mVar = xVar.f44870b;
        com.smartdigimkt.k0.a aVar = cVar.f41252d;
        aVar.f41241a.add(new com.smartdigimkt.k0.b(i2, mVar));
        if (aVar.f41241a.size() == 1 && !aVar.f41245e.c() && !aVar.f41241a.isEmpty()) {
            aVar.f41243c = (com.smartdigimkt.k0.b) aVar.f41241a.get(0);
        }
        cVar.a(i2, mVar);
        Iterator it = cVar.f41249a.iterator();
        if (it.hasNext()) {
            throw com.smartdigimkt.j0.h0.a(it);
        }
    }
}
