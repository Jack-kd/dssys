package com.kwad.components.ad.reward.monitor;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.utils.ac;
import com.smartdigimkt.sdk.api.format.SDMAdDeepRewardResult;
import java.io.Serializable;
import org.json.JSONObject;

@KsJson
/* loaded from: classes4.dex */
public class RewardMonitorInfo extends com.kwad.sdk.commercial.c.a implements Serializable {
    public static final int DOWNLOAD_TYPE_ALL = 2;
    public static final int DOWNLOAD_TYPE_ONLINE = 1;
    public static final int DOWNLOAD_TYPE_PART = 3;
    public static final int LOAD_STATUS_DATA_FINISH = 2;
    public static final int LOAD_STATUS_FAIL = 4;
    public static final int LOAD_STATUS_LOAD_FINISH = 3;
    public static final int LOAD_STATUS_RESPONSE_DATA = 6;
    public static final int LOAD_STATUS_START = 1;
    public static final int LOAD_STATUS_START_CACHE = 7;
    public static final int LOAD_STATUS_START_REQUEST = 5;
    public static final int LOAD_TYPE_LOCAL = 2;
    public static final int LOAD_TYPE_NET = 1;
    public static final int PAGE_STATUS_AD_PV = 6;
    public static final int PAGE_STATUS_ENTRY = 1;
    public static final int PAGE_STATUS_FRAUD_VERIFY = 10;
    public static final int PAGE_STATUS_PAGE_RESUME = 5;
    public static final int PAGE_STATUS_PREVIEW_H5_ERROR = 9;
    public static final int PAGE_STATUS_PREVIEW_H5_START = 7;
    public static final int PAGE_STATUS_PREVIEW_H5_SUCCESS = 8;
    public static final int PAGE_STATUS_SHOW_AD_CALL = 3;
    public static final int PAGE_STATUS_SHOW_INTERCEPT = 4;
    public static final int PAGE_STATUS_START_PLAY = 2;
    public static final int PAGE_STATUS_SUB_PAGE_CREATE = 101;
    public static final int REWARD_TYPE_DEEP = 1;
    public static final int REWARD_TYPE_NORMAL = 0;
    public static final int SCENE_TYPE_IMAGE = 2;
    public static final int SCENE_TYPE_LIVE = 1;
    public static final int SCENE_TYPE_SCAN_AGGREGATION = 3;
    public static final int SCENE_TYPE_VIDEO = 0;
    public static final long serialVersionUID = 1080394611500009098L;
    public int adCount;
    public int adSceneType;
    public String callbackType;
    public long creativeId;
    public long currentDuration;
    public long dataDownloadInterval;
    public long dataLoadInterval;
    public long downloadDuration;
    public long downloadSize;
    public int downloadType;
    public int fraudVerifyCode;
    public int fraudVerifyType;
    public String interceptReason;
    public String launchFrom;
    public long loadDataDuration;
    public int loadStatus;
    public int loadType;
    public String materialRenderType;
    public int materialType;
    public int operationType;
    public int pageStatus;
    public long posId;
    public long renderDuration;
    public int rewardTaskType;
    public String subStage;
    public int tkRenderType;
    public long totalDuration;
    public long videoDuration;
    public String videoUrl;
    public int rewardType = -1;
    public int taskType = -1;
    public int taskStep = -1;
    public boolean enableRewardLayoutOptimise = com.kwad.components.ad.reward.a.b.hZ();
    public boolean enableFullscreenLayoutOptimise = com.kwad.components.ad.reward.a.b.ia();

    @Override // com.kwad.sdk.core.response.a.a
    public void afterToJson(JSONObject jSONObject) {
        super.afterToJson(jSONObject);
        int i2 = this.rewardType;
        if (i2 != -1) {
            ac.putValue(jSONObject, "reward_type", i2);
        } else {
            jSONObject.remove("reward_type");
        }
        int i3 = this.taskType;
        if (i3 != -1) {
            ac.putValue(jSONObject, SDMAdDeepRewardResult.KEY_TASK_TYPE, i3);
        } else {
            jSONObject.remove(SDMAdDeepRewardResult.KEY_TASK_TYPE);
        }
        int i4 = this.taskStep;
        if (i4 != -1) {
            ac.putValue(jSONObject, "task_step", i4);
        } else {
            jSONObject.remove("task_step");
        }
    }

    public RewardMonitorInfo setAdCount(int i2) {
        this.adCount = i2;
        return this;
    }

    public RewardMonitorInfo setAdSceneType(int i2) {
        this.adSceneType = i2;
        return this;
    }

