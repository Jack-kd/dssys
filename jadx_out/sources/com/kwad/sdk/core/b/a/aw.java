package com.kwad.sdk.core.b.a;

import com.anythink.network.ks.KSATConst;
import com.kwad.sdk.core.response.model.AdTemplate;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class aw implements com.kwad.sdk.core.d<com.kwad.sdk.core.webview.d.b.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.webview.d.b.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.webview.d.b.b) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.webview.d.b.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        AdTemplate adTemplate = new AdTemplate();
        bVar.adTemplate = adTemplate;
        adTemplate.parseJson(jSONObject.optJSONObject("adTemplate"));
        bVar.llsid = jSONObject.optString(KSATConst.KS_LLS_ID);
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(bVar.llsid)) {
            bVar.llsid = "";
        }
        bVar.extra = jSONObject.optString("extra");
        if (obj.toString().equals(bVar.extra)) {
            bVar.extra = "";
        }
    }

    private static JSONObject b(com.kwad.sdk.core.webview.d.b.b bVar, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "adTemplate", bVar.adTemplate);
        String str = bVar.llsid;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, KSATConst.KS_LLS_ID, bVar.llsid);
        }
        String str2 = bVar.extra;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "extra", bVar.extra);
        }
        return jSONObject;
    }
}
