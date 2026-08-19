package com.kwad.sdk.core.b.a;

import com.kwad.components.core.innerEc.live.a.d;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class hz implements com.kwad.sdk.core.d<d.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((d.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((d.a) bVar, jSONObject);
    }

    private static void a(d.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.TE = jSONObject.optBoolean("liveEnd");
    }

    private static JSONObject b(d.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z2 = aVar.TE;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "liveEnd", z2);
        }
        return jSONObject;
    }
}
