package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class li implements com.kwad.sdk.core.d<com.kwad.components.core.innerEc.live.base.e> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.innerEc.live.base.e) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.innerEc.live.base.e) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.innerEc.live.base.e eVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        eVar.Tz = jSONObject.optBoolean("showYellowCart");
        eVar.TA = jSONObject.optInt("onSaleCount");
    }

    private static JSONObject b(com.kwad.components.core.innerEc.live.base.e eVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z2 = eVar.Tz;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "showYellowCart", z2);
        }
        int i2 = eVar.TA;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "onSaleCount", i2);
        }
        return jSONObject;
    }
}
