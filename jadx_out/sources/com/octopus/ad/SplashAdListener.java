package com.octopus.ad;

/* loaded from: classes4.dex */
public interface SplashAdListener {
    void onAdCacheLoaded(boolean z2);

    void onAdClicked();

    void onAdClosed();

    void onAdFailedToLoad(int i2);

    void onAdLoaded();

    void onAdShown();

    void onAdTick(long j2);
}
