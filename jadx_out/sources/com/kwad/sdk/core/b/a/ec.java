package com.kwad.sdk.core.b.a;

import com.kwad.components.core.innerEc.live.a.m;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ec implements com.kwad.sdk.core.d<m.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((m.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((m.a) bVar, jSONObject);
    }

    private static void a(m.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.f31467x = jSONObject.optDouble("x");
        aVar.f31468y = jSONObject.optDouble("y");
    }

    private static JSONObject b(m.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        double d2 = aVar.f31467x;
        if (d2 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "x", d2);
        }
        double d3 = aVar.f31468y;
        if (d3 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "y", d3);
        }
        return jSONObject;
    }
}
