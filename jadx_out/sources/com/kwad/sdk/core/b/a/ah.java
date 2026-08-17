package com.kwad.sdk.core.b.a;

import com.anythink.core.common.f.n;
import com.umeng.commonsdk.deeplink.DeepLinkPresetEvent;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ah implements com.kwad.sdk.core.d<com.kwad.sdk.core.adlog.b.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.adlog.b.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.adlog.b.b) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.adlog.b.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.status = jSONObject.optInt("status");
        bVar.aKI = jSONObject.optInt(DeepLinkPresetEvent.UMEventParamAdActionType);
        bVar.retryCount = jSONObject.optInt(n.b.f3359h);
        bVar.aLP = jSONObject.optInt("retry_error_code");
        bVar.aLQ = jSONObject.optString("retry_error_msg");
        if (JSONObject.NULL.toString().equals(bVar.aLQ)) {
            bVar.aLQ = "";
        }
        bVar.aMa = jSONObject.optInt("cache_total_num");
        bVar.aMb = jSONObject.optInt("cache_num");
        bVar.aMc = jSONObject.optLong("cacheTimeMs");
        bVar.aLZ = jSONObject.optBoolean("retry_only");
    }

    private static JSONObject b(com.kwad.sdk.core.adlog.b.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = bVar.status;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i2);
        }
        int i3 = bVar.aKI;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, DeepLinkPresetEvent.UMEventParamAdActionType, i3);
        }
        int i4 = bVar.retryCount;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, n.b.f3359h, i4);
        }
        int i5 = bVar.aLP;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "retry_error_code", i5);
        }
        String str = bVar.aLQ;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "retry_error_msg", bVar.aLQ);
        }
        int i6 = bVar.aMa;
        if (i6 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cache_total_num", i6);
        }
        int i7 = bVar.aMb;
        if (i7 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cache_num", i7);
        }
        long j2 = bVar.aMc;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cacheTimeMs", j2);
        }
        boolean z2 = bVar.aLZ;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "retry_only", z2);
        }
        return jSONObject;
    }
}
