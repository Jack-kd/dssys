package com.kwad.sdk.core.b.a;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class nz implements com.kwad.sdk.core.d<com.kwad.components.core.webview.tachikoma.c.y> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.tachikoma.c.y) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.tachikoma.c.y) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.tachikoma.c.y yVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        yVar.auA = jSONObject.optString("status");
        Object obj = JSONObject.NULL;
        if (obj.toString().equals(yVar.auA)) {
            yVar.auA = "";
        }
        yVar.errorCode = jSONObject.optInt(MediationConstant.KEY_ERROR_CODE);
        yVar.errorReason = jSONObject.optString("errorReason");
        if (obj.toString().equals(yVar.errorReason)) {
            yVar.errorReason = "";
        }
        yVar.rq = jSONObject.optInt("currentTime");
    }

    private static JSONObject b(com.kwad.components.core.webview.tachikoma.c.y yVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = yVar.auA;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", yVar.auA);
        }
        int i2 = yVar.errorCode;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, MediationConstant.KEY_ERROR_CODE, i2);
        }
        String str2 = yVar.errorReason;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "errorReason", yVar.errorReason);
        }
        int i3 = yVar.rq;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "currentTime", i3);
        }
        return jSONObject;
    }
}
