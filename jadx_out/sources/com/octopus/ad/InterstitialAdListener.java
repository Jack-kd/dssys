package com.octopus.ad;

/* loaded from: classes4.dex */
public interface InterstitialAdListener {
    void onAdCacheLoaded(boolean z2);

    void onAdClicked();

    void onAdClosed();

    void onAdFailedToLoad(int i2);

    void onAdLoaded();

    void onAdShown();
}
