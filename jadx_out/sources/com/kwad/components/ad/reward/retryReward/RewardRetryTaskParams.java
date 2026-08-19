package com.kwad.components.ad.reward.retryReward;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.anythink.network.ks.KSATConst;
import com.kwad.sdk.core.response.model.BaseResultData;
import com.kwad.sdk.service.ServiceProvider;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class RewardRetryTaskParams extends BaseResultData {
    private final Map<Long, a> mTaskResultMap = new HashMap();

    public static class a {
        public int conversionStatus;
        public long creativeId;
        public long llsid;

        public a(long j2, long j3, int i2) {
            this.llsid = j2;
            this.conversionStatus = i2;
            this.creativeId = j3;
        }
    }

    public Map<Long, a> getTaskResultMap() {
        return this.mTaskResultMap;
    }

    @Override // com.kwad.sdk.core.response.model.BaseResultData, com.kwad.sdk.core.b
    public void parseJson(@Nullable JSONObject jSONObject) {
        super.parseJson(jSONObject);
        if (jSONObject == null) {
            return;
        }
        try {
            String strOptString = jSONObject.optString("data");
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            com.kwad.sdk.core.a.e eVar = (com.kwad.sdk.core.a.e) com.kwad.sdk.components.d.f(com.kwad.sdk.core.a.e.class);
            if (eVar != null) {
                strOptString = eVar.getResponseData(strOptString);
            }
            JSONArray jSONArrayOptJSONArray = new JSONObject(strOptString).optJSONArray("taskInfoList");
            if (jSONArrayOptJSONArray == null) {
                return;
            }
            for (int i2 = 0; jSONArrayOptJSONArray.length() > i2; i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                long jOptLong = jSONObjectOptJSONObject.optLong(KSATConst.KS_LLS_ID);
                this.mTaskResultMap.put(Long.valueOf(jOptLong), new a(jOptLong, jSONObjectOptJSONObject.optLong("creativeId"), jSONObjectOptJSONObject.optInt("conversionStatus")));
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
