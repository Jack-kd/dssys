package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class nq implements com.kwad.sdk.core.d<com.kwad.components.core.offline.moitor.d> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.offline.moitor.d) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.offline.moitor.d) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.offline.moitor.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        dVar.acX = jSONObject.optString("load_module");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(dVar.acX)) {
            dVar.acX = "";
        }
        dVar.acY = jSONObject.optLong("load_status");
        dVar.acZ = jSONObject.optLong("load_duration_ms");
        dVar.adc = jSONObject.optLong("update_duration_ms");
        dVar.adb = jSONObject.optString("load_source");
        if (obj.toString().equals(dVar.adb)) {
            dVar.adb = "";
        }
    }

    private static JSONObject b(com.kwad.components.core.offline.moitor.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = dVar.acX;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "load_module", dVar.acX);
        }
        long j2 = dVar.acY;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "load_status", j2);
        }
        long j3 = dVar.acZ;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "load_duration_ms", j3);
        }
        long j4 = dVar.adc;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "update_duration_ms", j4);
        }
        String str2 = dVar.adb;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "load_source", dVar.adb);
        }
        return jSONObject;
    }
}
