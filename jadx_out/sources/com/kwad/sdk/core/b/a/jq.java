package com.kwad.sdk.core.b.a;

import com.anythink.core.common.f.g;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class jq implements com.kwad.sdk.core.d<com.kwad.components.core.webview.tachikoma.c.o> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.tachikoma.c.o) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.tachikoma.c.o) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.tachikoma.c.o oVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        oVar.url = jSONObject.optString("url");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(oVar.url)) {
            oVar.url = "";
        }
        oVar.title = jSONObject.optString(g.a.f3271h);
        if (obj.toString().equals(oVar.title)) {
            oVar.title = "";
        }
        oVar.auu = jSONObject.optBoolean("showConfirmDialog");
    }

    private static JSONObject b(com.kwad.components.core.webview.tachikoma.c.o oVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = oVar.url;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url", oVar.url);
        }
        String str2 = oVar.title;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, g.a.f3271h, oVar.title);
        }
        boolean z2 = oVar.auu;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "showConfirmDialog", z2);
        }
        return jSONObject;
    }
}
