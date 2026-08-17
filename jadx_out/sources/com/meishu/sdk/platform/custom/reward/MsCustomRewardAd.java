package com.meishu.sdk.platform.custom.reward;

import com.meishu.sdk.core.ad.a;
import com.meishu.sdk.core.ad.reward.RewardAdMediaListener;
import com.meishu.sdk.core.ad.reward.RewardVideoAd;

/* loaded from: classes4.dex */
public abstract class MsCustomRewardAd extends a implements RewardVideoAd {
    private RewardAdMediaListener rewardAdMediaListener;

    public MsCustomRewardAd(MsCustomRewardAdapter msCustomRewardAdapter) {
        this(msCustomRewardAdapter, "CUSTOM");
    }

    public RewardAdMediaListener getRewardAdMediaListener() {
        return this.rewardAdMediaListener;
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void setMediaListener(RewardAdMediaListener rewardAdMediaListener) {
        this.rewardAdMediaListener = rewardAdMediaListener;
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void showAd() {
    }

    public MsCustomRewardAd(MsCustomRewardAdapter msCustomRewardAdapter, String str) {
        super(msCustomRewardAdapter, str);
    }
}
