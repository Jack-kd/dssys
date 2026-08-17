package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.bf;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class nd implements com.kwad.sdk.core.d<bf.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((bf.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((bf.a) bVar, jSONObject);
    }

    private static void a(bf.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.arI = jSONObject.optInt("taskStatus");
    }

    private static JSONObject b(bf.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = aVar.arI;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "taskStatus", i2);
        }
        return jSONObject;
    }
}
