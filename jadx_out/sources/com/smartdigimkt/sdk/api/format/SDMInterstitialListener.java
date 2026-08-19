package com.smartdigimkt.sdk.api.format;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public interface SDMInterstitialListener {
    void onAdClick();

    void onAdClose();

    void onAdLoadFail(AdError adError);

    void onAdLoaded();

    void onAdShow();

    void onAdShowFail(AdError adError);

    void onAdVideoEnd();

    void onAdVideoStart();

    void onDeeplinkCallback(boolean z2);
}
