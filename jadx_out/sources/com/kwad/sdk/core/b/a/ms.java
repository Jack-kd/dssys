package com.kwad.sdk.core.b.a;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ms implements com.kwad.sdk.core.d<com.kwad.sdk.m.b.a.e> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.m.b.a.e) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.m.b.a.e) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.m.b.a.e eVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        eVar.bnD = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ranger");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                com.kwad.sdk.m.b.a.d dVar = new com.kwad.sdk.m.b.a.d();
                dVar.parseJson(jSONArrayOptJSONArray.optJSONObject(i2));
                eVar.bnD.add(dVar);
            }
        }
    }

    private static JSONObject b(com.kwad.sdk.m.b.a.e eVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "ranger", eVar.bnD);
        return jSONObject;
    }
}
