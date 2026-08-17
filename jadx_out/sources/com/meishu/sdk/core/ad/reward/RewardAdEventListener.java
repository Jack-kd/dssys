package com.meishu.sdk.core.ad.reward;

import com.meishu.sdk.core.ad.IAdEventListener;
import java.util.Map;

/* loaded from: classes4.dex */
public interface RewardAdEventListener extends IAdEventListener<RewardVideoAd> {
    void onReward(Map<String, Object> map);

    void onVideoCached(RewardVideoAd rewardVideoAd);
}
