package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class id implements com.kwad.sdk.core.d<com.kwad.components.core.innerEc.live.config.net.f> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.innerEc.live.config.net.f) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.innerEc.live.config.net.f) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.innerEc.live.config.net.f fVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        fVar.Uq = jSONObject.optBoolean("freeTrafficCdn");
        fVar.cdn = jSONObject.optString("cdn");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(fVar.cdn)) {
            fVar.cdn = "";
        }
        fVar.url = jSONObject.optString("url");
        if (obj.toString().equals(fVar.url)) {
            fVar.url = "";
        }
    }

    private static JSONObject b(com.kwad.components.core.innerEc.live.config.net.f fVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z2 = fVar.Uq;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "freeTrafficCdn", z2);
        }
        String str = fVar.cdn;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cdn", fVar.cdn);
        }
        String str2 = fVar.url;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url", fVar.url);
        }
        return jSONObject;
    }
}
