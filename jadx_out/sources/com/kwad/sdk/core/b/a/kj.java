package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class kj implements com.kwad.sdk.core.d<com.kwad.sdk.core.response.model.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.response.model.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.response.model.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.response.model.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.posId = jSONObject.optLong("posId");
        aVar.aXF = jSONObject.optInt("adPhotoCountForMedia");
        aVar.aXG = jSONObject.optBoolean("enablePreload");
        aVar.aXH = jSONObject.optLong("increaseAdLoadTime", new Long(com.anythink.core.common.inner.b.b.f4585b).longValue());
        aVar.aXI = jSONObject.optInt("adLoadStrategy");
        aVar.aXJ = jSONObject.optInt("drawAdForcedWatchTimes", new Integer("3").intValue());
    }

    private static JSONObject b(com.kwad.sdk.core.response.model.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j2 = aVar.posId;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "posId", j2);
        }
        int i2 = aVar.aXF;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adPhotoCountForMedia", i2);
        }
        boolean z2 = aVar.aXG;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "enablePreload", z2);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "increaseAdLoadTime", aVar.aXH);
        int i3 = aVar.aXI;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adLoadStrategy", i3);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "drawAdForcedWatchTimes", aVar.aXJ);
        return jSONObject;
    }
}
