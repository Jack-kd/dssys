package com.smartdigimkt.w0;

import java.util.Iterator;

/* loaded from: classes5.dex */
public final class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.k0.c f44865a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f44866b;

    public v(x xVar, com.smartdigimkt.k0.c cVar, z zVar) {
        this.f44866b = xVar;
        this.f44865a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.k0.c cVar = this.f44865a;
        x xVar = this.f44866b;
        cVar.a(xVar.f44869a, xVar.f44870b);
        Iterator it = cVar.f41249a.iterator();
        if (it.hasNext()) {
            com.smartdigimkt.a.a.a(it.next());
            throw null;
        }
    }
}
