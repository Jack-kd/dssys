package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.a.a;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ed implements com.kwad.sdk.core.d<a.C0560a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((a.C0560a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((a.C0560a) bVar, jSONObject);
    }

    private static void a(a.C0560a c0560a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0560a.url = jSONObject.optString("url");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(c0560a.url)) {
            c0560a.url = "";
        }
        c0560a.packageName = jSONObject.optString("packageName");
        if (obj.toString().equals(c0560a.packageName)) {
            c0560a.packageName = "";
        }
    }

    private static JSONObject b(a.C0560a c0560a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = c0560a.url;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url", c0560a.url);
        }
        String str2 = c0560a.packageName;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "packageName", c0560a.packageName);
        }
        return jSONObject;
    }
}
