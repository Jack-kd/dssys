package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdStatusInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class at implements com.kwad.sdk.core.d<AdStatusInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdStatusInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdStatusInfo) bVar, jSONObject);
    }

    private static void a(AdStatusInfo adStatusInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        adStatusInfo.loadFromCache = jSONObject.optBoolean("loadFromCache");
        adStatusInfo.loadDataTime = jSONObject.optLong("loadDataTime");
        adStatusInfo.downloadFinishTime = jSONObject.optLong("downloadFinishTime");
        adStatusInfo.downloadType = jSONObject.optInt("downloadType");
        adStatusInfo.downloadSize = jSONObject.optLong("downloadSize");
        adStatusInfo.downloadStatus = jSONObject.optInt("downloadStatus");
    }

    private static JSONObject b(AdStatusInfo adStatusInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z2 = adStatusInfo.loadFromCache;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "loadFromCache", z2);
        }
        long j2 = adStatusInfo.loadDataTime;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "loadDataTime", j2);
        }
        long j3 = adStatusInfo.downloadFinishTime;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadFinishTime", j3);
        }
        int i2 = adStatusInfo.downloadType;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadType", i2);
        }
        long j4 = adStatusInfo.downloadSize;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadSize", j4);
        }
        int i3 = adStatusInfo.downloadStatus;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadStatus", i3);
        }
        return jSONObject;
    }
}
