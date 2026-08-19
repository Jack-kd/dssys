package com.meishu.sdk.platform.huawei.reward;

import android.app.Activity;
import com.huawei.hms.ads.reward.Reward;
import com.huawei.hms.ads.reward.RewardAd;
import com.huawei.hms.ads.reward.RewardAdStatusListener;
import com.meishu.sdk.core.ad.a;
import com.meishu.sdk.core.ad.reward.RewardAdMediaListener;
import com.meishu.sdk.core.ad.reward.RewardVideoAd;
import com.meishu.sdk.core.utils.p1;

/* loaded from: classes4.dex */
public class HWRewardVideoAd extends a implements RewardVideoAd {
    private HWRewardVideoAdWrapper adWrapper;
    public RewardAdStatusListener listener;
    private RewardAd rewardAd;

    public HWRewardVideoAd(HWRewardVideoAdWrapper hWRewardVideoAdWrapper, RewardAd rewardAd) {
        super(hWRewardVideoAdWrapper, "HW");
        this.listener = new RewardAdStatusListener() { // from class: com.meishu.sdk.platform.huawei.reward.HWRewardVideoAd.1
            public void onRewardAdClosed() {
                if (HWRewardVideoAd.this.adWrapper.getLoaderListener() != null) {
                    HWRewardVideoAd.this.adWrapper.getLoaderListener().onAdClosed();
                }
                if (HWRewardVideoAd.this.getInteractionListener() != null) {
                    HWRewardVideoAd.this.getInteractionListener().onAdClosed();
                }
            }

            public void onRewardAdFailedToShow(int i2) {
                super.onRewardAdFailedToShow(i2);
            }

            public void onRewardAdOpened() {
                if (HWRewardVideoAd.this.adWrapper.getLoaderListener() != null) {
                    HWRewardVideoAd.this.adWrapper.getLoaderListener().onAdExposure();
                }
                if (HWRewardVideoAd.this.getInteractionListener() != null) {
                    HWRewardVideoAd.this.getInteractionListener().onAdExposure();
                }
            }

            public void onRewarded(Reward reward) {
                if (HWRewardVideoAd.this.adWrapper.getLoaderListener() != null) {
                    HWRewardVideoAd.this.adWrapper.getLoaderListener().onReward(null);
                }
            }
        };
        this.adWrapper = hWRewardVideoAdWrapper;
        this.rewardAd = rewardAd;
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void destroy() {
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void setMediaListener(RewardAdMediaListener rewardAdMediaListener) {
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void showAd() {
        RewardAd rewardAd = this.rewardAd;
        if (rewardAd != null && rewardAd.isLoaded() && (this.adWrapper.getContext() instanceof Activity)) {
            this.rewardAd.show((Activity) this.adWrapper.getContext(), this.listener);
            HWRewardVideoAdWrapper hWRewardVideoAdWrapper = this.adWrapper;
            if (hWRewardVideoAdWrapper == null || hWRewardVideoAdWrapper.getSdkAdInfo() == null) {
                return;
            }
            p1.b(this.adWrapper.getSdkAdInfo().getEventUrl());
        }
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void showAd(Activity activity) {
        RewardAd rewardAd = this.rewardAd;
        if (rewardAd == null || !rewardAd.isLoaded()) {
            return;
        }
        this.rewardAd.show(activity, this.listener);
        HWRewardVideoAdWrapper hWRewardVideoAdWrapper = this.adWrapper;
        if (hWRewardVideoAdWrapper == null || hWRewardVideoAdWrapper.getSdkAdInfo() == null) {
            return;
        }
        p1.b(this.adWrapper.getSdkAdInfo().getEventUrl());
    }
}
