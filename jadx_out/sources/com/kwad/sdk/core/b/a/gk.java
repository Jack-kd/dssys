package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.config.item.i;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class gk implements com.kwad.sdk.core.d<i.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((i.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((i.a) bVar, jSONObject);
    }

    private static void a(i.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.aQZ = jSONObject.optString("imei");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(aVar.aQZ)) {
            aVar.aQZ = "";
        }
        aVar.aRa = jSONObject.optString("oaid");
        if (obj.toString().equals(aVar.aRa)) {
            aVar.aRa = "";
        }
    }

    private static JSONObject b(i.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = aVar.aQZ;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "imei", aVar.aQZ);
        }
        String str2 = aVar.aRa;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "oaid", aVar.aRa);
        }
        return jSONObject;
    }
}
