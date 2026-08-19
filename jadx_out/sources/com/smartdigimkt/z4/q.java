package com.smartdigimkt.z4;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class q {

    /* renamed from: b, reason: collision with root package name */
    public final Object f45501b = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f45500a = new ConcurrentHashMap();

    public final void a(com.smartdigimkt.r4.l lVar, o oVar) {
        String str = lVar.f43076a;
        synchronized (this.f45501b) {
            try {
                com.smartdigimkt.q4.n nVar = (com.smartdigimkt.q4.n) this.f45500a.get(lVar.f43076a);
                if (nVar != null) {
                    nVar.a((com.smartdigimkt.l4.b) oVar);
                    return;
                }
                com.smartdigimkt.q4.n nVar2 = new com.smartdigimkt.q4.n(lVar);
                this.f45500a.put(str, nVar2);
                nVar2.a((com.smartdigimkt.l4.b) new p(str, oVar, this.f45500a));
                nVar2.a(0, (com.smartdigimkt.l4.b) new com.smartdigimkt.q4.i(nVar2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
