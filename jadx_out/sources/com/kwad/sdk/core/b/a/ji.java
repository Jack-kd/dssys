package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdGlobalConfigInfo;
import com.sigmob.sdk.base.common.C1244a;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ji implements com.kwad.sdk.core.d<AdGlobalConfigInfo.NeoScanAggregationSceneInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdGlobalConfigInfo.NeoScanAggregationSceneInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdGlobalConfigInfo.NeoScanAggregationSceneInfo) bVar, jSONObject);
    }

    private static void a(AdGlobalConfigInfo.NeoScanAggregationSceneInfo neoScanAggregationSceneInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        neoScanAggregationSceneInfo.neoCountDownNeedSwipeTrigger = jSONObject.optBoolean("neoCountDownNeedSwipeTrigger");
        neoScanAggregationSceneInfo.neoCountDownTime = jSONObject.optInt("neoCountDownTime");
        neoScanAggregationSceneInfo.noActionStopCountDown = jSONObject.optBoolean("noActionStopCountDown");
        neoScanAggregationSceneInfo.noActionTime = jSONObject.optInt("noActionTime");
        neoScanAggregationSceneInfo.guidSwipezShowMore = jSONObject.optBoolean("guidSwipezShowMore");
        neoScanAggregationSceneInfo.mute = jSONObject.optBoolean(C1244a.f35698z);
    }

    private static JSONObject b(AdGlobalConfigInfo.NeoScanAggregationSceneInfo neoScanAggregationSceneInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z2 = neoScanAggregationSceneInfo.neoCountDownNeedSwipeTrigger;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "neoCountDownNeedSwipeTrigger", z2);
        }
        int i2 = neoScanAggregationSceneInfo.neoCountDownTime;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "neoCountDownTime", i2);
        }
        boolean z3 = neoScanAggregationSceneInfo.noActionStopCountDown;
        if (z3) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "noActionStopCountDown", z3);
        }
        int i3 = neoScanAggregationSceneInfo.noActionTime;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "noActionTime", i3);
        }
        boolean z4 = neoScanAggregationSceneInfo.guidSwipezShowMore;
        if (z4) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "guidSwipezShowMore", z4);
        }
        boolean z5 = neoScanAggregationSceneInfo.mute;
        if (z5) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, C1244a.f35698z, z5);
        }
        return jSONObject;
    }
}
