package com.kwad.sdk.core.b.a;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class kn implements com.kwad.sdk.core.d<com.kwad.sdk.m.b.a.c> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.m.b.a.c) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.m.b.a.c) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.m.b.a.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        cVar.aYH = jSONObject.optInt("func_ratio_count");
        cVar.bnB = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("func_values");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                com.kwad.sdk.m.b.a.b bVar = new com.kwad.sdk.m.b.a.b();
                bVar.parseJson(jSONArrayOptJSONArray.optJSONObject(i2));
                cVar.bnB.add(bVar);
            }
        }
    }

    private static JSONObject b(com.kwad.sdk.m.b.a.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = cVar.aYH;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "func_ratio_count", i2);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "func_values", cVar.bnB);
        return jSONObject;
    }
}
