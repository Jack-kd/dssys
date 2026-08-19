package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class ck implements com.kwad.sdk.core.d<AdInfo.CallBackStrategyInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdInfo.CallBackStrategyInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdInfo.CallBackStrategyInfo) bVar, jSONObject);
    }

    private static void a(AdInfo.CallBackStrategyInfo callBackStrategyInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        callBackStrategyInfo.impressionCheckMs = jSONObject.optInt("impressionCheckMs", new Integer("5000").intValue());
        callBackStrategyInfo.callBackAdvanceMs = jSONObject.optInt("callBackAdvanceMs", new Integer("2000").intValue());
        callBackStrategyInfo.serverCheckSwitch = jSONObject.optBoolean("serverCheckSwitch");
        callBackStrategyInfo.rewardAdvanceSwitch = jSONObject.optBoolean("rewardAdvanceSwitch");
    }

    private static JSONObject b(AdInfo.CallBackStrategyInfo callBackStrategyInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "impressionCheckMs", callBackStrategyInfo.impressionCheckMs);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "callBackAdvanceMs", callBackStrategyInfo.callBackAdvanceMs);
        boolean z2 = callBackStrategyInfo.serverCheckSwitch;
        if (z2) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "serverCheckSwitch", z2);
        }
        boolean z3 = callBackStrategyInfo.rewardAdvanceSwitch;
        if (z3) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rewardAdvanceSwitch", z3);
        }
        return jSONObject;
    }
}
