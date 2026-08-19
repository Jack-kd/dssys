package com.smartdigimkt.sdk.api.format;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public interface SDMSplashListener {
    void onAdClick();

    void onAdClose(SDMSplashAdExtraInfo sDMSplashAdExtraInfo);

    void onAdLoadFail(AdError adError);

    void onAdLoadTimeout();

    void onAdLoaded(boolean z2);

    void onAdShow();

    void onAdShowFail(AdError adError);

    void onDeeplinkCallback(boolean z2);
}
