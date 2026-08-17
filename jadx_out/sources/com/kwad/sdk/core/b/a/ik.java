package com.kwad.sdk.core.b.a;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ik implements com.kwad.sdk.core.d<com.kwad.sdk.core.webview.d.b.d> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.webview.d.b.d) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.webview.d.b.d) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.webview.d.b.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        dVar.convertType = jSONObject.optInt("convertType");
        dVar.QY = jSONObject.optString("payload");
        if (JSONObject.NULL.toString().equals(dVar.QY)) {
            dVar.QY = "";
        }
        com.kwad.sdk.core.webview.d.b.c cVar = new com.kwad.sdk.core.webview.d.b.c();
        dVar.bdk = cVar;
        cVar.parseJson(jSONObject.optJSONObject("clickInfo"));
    }

    private static JSONObject b(com.kwad.sdk.core.webview.d.b.d dVar, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = dVar.convertType;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "convertType", i2);
        }
        String str = dVar.QY;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "payload", dVar.QY);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "clickInfo", dVar.bdk);
        return jSONObject;
    }
}
