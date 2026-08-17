package com.kwad.sdk.core.b.a;

import com.kwad.components.ad.reward.check.RewardCheckMonitorInfo;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class kt implements com.kwad.sdk.core.d<RewardCheckMonitorInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((RewardCheckMonitorInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((RewardCheckMonitorInfo) bVar, jSONObject);
    }

    private static void a(RewardCheckMonitorInfo rewardCheckMonitorInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        rewardCheckMonitorInfo.checkType = jSONObject.optInt("check_type");
        rewardCheckMonitorInfo.requestStatus = jSONObject.optInt("request_state");
        rewardCheckMonitorInfo.code = jSONObject.optInt("code");
        rewardCheckMonitorInfo.creativeId = jSONObject.optLong("creative_id");
        rewardCheckMonitorInfo.dataLoadInterval = jSONObject.optLong("data_load_interval_duration_ms");
        rewardCheckMonitorInfo.posId = jSONObject.optLong("pos_Id");
        rewardCheckMonitorInfo.enviType = jSONObject.optInt("enviType");
    }

    private static JSONObject b(RewardCheckMonitorInfo rewardCheckMonitorInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i2 = rewardCheckMonitorInfo.checkType;
        if (i2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "check_type", i2);
        }
        int i3 = rewardCheckMonitorInfo.requestStatus;
        if (i3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "request_state", i3);
        }
        int i4 = rewardCheckMonitorInfo.code;
        if (i4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "code", i4);
        }
        long j2 = rewardCheckMonitorInfo.creativeId;
        if (j2 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creative_id", j2);
        }
        long j3 = rewardCheckMonitorInfo.dataLoadInterval;
        if (j3 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "data_load_interval_duration_ms", j3);
        }
        long j4 = rewardCheckMonitorInfo.posId;
        if (j4 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pos_Id", j4);
        }
        int i5 = rewardCheckMonitorInfo.enviType;
        if (i5 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "enviType", i5);
        }
        return jSONObject;
    }
}
