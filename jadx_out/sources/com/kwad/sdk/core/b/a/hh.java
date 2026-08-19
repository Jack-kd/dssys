package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.ap;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class hh implements com.kwad.sdk.core.d<ap.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((ap.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((ap.b) bVar, jSONObject);
    }

    private static void a(ap.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.arg = jSONObject.optDouble("progress");
        bVar.status = jSONObject.optInt("status");
        bVar.totalBytes = jSONObject.optLong("totalBytes");
        bVar.soFarBytes = jSONObject.optLong("soFarBytes");
        bVar.arh = jSONObject.optDouble("realProgress");
    }

    private static JSONObject b(ap.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        double d2 = bVar.arg;
        if (d2 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "progress", d2);
        }
        int i2 = bVar.status;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i2);
        }
        long j2 = bVar.totalBytes;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "totalBytes", j2);
        }
        long j3 = bVar.soFarBytes;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "soFarBytes", j3);
        }
        double d3 = bVar.arh;
        if (d3 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "realProgress", d3);
        }
        return jSONObject;
    }
}
