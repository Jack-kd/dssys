package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.ak;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class gg implements com.kwad.sdk.core.d<ak.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((ak.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((ak.a) bVar, jSONObject);
    }

    private static void a(ak.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.type = jSONObject.optInt("type");
        aVar.aqL = jSONObject.optInt("playDuration");
    }

    private static JSONObject b(ak.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = aVar.type;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "type", i2);
        }
        int i3 = aVar.aqL;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playDuration", i3);
        }
        return jSONObject;
    }
}
