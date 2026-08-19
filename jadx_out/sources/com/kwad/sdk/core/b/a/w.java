package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdGlobalConfigInfo;
import com.kwad.sdk.core.response.model.AdVideoPreCacheConfig;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class w implements com.kwad.sdk.core.d<AdGlobalConfigInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdGlobalConfigInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdGlobalConfigInfo) bVar, jSONObject);
    }

    private static void a(AdGlobalConfigInfo adGlobalConfigInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        adGlobalConfigInfo.neoPageType = jSONObject.optInt("neoPageType");
        AdGlobalConfigInfo.NeoScanAggregationSceneInfo neoScanAggregationSceneInfo = new AdGlobalConfigInfo.NeoScanAggregationSceneInfo();
        adGlobalConfigInfo.neoScanAggregationSceneInfo = neoScanAggregationSceneInfo;
        neoScanAggregationSceneInfo.parseJson(jSONObject.optJSONObject("neoScanAggregationSceneInfo"));
        AdGlobalConfigInfo.CycleAggregationInfo cycleAggregationInfo = new AdGlobalConfigInfo.CycleAggregationInfo();
        adGlobalConfigInfo.cycleAggregationInfo = cycleAggregationInfo;
        cycleAggregationInfo.parseJson(jSONObject.optJSONObject("cycleAggregationInfo"));
        adGlobalConfigInfo.uaidEnable = jSONObject.optBoolean("uaidEnable");
        AdVideoPreCacheConfig adVideoPreCacheConfig = new AdVideoPreCacheConfig();
        adGlobalConfigInfo.adVideoPreCacheConfig = adVideoPreCacheConfig;
        adVideoPreCacheConfig.parseJson(jSONObject.optJSONObject("adVideoPreCacheConfig"));
        AdGlobalConfigInfo.RefreshToken refreshToken = new AdGlobalConfigInfo.RefreshToken();
        adGlobalConfigInfo.refreshToken = refreshToken;
        refreshToken.parseJson(jSONObject.optJSONObject("refreshToken"));
        adGlobalConfigInfo.authError = jSONObject.optLong("authError");
    }

    private static JSONObject b(AdGlobalConfigInfo adGlobalConfigInfo, JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = adGlobalConfigInfo.neoPageType;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "neoPageType", i2);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "neoScanAggregationSceneInfo", adGlobalConfigInfo.neoScanAggregationSceneInfo);
        com.kwad.sdk.utils.ac.a(jSONObject, "cycleAggregationInfo", adGlobalConfigInfo.cycleAggregationInfo);
        boolean z2 = adGlobalConfigInfo.uaidEnable;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "uaidEnable", z2);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "adVideoPreCacheConfig", adGlobalConfigInfo.adVideoPreCacheConfig);
        com.kwad.sdk.utils.ac.a(jSONObject, "refreshToken", adGlobalConfigInfo.refreshToken);
        long j2 = adGlobalConfigInfo.authError;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "authError", j2);
        }
        return jSONObject;
    }
}
