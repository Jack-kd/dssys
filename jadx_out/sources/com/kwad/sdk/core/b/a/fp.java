package com.kwad.sdk.core.b.a;

import com.anythink.core.common.f.f;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class fp implements com.kwad.sdk.core.d<com.kwad.sdk.m.b.a.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.m.b.a.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.m.b.a.b) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.m.b.a.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.key = jSONObject.optString(f.a.f3242b);
        if (JSONObject.NULL.toString().equals(bVar.key)) {
            bVar.key = "";
        }
        bVar.value = jSONObject.optInt(f.a.f3244d);
    }

    private static JSONObject b(com.kwad.sdk.m.b.a.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = bVar.key;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, f.a.f3242b, bVar.key);
        }
        int i2 = bVar.value;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, f.a.f3244d, i2);
        }
        return jSONObject;
    }
}
