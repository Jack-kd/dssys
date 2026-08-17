package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.ap;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class hg implements com.kwad.sdk.core.d<ap.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((ap.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((ap.a) bVar, jSONObject);
    }

    private static void a(ap.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.aqZ = jSONObject.optString("adTemplate");
        if (JSONObject.NULL.toString().equals(aVar.aqZ)) {
            aVar.aqZ = "";
        }
    }

    private static JSONObject b(ap.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = aVar.aqZ;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adTemplate", aVar.aqZ);
        }
        return jSONObject;
    }
}
