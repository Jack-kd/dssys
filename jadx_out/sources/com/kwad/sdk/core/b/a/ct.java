package com.kwad.sdk.core.b.a;

import com.kwad.components.ad.reward.k.f;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ct implements com.kwad.sdk.core.d<f.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((f.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((f.a) bVar, jSONObject);
    }

    private static void a(f.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.BY = jSONObject.optBoolean("forceClose");
    }

    private static JSONObject b(f.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z2 = aVar.BY;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "forceClose", z2);
        }
        return jSONObject;
    }
}
