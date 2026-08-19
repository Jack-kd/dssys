package com.meishu.sdk.platform.pangle.reward;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.meishu.sdk.platform.custom.reward.MsCustomRewardAd;

/* loaded from: classes4.dex */
public class PangleRewardAd extends MsCustomRewardAd {
    private PAGRewardedAd rewardedAd;

    public PangleRewardAd(PangleRewardAdapter pangleRewardAdapter, PAGRewardedAd pAGRewardedAd) {
        super(pangleRewardAdapter);
        this.rewardedAd = pAGRewardedAd;
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void destroy() {
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void showAd(Activity activity) {
        PAGRewardedAd pAGRewardedAd = this.rewardedAd;
        if (pAGRewardedAd != null) {
            pAGRewardedAd.show(activity);
        }
    }
}
