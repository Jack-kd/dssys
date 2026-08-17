package com.kwad.sdk.core.b.a;

import com.anythink.core.common.f.n;
import com.umeng.commonsdk.deeplink.DeepLinkPresetEvent;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ai implements com.kwad.sdk.core.d<com.kwad.sdk.core.adlog.b.d> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.adlog.b.d) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.adlog.b.d) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.adlog.b.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        dVar.status = jSONObject.optInt("status");
        dVar.aKB = jSONObject.optString("final_url");
        if (JSONObject.NULL.toString().equals(dVar.aKB)) {
            dVar.aKB = "";
        }
        dVar.aKI = jSONObject.optInt(DeepLinkPresetEvent.UMEventParamAdActionType);
        dVar.aMd = jSONObject.optInt("cache_type", new Integer("0").intValue());
        dVar.retryCount = jSONObject.optInt(n.b.f3359h, new Integer("0").intValue());
    }

    private static JSONObject b(com.kwad.sdk.core.adlog.b.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = dVar.status;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i2);
        }
        String str = dVar.aKB;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "final_url", dVar.aKB);
        }
        int i3 = dVar.aKI;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, DeepLinkPresetEvent.UMEventParamAdActionType, i3);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "cache_type", dVar.aMd);
        com.kwad.sdk.utils.ac.putValue(jSONObject, n.b.f3359h, dVar.retryCount);
        return jSONObject;
    }
}
