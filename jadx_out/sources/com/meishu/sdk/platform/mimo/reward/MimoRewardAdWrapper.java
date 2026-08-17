package com.meishu.sdk.platform.mimo.reward;

import com.meishu.sdk.core.ad.reward.RewardVideoLoader;
import com.meishu.sdk.core.ad.reward.a;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.platform.BasePlatformLoader;
import com.meishu.sdk.platform.mimo.MimoPlatformError;
import com.miui.zeus.mimo.sdk.RewardVideoAd;

/* loaded from: classes4.dex */
public class MimoRewardAdWrapper extends BasePlatformLoader<RewardVideoLoader, a> {
    private static final String TAG = "MimoRewardAdWrapper";

    public MimoRewardAdWrapper(RewardVideoLoader rewardVideoLoader, SdkAdInfo sdkAdInfo) {
        super(rewardVideoLoader, sdkAdInfo);
    }

    @Override // com.meishu.sdk.core.loader.IAdLoader
    public void loadAd() {
        a0.a(((RewardVideoLoader) this.adLoader).getContext(), i0.a(getSdkAdInfo().getReq()), new i());
        final RewardVideoAd rewardVideoAd = new RewardVideoAd();
        rewardVideoAd.loadAd(this.sdkAdInfo.getPid(), new RewardVideoAd.RewardVideoLoadListener() { // from class: com.meishu.sdk.platform.mimo.reward.MimoRewardAdWrapper.1
            public void onAdLoadFailed(int i2, String str) {
                LogUtil.e(MimoRewardAdWrapper.TAG, "onAdLoadFailed, code: " + i2 + ", msg: " + str);
                new MimoPlatformError(str, Integer.valueOf(i2), MimoRewardAdWrapper.this.getSdkAdInfo()).post(MimoRewardAdWrapper.this.loadListener);
            }

            public void onAdLoadSuccess() {
                LogUtil.d(MimoRewardAdWrapper.TAG, "send onBannerAdLoadSuccess");
                if (MimoRewardAdWrapper.this.loadListener != null) {
                    MimoRewardAd mimoRewardAd = new MimoRewardAd(rewardVideoAd, MimoRewardAdWrapper.this);
                    ((a) MimoRewardAdWrapper.this.loadListener).onAdLoaded(mimoRewardAd);
                    ((a) MimoRewardAdWrapper.this.loadListener).onAdReady(mimoRewardAd);
                }
            }

            public void onAdRequestSuccess() {
            }
        });
    }
}
