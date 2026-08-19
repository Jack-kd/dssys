package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.j;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class fu implements com.kwad.sdk.core.d<j.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((j.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((j.a) bVar, jSONObject);
    }

    private static void a(j.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.apC = jSONObject.optString(com.umeng.ccg.a.f49744F);
        if (JSONObject.NULL.toString().equals(aVar.apC)) {
            aVar.apC = "";
        }
    }

    private static JSONObject b(j.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = aVar.apC;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.ccg.a.f49744F, aVar.apC);
        }
        return jSONObject;
    }
}
