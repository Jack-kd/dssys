package com.meishu.sdk.core.ad.reward;

import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.loader.AdPlatformError;
import com.meishu.sdk.core.utils.AdErrorInfo;
import java.util.Map;

/* loaded from: classes4.dex */
public class b implements a {

    /* renamed from: a, reason: collision with root package name */
    public RewardAdEventListener f31505a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f31506b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f31507c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f31508d;

    public b(RewardVideoLoader rewardVideoLoader, RewardAdEventListener rewardAdEventListener) {
        this.f31505a = rewardAdEventListener;
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdClosed() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdError() {
        if (this.f31505a == null || this.f31508d || this.f31506b) {
            return;
        }
        this.f31506b = true;
        RewardAdEventListener rewardAdEventListener = this.f31505a;
        String str = AdSdk.adConfig() == null ? "SDK IS NOT INITED ！" : ErrorCodeUtil.AD_LOAD_ERROR_MSG;
        rewardAdEventListener.onAdError(this.f31507c ? new AdErrorInfo(AdErrorInfo.RENDER_ERROR, ErrorCodeUtil.RENDER_AD_RESULT, str) : new AdErrorInfo(AdErrorInfo.LOAD_ERROR, ErrorCodeUtil.AD_LOAD_ERROR.intValue(), str));
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdExposure() {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public /* bridge */ /* synthetic */ void onAdLoaded(RewardVideoAd rewardVideoAd) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdPlatformError(AdPlatformError adPlatformError) {
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdReady(RewardVideoAd rewardVideoAd) {
        RewardVideoAd rewardVideoAd2 = rewardVideoAd;
        this.f31507c = true;
        RewardAdEventListener rewardAdEventListener = this.f31505a;
        if (rewardAdEventListener != null) {
            rewardAdEventListener.onAdReady(rewardVideoAd2);
        }
    }

    @Override // com.meishu.sdk.core.loader.IAdLoadListener
    public void onAdRenderFail(String str, int i2) {
        if (this.f31505a == null || this.f31506b || this.f31508d) {
            return;
        }
        this.f31508d = true;
        this.f31505a.onAdError(new AdErrorInfo(AdErrorInfo.RENDER_ERROR, i2, str));
    }

    @Override // com.meishu.sdk.core.ad.reward.a
    public void onReward(Map<String, Object> map) {
        RewardAdEventListener rewardAdEventListener = this.f31505a;
        if (rewardAdEventListener != null) {
            rewardAdEventListener.onReward(map);
        }
    }

    @Override // com.meishu.sdk.core.ad.reward.a
    public void onVideoCached(RewardVideoAd rewardVideoAd) {
        RewardAdEventListener rewardAdEventListener = this.f31505a;
        if (rewardAdEventListener != null) {
            rewardAdEventListener.onVideoCached(rewardVideoAd);
        }
    }
}
