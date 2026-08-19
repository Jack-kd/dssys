package com.smartdigimkt.w0;

import java.util.Iterator;

/* loaded from: classes5.dex */
public final class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.k0.c f44855a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f44856b;

    public q(x xVar, com.smartdigimkt.k0.c cVar, y yVar, z zVar) {
        this.f44856b = xVar;
        this.f44855a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.k0.c cVar = this.f44855a;
        x xVar = this.f44856b;
        cVar.a(xVar.f44869a, xVar.f44870b);
        Iterator it = cVar.f41249a.iterator();
        if (it.hasNext()) {
            com.smartdigimkt.a.a.a(it.next());
            throw null;
        }
    }
}
