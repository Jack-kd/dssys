package com.smartdigimkt.q4;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class e extends b {
    public e(com.smartdigimkt.r4.c cVar) {
        super(cVar);
    }

    @Override // com.smartdigimkt.q4.b
    public final Object a(Object obj) {
        com.smartdigimkt.y3.h.a(this.f42860i, System.currentTimeMillis(), "app", (String) null);
        return obj;
    }

    @Override // com.smartdigimkt.q4.b
    public final void b(AdError adError) {
        com.smartdigimkt.y3.h.a("app", adError.getCode(), adError.getMessage(), this.f42855d.k(), "", "", "");
    }
}
