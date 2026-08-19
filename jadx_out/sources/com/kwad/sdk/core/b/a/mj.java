package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class mj implements com.kwad.sdk.core.d<com.kwad.components.core.webview.tachikoma.c.v> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.tachikoma.c.v) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.tachikoma.c.v) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.tachikoma.c.v vVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        vVar.rq = jSONObject.optInt("currentTime");
        vVar.ajf = jSONObject.optBoolean("finished");
    }

    private static JSONObject b(com.kwad.components.core.webview.tachikoma.c.v vVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = vVar.rq;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "currentTime", i2);
        }
        boolean z2 = vVar.ajf;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "finished", z2);
        }
        return jSONObject;
    }
}
