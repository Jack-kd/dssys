package com.kwad.sdk.core.b.a;

import com.kwad.components.core.innerEc.live.a.a;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class iu implements com.kwad.sdk.core.d<a.C0534a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((a.C0534a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((a.C0534a) bVar, jSONObject);
    }

    private static void a(a.C0534a c0534a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0534a.TB = jSONObject.optString("mCookieJson");
        if (JSONObject.NULL.toString().equals(c0534a.TB)) {
            c0534a.TB = "";
        }
    }

    private static JSONObject b(a.C0534a c0534a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = c0534a.TB;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mCookieJson", c0534a.TB);
        }
        return jSONObject;
    }
}
