package com.kwad.sdk.core.b.a;

import com.kwad.sdk.monitor.b;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class lk implements com.kwad.sdk.core.d<b.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((b.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((b.a) bVar, jSONObject);
    }

    private static void a(b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.bjg = jSONObject.optInt("ds");
        aVar.sdkVersion = jSONObject.optString("sv");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(aVar.sdkVersion)) {
            aVar.sdkVersion = "";
        }
        aVar.bdL = jSONObject.optString("spv");
        if (obj.toString().equals(aVar.bdL)) {
            aVar.bdL = "";
        }
    }

    private static JSONObject b(b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = aVar.bjg;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ds", i2);
        }
        String str = aVar.sdkVersion;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sv", aVar.sdkVersion);
        }
        String str2 = aVar.bdL;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "spv", aVar.bdL);
        }
        return jSONObject;
    }
}
