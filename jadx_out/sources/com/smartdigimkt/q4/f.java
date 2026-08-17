package com.smartdigimkt.q4;

import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class f extends b {
    public f(com.smartdigimkt.r4.e eVar) {
        super(eVar);
    }

    @Override // com.smartdigimkt.q4.b
    public final Object a(Object obj) {
        com.smartdigimkt.a5.e eVar;
        try {
            com.smartdigimkt.r4.d dVar = this.f42855d;
            String str = "";
            if ((dVar instanceof com.smartdigimkt.r4.e) && (eVar = ((com.smartdigimkt.r4.e) dVar).f43059b) != null) {
                str = eVar.f39415e;
            }
            com.smartdigimkt.y3.h.a(this.f42860i, System.currentTimeMillis(), "bid", str);
            return new JSONObject(obj.toString());
        } catch (Throwable unused) {
            return null;
        }
    }
}
