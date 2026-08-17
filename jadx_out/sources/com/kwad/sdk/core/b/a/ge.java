package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.bg;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ge implements com.kwad.sdk.core.d<bg.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((bg.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((bg.a) bVar, jSONObject);
    }

    private static void a(bg.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.visibility = jSONObject.optInt("visibility");
    }

    private static JSONObject b(bg.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = aVar.visibility;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "visibility", i2);
        }
        return jSONObject;
    }
}
