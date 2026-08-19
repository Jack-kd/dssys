package com.meishu.sdk.core.ad.reward;

import com.meishu.sdk.core.loader.IAdLoadListener;
import java.util.Map;

/* loaded from: classes4.dex */
public interface a extends IAdLoadListener<RewardVideoAd> {
    void onReward(Map<String, Object> map);

    void onVideoCached(RewardVideoAd rewardVideoAd);
}
