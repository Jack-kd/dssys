package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.au;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class bl implements com.kwad.sdk.core.d<au.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((au.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((au.a) bVar, jSONObject);
    }

    private static void a(au.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.arg = jSONObject.optDouble("progress");
        aVar.status = jSONObject.optInt("status");
        aVar.totalBytes = jSONObject.optLong("totalBytes");
        aVar.soFarBytes = jSONObject.optLong("soFarBytes");
        aVar.arh = jSONObject.optDouble("realProgress");
    }

    private static JSONObject b(au.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        double d2 = aVar.arg;
        if (d2 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "progress", d2);
        }
        int i2 = aVar.status;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i2);
        }
        long j2 = aVar.totalBytes;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "totalBytes", j2);
        }
        long j3 = aVar.soFarBytes;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "soFarBytes", j3);
        }
        double d3 = aVar.arh;
        if (d3 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "realProgress", d3);
        }
        return jSONObject;
    }
}
