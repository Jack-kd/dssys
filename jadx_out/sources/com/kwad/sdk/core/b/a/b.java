package com.kwad.sdk.core.b.a;

import com.kwad.sdk.m.d;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class b implements com.kwad.sdk.core.d<d.a> {
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
        aVar.bmT = jSONObject.optString("originalActStr");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(aVar.bmT)) {
            aVar.bmT = "";
        }
        aVar.bmU = jSONObject.optString("targetField");
        if (obj.toString().equals(aVar.bmU)) {
            aVar.bmU = "";
        }
    }

    private static JSONObject b(d.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = aVar.bmT;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "originalActStr", aVar.bmT);
        }
        String str2 = aVar.bmU;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "targetField", aVar.bmU);
        }
        return jSONObject;
    }
}
