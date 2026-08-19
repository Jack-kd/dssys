package com.kwad.sdk.core.b.a;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class js implements com.kwad.sdk.core.d<com.kwad.sdk.h.a.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.h.a.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.h.a.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.h.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.sceneId = jSONObject.optString("sceneId");
        if (JSONObject.NULL.toString().equals(aVar.sceneId)) {
            aVar.sceneId = "";
        }
        aVar.bgF = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("packages");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                com.kwad.sdk.h.a.b bVar = new com.kwad.sdk.h.a.b();
                bVar.parseJson(jSONArrayOptJSONArray.optJSONObject(i2));
                aVar.bgF.add(bVar);
            }
        }
    }

    private static JSONObject b(com.kwad.sdk.h.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = aVar.sceneId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sceneId", aVar.sceneId);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "packages", aVar.bgF);
        return jSONObject;
    }
}
