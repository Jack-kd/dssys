package com.kwad.components.ad.reward.retryReward;

import androidx.annotation.Nullable;
import com.anythink.network.ks.KSATConst;
import com.kwad.sdk.api.model.KSAdInfoData;
import com.kwad.sdk.api.model.KSAdRewardRetryTaskResult;
import com.kwad.sdk.i;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ac;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class RewardRetryTaskNetRequest extends com.kwad.sdk.core.network.d {

    public static class TaskInfo implements com.kwad.sdk.core.b, Serializable {
        public long creativeId;
        public long llsid;

        public TaskInfo(long j2, long j3) {
            this.llsid = j2;
            this.creativeId = j3;
        }

        @Override // com.kwad.sdk.core.b
        public void parseJson(@Nullable JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            this.llsid = jSONObject.optLong(KSATConst.KS_LLS_ID);
            this.creativeId = jSONObject.optLong("creativeId");
        }

        @Override // com.kwad.sdk.core.b
        public JSONObject toJson() {
            JSONObject jSONObject = new JSONObject();
            ac.putValue(jSONObject, KSATConst.KS_LLS_ID, this.llsid);
            ac.putValue(jSONObject, "creativeId", this.creativeId);
            return jSONObject;
        }
    }

    public RewardRetryTaskNetRequest(List<KSAdRewardRetryTaskResult> list) {
        KSAdInfoData kSAdInfoData;
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (KSAdRewardRetryTaskResult kSAdRewardRetryTaskResult : list) {
                    if (kSAdRewardRetryTaskResult != null && (kSAdInfoData = kSAdRewardRetryTaskResult.ksAdInfoData) != null) {
                        arrayList.add(new TaskInfo(Long.parseLong(kSAdInfoData.getLlsid()), kSAdRewardRetryTaskResult.ksAdInfoData.getCreativeId()));
                    }
                }
                putBody("taskInfoList", arrayList);
            } catch (Throwable th) {
                ServiceProvider.reportSdkCaughtException(th);
            }
        }
    }

    @Override // com.kwad.sdk.core.network.d, com.kwad.sdk.core.network.b
    public final void buildBaseBody() {
    }

    @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
    public final String getUrl() {
        return i.Fc();
    }
}
