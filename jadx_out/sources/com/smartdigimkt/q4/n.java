package com.smartdigimkt.q4;

import com.smartdigimkt.sdk.api.AdError;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes5.dex */
public final class n extends b {

    /* renamed from: j, reason: collision with root package name */
    public volatile CopyOnWriteArraySet f42867j;

    /* renamed from: k, reason: collision with root package name */
    public final Object f42868k;

    public n(com.smartdigimkt.r4.l lVar) {
        super(lVar);
        this.f42868k = new Object();
    }

    @Override // com.smartdigimkt.q4.b
    public final Object a(Object obj) {
        try {
            com.smartdigimkt.r4.d dVar = this.f42855d;
            com.smartdigimkt.y3.h.a(this.f42860i, System.currentTimeMillis(), "placement", dVar instanceof com.smartdigimkt.r4.l ? ((com.smartdigimkt.r4.l) dVar).f43076a : "");
        } catch (Throwable unused) {
        }
        return obj;
    }

    @Override // com.smartdigimkt.q4.b
    public final boolean b() {
        return true;
    }

    @Override // com.smartdigimkt.q4.b
    public final void b(AdError adError) {
        String code = adError.getCode();
        String message = adError.getMessage();
        com.smartdigimkt.r4.d dVar = this.f42855d;
        String strK = dVar != null ? dVar.k() : "";
        com.smartdigimkt.r4.d dVar2 = this.f42855d;
        com.smartdigimkt.y3.h.a("placement", code, message, strK, dVar2 instanceof com.smartdigimkt.r4.l ? ((com.smartdigimkt.r4.l) dVar2).f43076a : "", "", "");
    }

    public final void a(com.smartdigimkt.l4.b bVar) {
        synchronized (this.f42868k) {
            try {
                if (this.f42867j == null) {
                    this.f42867j = new CopyOnWriteArraySet();
                }
                this.f42867j.add(bVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
