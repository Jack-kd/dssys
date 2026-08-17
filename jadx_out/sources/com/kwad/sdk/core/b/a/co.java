package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.report.n;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class co implements com.kwad.sdk.core.d<n.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((n.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((n.a) bVar, jSONObject);
    }

    private static void a(n.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.aWB = jSONObject.optInt("posIdWidth");
        aVar.aWC = jSONObject.optInt("posIdHeight");
    }

    private static JSONObject b(n.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = aVar.aWB;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "posIdWidth", i2);
        }
        int i3 = aVar.aWC;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "posIdHeight", i3);
        }
        return jSONObject;
    }
}
