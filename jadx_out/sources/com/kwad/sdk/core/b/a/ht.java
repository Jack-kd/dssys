package com.kwad.sdk.core.b.a;

import com.kwad.components.core.innerEc.live.a.o;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ht implements com.kwad.sdk.core.d<o.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((o.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((o.a) bVar, jSONObject);
    }

    private static void a(o.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.TM = jSONObject.optString("kwaiUID");
        if (JSONObject.NULL.toString().equals(aVar.TM)) {
            aVar.TM = "";
        }
    }

    private static JSONObject b(o.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = aVar.TM;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "kwaiUID", aVar.TM);
        }
        return jSONObject;
    }
}
