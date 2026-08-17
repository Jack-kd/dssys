package com.smartdigimkt.w0;

import java.io.IOException;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.k0.c f44861a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f44862b;

    public t(x xVar, com.smartdigimkt.k0.c cVar, y yVar, z zVar, IOException iOException, boolean z2) {
        this.f44862b = xVar;
        this.f44861a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.k0.c cVar = this.f44861a;
        x xVar = this.f44862b;
        cVar.a(xVar.f44869a, xVar.f44870b);
        Iterator it = cVar.f41249a.iterator();
        if (it.hasNext()) {
            com.smartdigimkt.a.a.a(it.next());
            throw null;
        }
    }
}
