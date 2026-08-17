package com.meishu.sdk.platform.mimo.reward;

import android.app.Activity;
import com.meishu.sdk.core.ad.a;
import com.meishu.sdk.core.ad.reward.RewardAdMediaListener;
import com.meishu.sdk.core.ad.reward.RewardVideoAd;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.p1;
import com.miui.zeus.mimo.sdk.RewardVideoAd;

/* loaded from: classes4.dex */
public class MimoRewardAd extends a implements RewardVideoAd {
    private static final String TAG = "MimoRewardAd";
    private MimoRewardAdWrapper adWrapper;
    private boolean hasShown;
    private RewardAdMediaListener rewardAdMediaListener;
    private com.miui.zeus.mimo.sdk.RewardVideoAd rewardVideoAd;

    public MimoRewardAd(com.miui.zeus.mimo.sdk.RewardVideoAd rewardVideoAd, MimoRewardAdWrapper mimoRewardAdWrapper) {
        super(mimoRewardAdWrapper, "MIMO");
        this.hasShown = false;
        this.rewardVideoAd = rewardVideoAd;
        this.adWrapper = mimoRewardAdWrapper;
    }

    private void showReward(Activity activity) {
        if (this.hasShown) {
            return;
        }
        MimoRewardAdWrapper mimoRewardAdWrapper = this.adWrapper;
        if (mimoRewardAdWrapper != null && mimoRewardAdWrapper.getSdkAdInfo() != null) {
            p1.b(this.adWrapper.getSdkAdInfo().getEventUrl());
        }
        this.hasShown = true;
        this.rewardVideoAd.showAd(activity, new RewardVideoAd.RewardVideoInteractionListener() { // from class: com.meishu.sdk.platform.mimo.reward.MimoRewardAd.1
            public void onAdClick() {
                LogUtil.d(MimoRewardAd.TAG, "send onAdClick");
                com.meishu.sdk.core.loader.a.a(MimoRewardAd.this.adWrapper.getContext(), f.a(MimoRewardAd.this.adWrapper.getSdkAdInfo().getClk(), MimoRewardAd.this));
                if (MimoRewardAd.this.getInteractionListener() != null) {
                    MimoRewardAd.this.getInteractionListener().onAdClicked();
                }
            }

            public void onAdDismissed() {
                LogUtil.d(MimoRewardAd.TAG, "send onAdDismissed");
                if (MimoRewardAd.this.adWrapper.getLoaderListener() != null) {
                    MimoRewardAd.this.adWrapper.getLoaderListener().onAdClosed();
                }
                if (MimoRewardAd.this.getInteractionListener() != null) {
                    MimoRewardAd.this.getInteractionListener().onAdClosed();
                }
            }

            public void onAdFailed(String str) {
                LogUtil.e(MimoRewardAd.TAG, "onRenderFail, msg: " + str);
                if (MimoRewardAd.this.adWrapper.getLoaderListener() != null) {
                    MimoRewardAd.this.adWrapper.getLoaderListener().onAdError();
                }
            }

            public void onAdPresent() {
                LogUtil.d(MimoRewardAd.TAG, "send onAdPresent");
                if (MimoRewardAd.this.adWrapper.getLoaderListener() != null) {
                    MimoRewardAd.this.adWrapper.getLoaderListener().onAdExposure();
                }
                if (MimoRewardAd.this.getInteractionListener() != null) {
                    MimoRewardAd.this.getInteractionListener().onAdExposure();
                }
            }

            public void onPicAdEnd() {
                LogUtil.d(MimoRewardAd.TAG, "onPicAdEnd");
            }

            public void onReward() {
            }

            public void onVideoComplete() {
                LogUtil.d(MimoRewardAd.TAG, "send onVideoComplete");
                if (MimoRewardAd.this.adWrapper.getAdLoader().getLoaderListener() != 0) {
                    ((com.meishu.sdk.core.ad.reward.a) MimoRewardAd.this.adWrapper.getAdLoader().getLoaderListener()).onReward(null);
                }
                if (MimoRewardAd.this.rewardAdMediaListener != null) {
                    MimoRewardAd.this.rewardAdMediaListener.onVideoCompleted();
                }
            }

            public void onVideoPause() {
                LogUtil.d(MimoRewardAd.TAG, "onVideoPause");
            }

            public void onVideoSkip() {
            }

            public void onVideoStart() {
                LogUtil.d(MimoRewardAd.TAG, "onVideoStart");
            }
        });
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void destroy() {
        com.miui.zeus.mimo.sdk.RewardVideoAd rewardVideoAd = this.rewardVideoAd;
        if (rewardVideoAd != null) {
            rewardVideoAd.recycle();
        }
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void setMediaListener(RewardAdMediaListener rewardAdMediaListener) {
        this.rewardAdMediaListener = rewardAdMediaListener;
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void showAd() {
        if (this.adWrapper.getContext() instanceof Activity) {
            showReward((Activity) this.adWrapper.getContext());
        }
    }

    @Override // com.meishu.sdk.core.ad.reward.RewardVideoAd
    public void showAd(Activity activity) {
        showReward(activity);
    }
}
