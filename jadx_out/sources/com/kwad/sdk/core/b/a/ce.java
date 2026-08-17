package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ce implements com.kwad.sdk.core.d<com.kwad.components.ad.adbit.d> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.ad.adbit.d) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.ad.adbit.d) bVar, jSONObject);
    }

    private static void a(com.kwad.components.ad.adbit.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        dVar.status = jSONObject.optInt("status");
        dVar.bG = jSONObject.optInt("common_base_request_used");
        dVar.bH = jSONObject.optLong("bid_token_get_duration");
        dVar.bI = jSONObject.optString("bid_version");
        if (JSONObject.NULL.toString().equals(dVar.bI)) {
            dVar.bI = "";
        }
    }

    private static JSONObject b(com.kwad.components.ad.adbit.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = dVar.status;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i2);
        }
        int i3 = dVar.bG;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "common_base_request_used", i3);
        }
        long j2 = dVar.bH;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "bid_token_get_duration", j2);
        }
        String str = dVar.bI;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "bid_version", dVar.bI);
        }
        return jSONObject;
    }
}
