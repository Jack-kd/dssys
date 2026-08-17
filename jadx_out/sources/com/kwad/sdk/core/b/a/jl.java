package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class jl implements com.kwad.sdk.core.d<com.kwad.sdk.core.request.model.d> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.request.model.d) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.request.model.d) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.request.model.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        dVar.aXo = jSONObject.optString("mac");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(dVar.aXo)) {
            dVar.aXo = "";
        }
        dVar.aXp = jSONObject.optString("kMac");
        if (obj.toString().equals(dVar.aXp)) {
            dVar.aXp = "";
        }
        dVar.aXq = jSONObject.optInt("connectionType");
        dVar.operatorType = jSONObject.optInt("operatorType");
    }

    private static JSONObject b(com.kwad.sdk.core.request.model.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = dVar.aXo;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mac", dVar.aXo);
        }
        String str2 = dVar.aXp;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "kMac", dVar.aXp);
        }
        int i2 = dVar.aXq;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "connectionType", i2);
        }
        int i3 = dVar.operatorType;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "operatorType", i3);
        }
        return jSONObject;
    }
}
