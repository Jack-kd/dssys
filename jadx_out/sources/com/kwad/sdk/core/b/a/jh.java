package com.kwad.sdk.core.b.a;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.components.core.webview.jshandler.a;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class jh implements com.kwad.sdk.core.d<a.c> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((a.c) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((a.c) bVar, jSONObject);
    }

    private static void a(a.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        cVar.errorCode = jSONObject.optInt(MediationConstant.KEY_ERROR_CODE);
        cVar.apu = jSONObject.optInt("extra");
        cVar.apv = jSONObject.optLong("playDuration");
        cVar.apw = jSONObject.optBoolean("clickRewardDialog");
    }

    private static JSONObject b(a.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = cVar.errorCode;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, MediationConstant.KEY_ERROR_CODE, i2);
        }
        int i3 = cVar.apu;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "extra", i3);
        }
        long j2 = cVar.apv;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playDuration", j2);
        }
        boolean z2 = cVar.apw;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clickRewardDialog", z2);
        }
        return jSONObject;
    }
}
