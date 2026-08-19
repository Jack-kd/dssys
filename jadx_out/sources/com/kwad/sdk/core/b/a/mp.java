package com.kwad.sdk.core.b.a;

import com.kwad.sdk.wrapper.l;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class mp implements com.kwad.sdk.core.d<l.a.C0640a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((l.a.C0640a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((l.a.C0640a) bVar, jSONObject);
    }

    private static void a(l.a.C0640a c0640a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0640a.buh = jSONObject.optString("s_cn");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(c0640a.buh)) {
            c0640a.buh = "";
        }
        c0640a.bui = jSONObject.optString("s_mn");
        if (obj.toString().equals(c0640a.bui)) {
            c0640a.bui = "";
        }
    }

    private static JSONObject b(l.a.C0640a c0640a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = c0640a.buh;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "s_cn", c0640a.buh);
        }
        String str2 = c0640a.bui;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "s_mn", c0640a.bui);
        }
        return jSONObject;
    }
}
