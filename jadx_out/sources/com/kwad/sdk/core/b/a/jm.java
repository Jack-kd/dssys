package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class jm implements com.kwad.sdk.core.d<com.kwad.sdk.core.network.i> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.network.i) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.network.i) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.network.i iVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        iVar.url = jSONObject.optString("url");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(iVar.url)) {
            iVar.url = "";
        }
        iVar.host = jSONObject.optString(com.anythink.core.common.m.f.bU);
        if (obj.toString().equals(iVar.host)) {
            iVar.host = "";
        }
        iVar.httpCode = jSONObject.optInt("http_code");
        iVar.aTv = jSONObject.optString("req_type");
        if (obj.toString().equals(iVar.aTv)) {
            iVar.aTv = "";
        }
        iVar.aTw = jSONObject.optInt("use_ip");
    }

    private static JSONObject b(com.kwad.sdk.core.network.i iVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = iVar.url;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url", iVar.url);
        }
        String str2 = iVar.host;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.anythink.core.common.m.f.bU, iVar.host);
        }
        int i2 = iVar.httpCode;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "http_code", i2);
        }
        String str3 = iVar.aTv;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "req_type", iVar.aTv);
        }
        int i3 = iVar.aTw;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "use_ip", i3);
        }
        return jSONObject;
    }
}
