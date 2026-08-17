package com.meishu.sdk.core.ad.splash;

import com.meishu.sdk.core.loader.IAdLoadListener;

/* loaded from: classes4.dex */
public interface d extends IAdLoadListener<ISplashAd> {
    default void onAdPresent(ISplashAd iSplashAd) {
    }

    default void onAdSkip(ISplashAd iSplashAd) {
    }

    default void onAdTick(long j2) {
    }

    default void onAdTimeOver(ISplashAd iSplashAd) {
    }
}
