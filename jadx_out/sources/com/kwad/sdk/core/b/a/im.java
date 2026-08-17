package com.kwad.sdk.core.b.a;

import com.anythink.core.common.m.AbstractC1114b;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class im implements com.kwad.sdk.core.d<com.kwad.sdk.core.webview.b.a.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.webview.b.a.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.webview.b.a.b) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.webview.b.a.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.status = jSONObject.optInt("Status");
        bVar.contentEncoding = jSONObject.optString("Content-Encoding");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(bVar.contentEncoding)) {
            bVar.contentEncoding = "";
        }
        bVar.bcP = jSONObject.optString("Cache-Control");
        if (obj.toString().equals(bVar.bcP)) {
            bVar.bcP = "";
        }
        bVar.bcN = jSONObject.optString(AbstractC1114b.f5589g);
        if (obj.toString().equals(bVar.bcN)) {
            bVar.bcN = "";
        }
        com.kwad.sdk.core.webview.b.a.a aVar = new com.kwad.sdk.core.webview.b.a.a();
        bVar.bcQ = aVar;
        aVar.parseJson(jSONObject.optJSONObject("headers"));
    }

    private static JSONObject b(com.kwad.sdk.core.webview.b.a.b bVar, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = bVar.status;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "Status", i2);
        }
        String str = bVar.contentEncoding;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "Content-Encoding", bVar.contentEncoding);
        }
        String str2 = bVar.bcP;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "Cache-Control", bVar.bcP);
        }
        String str3 = bVar.bcN;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, AbstractC1114b.f5589g, bVar.bcN);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "headers", bVar.bcQ);
        return jSONObject;
    }
}
