package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ha implements com.kwad.sdk.core.d<com.kwad.components.ad.interstitial.d.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.ad.interstitial.d.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.ad.interstitial.d.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.ad.interstitial.d.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.mC = jSONObject.optLong("lastShowCardTimeStamp");
        aVar.mD = jSONObject.optInt("cardShowCount");
    }

    private static JSONObject b(com.kwad.components.ad.interstitial.d.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j2 = aVar.mC;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "lastShowCardTimeStamp", j2);
        }
        int i2 = aVar.mD;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cardShowCount", i2);
        }
        return jSONObject;
    }
}
