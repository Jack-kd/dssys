package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.at;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class bi implements com.kwad.sdk.core.d<at.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((at.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((at.a) bVar, jSONObject);
    }

    private static void a(at.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.id = jSONObject.optInt("id");
        aVar.status = jSONObject.optInt("status");
    }

    private static JSONObject b(at.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = aVar.id;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "id", i2);
        }
        int i3 = aVar.status;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i3);
        }
        return jSONObject;
    }
}
