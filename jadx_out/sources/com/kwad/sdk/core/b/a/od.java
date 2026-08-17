package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class od implements com.kwad.sdk.core.d<com.kwad.components.core.webview.tachikoma.c.z> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.tachikoma.c.z) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.tachikoma.c.z) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.tachikoma.c.z zVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        zVar.rq = jSONObject.optInt("currentTime");
        zVar.auB = jSONObject.optBoolean("failed");
        zVar.ajf = jSONObject.optBoolean("finished");
    }

    private static JSONObject b(com.kwad.components.core.webview.tachikoma.c.z zVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = zVar.rq;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "currentTime", i2);
        }
        boolean z2 = zVar.auB;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "failed", z2);
        }
        boolean z3 = zVar.ajf;
        if (z3) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "finished", z3);
        }
        return jSONObject;
    }
}
