package com.smartdigimkt.z4;

import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.core.SDKContext;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f45452a;

    public b(d dVar) {
        this.f45452a = dVar;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        this.f45452a.f45459c = false;
        d dVar = this.f45452a;
        dVar.getClass();
        if (obj instanceof JSONObject) {
            try {
                JSONObject jSONObject = (JSONObject) obj;
                com.smartdigimkt.a5.a aVar = dVar.f45458b;
                if (!aVar.f39371f) {
                    aVar.a(null, jSONObject);
                }
                com.smartdigimkt.a5.a aVarC = com.smartdigimkt.a5.a.c(jSONObject);
                if (aVarC != null) {
                    aVarC.f39375h = System.currentTimeMillis();
                }
                com.smartdigimkt.b4.e.a().c(new c(dVar, jSONObject, aVarC));
                if (aVarC != null) {
                    dVar.f45458b = aVarC;
                    d.f();
                    com.smartdigimkt.g4.f.a().a(SDKContext.getInstance().d());
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        this.f45452a.f45459c = false;
    }
}
