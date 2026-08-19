package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.m;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class gv implements com.kwad.sdk.core.d<m.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((m.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((m.b) bVar, jSONObject);
    }

    private static void a(m.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.status = jSONObject.optInt("status");
        bVar.progress = jSONObject.optInt("progress");
        bVar.soFarBytes = jSONObject.optLong("soFarBytes");
        bVar.totalBytes = jSONObject.optLong("totalBytes");
        bVar.apI = jSONObject.optInt("realProgress");
    }

    private static JSONObject b(m.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = bVar.status;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i2);
        }
        int i3 = bVar.progress;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "progress", i3);
        }
        long j2 = bVar.soFarBytes;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "soFarBytes", j2);
        }
        long j3 = bVar.totalBytes;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "totalBytes", j3);
        }
        int i4 = bVar.apI;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "realProgress", i4);
        }
        return jSONObject;
    }
}
