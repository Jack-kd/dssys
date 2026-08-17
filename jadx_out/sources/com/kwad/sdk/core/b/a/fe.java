package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class fe implements com.kwad.sdk.core.d<com.kwad.components.core.innerEc.followuser.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.innerEc.followuser.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.innerEc.followuser.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.innerEc.followuser.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.Tg = jSONObject.optString("toUserId");
        if (JSONObject.NULL.toString().equals(aVar.Tg)) {
            aVar.Tg = "";
        }
        aVar.Th = jSONObject.optInt("fType");
    }

    private static JSONObject b(com.kwad.components.core.innerEc.followuser.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = aVar.Tg;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "toUserId", aVar.Tg);
        }
        int i2 = aVar.Th;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "fType", i2);
        }
        return jSONObject;
    }
}
