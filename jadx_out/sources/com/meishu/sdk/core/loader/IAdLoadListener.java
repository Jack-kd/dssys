package com.meishu.sdk.core.loader;

/* loaded from: classes4.dex */
public interface IAdLoadListener<T> {
    void onAdClosed();

    void onAdError();

    void onAdExposure();

    void onAdLoaded(T t2);

    void onAdPlatformError(AdPlatformError adPlatformError);

    void onAdReady(T t2);

    void onAdRenderFail(String str, int i2);
}
