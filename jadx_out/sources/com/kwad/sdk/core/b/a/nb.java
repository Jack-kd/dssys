package com.kwad.sdk.core.b.a;

import com.kwad.sdk.m.a.b;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class nb implements com.kwad.sdk.core.d<b.C0630b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((b.C0630b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((b.C0630b) bVar, jSONObject);
    }

    private static void a(b.C0630b c0630b, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0630b.name = jSONObject.optString("name");
        if (JSONObject.NULL.toString().equals(c0630b.name)) {
            c0630b.name = "";
        }
        c0630b.bns = jSONObject.optBoolean("isStatic");
        c0630b.bnt = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("paramList");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                b.a aVar = new b.a();
                aVar.parseJson(jSONArrayOptJSONArray.optJSONObject(i2));
                c0630b.bnt.add(aVar);
            }
        }
    }

    private static JSONObject b(b.C0630b c0630b, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = c0630b.name;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "name", c0630b.name);
        }
        boolean z2 = c0630b.bns;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isStatic", z2);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "paramList", c0630b.bnt);
        return jSONObject;
    }
}
