package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ni implements com.kwad.sdk.core.d<com.kwad.sdk.core.threads.d> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.threads.d) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.threads.d) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.threads.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        dVar.aYJ = jSONObject.optInt("rate_reciprocal");
        dVar.aYP = jSONObject.optInt("threshold");
        dVar.interval = jSONObject.optLong("interval");
    }

    private static JSONObject b(com.kwad.sdk.core.threads.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = dVar.aYJ;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rate_reciprocal", i2);
        }
        int i3 = dVar.aYP;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "threshold", i3);
        }
        long j2 = dVar.interval;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "interval", j2);
        }
        return jSONObject;
    }
}
