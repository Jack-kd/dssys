package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class kr implements com.kwad.sdk.core.d<com.kwad.components.core.pfmonitor.model.f> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.pfmonitor.model.f) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.pfmonitor.model.f) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.pfmonitor.model.f fVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        fVar.aim = jSONObject.optString("pathName");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(fVar.aim)) {
            fVar.aim = "";
        }
        fVar.fileName = jSONObject.optString("fileName");
        if (obj.toString().equals(fVar.fileName)) {
            fVar.fileName = "";
        }
        fVar.aiz = jSONObject.optString("absPath");
        if (obj.toString().equals(fVar.aiz)) {
            fVar.aiz = "";
        }
        fVar.aiA = jSONObject.optLong("diskSize");
    }

    private static JSONObject b(com.kwad.components.core.pfmonitor.model.f fVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = fVar.aim;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pathName", fVar.aim);
        }
        String str2 = fVar.fileName;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "fileName", fVar.fileName);
        }
        String str3 = fVar.aiz;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "absPath", fVar.aiz);
        }
        long j2 = fVar.aiA;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "diskSize", j2);
        }
        return jSONObject;
    }
}
