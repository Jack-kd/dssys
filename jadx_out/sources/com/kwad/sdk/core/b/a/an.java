package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.a;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class an implements com.kwad.sdk.core.d<a.C0563a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((a.C0563a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((a.C0563a) bVar, jSONObject);
    }

    private static void a(a.C0563a c0563a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0563a.PC = jSONObject.optString("creativeId");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(c0563a.PC)) {
            c0563a.PC = "";
        }
        c0563a.aps = jSONObject.optString("targetMethod");
        if (obj.toString().equals(c0563a.aps)) {
            c0563a.aps = "";
        }
        c0563a.apt = jSONObject.optString("methodParams");
        if (obj.toString().equals(c0563a.apt)) {
            c0563a.apt = "";
        }
    }

    private static JSONObject b(a.C0563a c0563a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = c0563a.PC;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creativeId", c0563a.PC);
        }
        String str2 = c0563a.aps;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "targetMethod", c0563a.aps);
        }
        String str3 = c0563a.apt;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "methodParams", c0563a.apt);
        }
        return jSONObject;
    }
}
