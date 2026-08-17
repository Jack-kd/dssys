package com.kwad.sdk.core.b.a;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ix implements com.kwad.sdk.core.d<com.kwad.sdk.crash.online.monitor.a.c> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.crash.online.monitor.a.c) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.crash.online.monitor.a.c) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.crash.online.monitor.a.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        com.kwad.sdk.crash.online.monitor.a.a aVar = new com.kwad.sdk.crash.online.monitor.a.a();
        cVar.bfC = aVar;
        aVar.parseJson(jSONObject.optJSONObject("blockConfig"));
    }

    private static JSONObject b(com.kwad.sdk.crash.online.monitor.a.c cVar, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "blockConfig", cVar.bfC);
        return jSONObject;
    }
}
