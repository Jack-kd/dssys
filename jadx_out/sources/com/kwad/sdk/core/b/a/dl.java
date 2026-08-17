package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.an;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class dl implements com.kwad.sdk.core.d<an.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((an.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((an.a) bVar, jSONObject);
    }

    private static void a(an.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.aqY = jSONObject.optBoolean("clickActionButton");
        aVar.aqZ = jSONObject.optString("adTemplate");
        if (JSONObject.NULL.toString().equals(aVar.aqZ)) {
            aVar.aqZ = "";
        }
        aVar.ara = jSONObject.optInt("area");
        com.kwad.sdk.core.webview.d.b.d dVar = new com.kwad.sdk.core.webview.d.b.d();
        aVar.arb = dVar;
        dVar.parseJson(jSONObject.optJSONObject("logParam"));
    }

    private static JSONObject b(an.a aVar, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z2 = aVar.aqY;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clickActionButton", z2);
        }
        String str = aVar.aqZ;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adTemplate", aVar.aqZ);
        }
        int i2 = aVar.ara;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "area", i2);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "logParam", aVar.arb);
        return jSONObject;
    }
}
