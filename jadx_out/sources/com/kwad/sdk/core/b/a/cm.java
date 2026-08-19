package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class cm implements com.kwad.sdk.core.d<com.kwad.sdk.core.webview.d.b.c> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.webview.d.b.c) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.webview.d.b.c) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.webview.d.b.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        cVar.f31476x = jSONObject.optDouble("x");
        cVar.f31477y = jSONObject.optDouble("y");
        cVar.width = jSONObject.optInt("width");
        cVar.height = jSONObject.optInt("height");
    }

    private static JSONObject b(com.kwad.sdk.core.webview.d.b.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        double d2 = cVar.f31476x;
        if (d2 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "x", d2);
        }
        double d3 = cVar.f31477y;
        if (d3 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "y", d3);
        }
        int i2 = cVar.width;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "width", i2);
        }
        int i3 = cVar.height;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "height", i3);
        }
        return jSONObject;
    }
}
