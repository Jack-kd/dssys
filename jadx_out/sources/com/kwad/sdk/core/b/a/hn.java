package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jsPublicBridge.a.a;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class hn implements com.kwad.sdk.core.d<a.C0562a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((a.C0562a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((a.C0562a) bVar, jSONObject);
    }

    private static void a(a.C0562a c0562a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0562a.apb = jSONObject.optInt("platform");
        c0562a.apc = jSONObject.optInt("flowSource");
        c0562a.apd = jSONObject.optInt("clientId");
        c0562a.appVersion = jSONObject.optString("app_version");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(c0562a.appVersion)) {
            c0562a.appVersion = "";
        }
        c0562a.netType = jSONObject.optInt("net_type");
        c0562a.ape = jSONObject.optString("publicKey");
        if (obj.toString().equals(c0562a.ape)) {
            c0562a.ape = "";
        }
        c0562a.apf = jSONObject.optString("sdkgetNumberName");
        if (obj.toString().equals(c0562a.apf)) {
            c0562a.apf = "";
        }
        c0562a.apg = jSONObject.optString("sdkoperJudgeName");
        if (obj.toString().equals(c0562a.apg)) {
            c0562a.apg = "";
        }
    }

    private static JSONObject b(a.C0562a c0562a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = c0562a.apb;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "platform", i2);
        }
        int i3 = c0562a.apc;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "flowSource", i3);
        }
        int i4 = c0562a.apd;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clientId", i4);
        }
        String str = c0562a.appVersion;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "app_version", c0562a.appVersion);
        }
        int i5 = c0562a.netType;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "net_type", i5);
        }
        String str2 = c0562a.ape;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "publicKey", c0562a.ape);
        }
        String str3 = c0562a.apf;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkgetNumberName", c0562a.apf);
        }
        String str4 = c0562a.apg;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkoperJudgeName", c0562a.apg);
        }
        return jSONObject;
    }
}
