package com.kwad.sdk.core.b.a;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ch implements com.kwad.sdk.core.d<com.kwad.sdk.crash.online.monitor.block.d> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.crash.online.monitor.block.d) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.crash.online.monitor.block.d) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.crash.online.monitor.block.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        dVar.bff = jSONObject.optString("printerName");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(dVar.bff)) {
            dVar.bff = "";
        }
        dVar.errorMsg = jSONObject.optString(MediationConstant.KEY_ERROR_MSG);
        if (obj.toString().equals(dVar.errorMsg)) {
            dVar.errorMsg = "";
        }
        dVar.bfg = jSONObject.optBoolean("isDisable");
        dVar.bfh = jSONObject.optBoolean("hasMatrix");
    }

    private static JSONObject b(com.kwad.sdk.crash.online.monitor.block.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = dVar.bff;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "printerName", dVar.bff);
        }
        String str2 = dVar.errorMsg;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, MediationConstant.KEY_ERROR_MSG, dVar.errorMsg);
        }
        boolean z2 = dVar.bfg;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isDisable", z2);
        }
        boolean z3 = dVar.bfh;
        if (z3) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "hasMatrix", z3);
        }
        return jSONObject;
    }
}
