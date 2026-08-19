package com.ubix.ssp.open.splash;

import com.ubix.ssp.open.AdError;

/* loaded from: classes5.dex */
public interface UBiXSplashAdListener {
    void onAdClicked();

    void onAdClosed();

    void onAdExposeFailed(AdError adError);

    void onAdExposed();

    void onAdLoadFailed(AdError adError);

    void onAdLoadSucceed();

    void onAdResponseSucceed();

    void onAdSkipped();
}
