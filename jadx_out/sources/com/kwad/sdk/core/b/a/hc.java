package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class hc implements com.kwad.sdk.core.d<com.kwad.components.ad.interstitial.c.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.ad.interstitial.c.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.ad.interstitial.c.b) bVar, jSONObject);
    }

    private static void a(com.kwad.components.ad.interstitial.c.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.kd = jSONObject.optLong("lastShowTimestamp");
        bVar.mA = jSONObject.optInt("currentDailyAdShowCount");
        bVar.mB = jSONObject.optInt("currentDailyRetainShowCount");
    }

    private static JSONObject b(com.kwad.components.ad.interstitial.c.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j2 = bVar.kd;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "lastShowTimestamp", j2);
        }
        int i2 = bVar.mA;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "currentDailyAdShowCount", i2);
        }
        int i3 = bVar.mB;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "currentDailyRetainShowCount", i3);
        }
        return jSONObject;
    }
}
