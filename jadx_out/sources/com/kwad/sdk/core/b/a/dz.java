package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class dz implements com.kwad.sdk.core.d<com.kwad.components.core.pfmonitor.model.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.pfmonitor.model.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.pfmonitor.model.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.pfmonitor.model.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.aim = jSONObject.optString("pathName");
        if (JSONObject.NULL.toString().equals(aVar.aim)) {
            aVar.aim = "";
        }
        aVar.ain = jSONObject.optInt("pathType");
    }

    private static JSONObject b(com.kwad.components.core.pfmonitor.model.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = aVar.aim;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pathName", aVar.aim);
        }
        int i2 = aVar.ain;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pathType", i2);
        }
        return jSONObject;
    }
}