    public RewardMonitorInfo setCallbackType(String str) {
        this.callbackType = str;
        return this;
    }

    public RewardMonitorInfo setCreativeId(long j2) {
        this.creativeId = j2;
        return this;
    }

    public RewardMonitorInfo setCurrentDuration(long j2) {
        this.currentDuration = j2;
        return this;
    }

    public RewardMonitorInfo setDataDownloadInterval(long j2) {
        this.dataDownloadInterval = j2;
        return this;
    }

    public RewardMonitorInfo setDataLoadInterval(long j2) {
        this.dataLoadInterval = j2;
        return this;
    }

    public RewardMonitorInfo setDownloadDuration(long j2) {
        this.downloadDuration = j2;
        return this;
    }

    public RewardMonitorInfo setDownloadSize(long j2) {
        this.downloadSize = j2;
        return this;
    }

    public RewardMonitorInfo setDownloadType(int i2) {
        this.downloadType = i2;
        return this;
    }

    public RewardMonitorInfo setFraudVerifyCode(int i2) {
        this.fraudVerifyCode = i2;
        return this;
    }

    public RewardMonitorInfo setFraudVerifyType(int i2) {
        this.fraudVerifyType = i2;
        return this;
    }

    public RewardMonitorInfo setInterceptReason(String str) {
        this.interceptReason = str;
        return this;
    }

    public RewardMonitorInfo setLaunchFrom(String str) {
        this.launchFrom = str;
        return this;
    }

    public RewardMonitorInfo setLoadDataDuration(long j2) {
        this.loadDataDuration = j2;
        return this;
    }

    public RewardMonitorInfo setLoadStatus(int i2) {
        this.loadStatus = i2;
        return this;
    }

    public RewardMonitorInfo setLoadType(int i2) {
        this.loadType = i2;
        return this;
    }

    public RewardMonitorInfo setMaterialRenderType(String str) {
        this.materialRenderType = str;
        return this;
    }

    public RewardMonitorInfo setMaterialType(int i2) {
        this.materialType = i2;
        return this;
    }

    public RewardMonitorInfo setOperationType(int i2) {
        this.operationType = i2;
        return this;
    }

    public RewardMonitorInfo setPageStatus(int i2) {
        this.pageStatus = i2;
        return this;
    }

    public RewardMonitorInfo setRenderDuration(long j2) {
        this.renderDuration = j2;
        return this;
    }

    public RewardMonitorInfo setRewardTaskType(int i2) {
        this.rewardTaskType = i2;
        return this;
    }

    public RewardMonitorInfo setRewardType(int i2) {
        this.rewardType = i2;
        return this;
    }

    public RewardMonitorInfo setSubStage(String str) {
        this.subStage = str;
        return this;
    }

    public RewardMonitorInfo setTKRenderType(int i2) {
        this.tkRenderType = i2;
        return this;
    }

    public RewardMonitorInfo setTaskStep(int i2) {
        this.taskStep = i2;
        return this;
    }

    public RewardMonitorInfo setTaskType(int i2) {
        this.taskType = i2;
        return this;
    }

    public RewardMonitorInfo setTotalDuration(long j2) {
        this.totalDuration = j2;
        return this;
    }

    public RewardMonitorInfo setVideoDuration(long j2) {
        this.videoDuration = j2;
        return this;
    }

    public RewardMonitorInfo setVideoUrl(String str) {
        this.videoUrl = str;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    public RewardMonitorInfo setAdTemplate(AdTemplate adTemplate) {
        if (adTemplate == null) {
            return this;
        }
        RewardMonitorInfo rewardMonitorInfo = (RewardMonitorInfo) super.setAdTemplate(adTemplate);
        int iEI = com.kwad.sdk.core.response.helper.e.eI(adTemplate);
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        rewardMonitorInfo.setOperationType(com.kwad.sdk.core.response.helper.a.aW(adInfoEO));
        rewardMonitorInfo.setMaterialRenderType(com.kwad.components.ad.reward.model.d.n(adInfoEO));
        rewardMonitorInfo.setTKRenderType(com.kwad.sdk.core.response.helper.b.a(iEI == 2, adInfoEO));
        return rewardMonitorInfo;
    }

    @Override // com.kwad.sdk.commercial.c.a
    public RewardMonitorInfo setErrorCode(int i2) {
        super.setErrorCode(i2);
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    public RewardMonitorInfo setErrorMsg(String str) {
        super.setErrorMsg(str);
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    public RewardMonitorInfo setPosId(long j2) {
        return (RewardMonitorInfo) super.setPosId(j2);
    }
}
