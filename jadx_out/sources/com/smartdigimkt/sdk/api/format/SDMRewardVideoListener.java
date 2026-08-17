package com.smartdigimkt.sdk.api.format;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public interface SDMRewardVideoListener {
    void onAdClick();

    void onAdClose();

    void onAdLoadFail(AdError adError);

    void onAdLoaded();

    void onAdPlayEnd();

    void onAdPlayFailed(AdError adError);

    void onAdPlayStart();

    void onAdReward();

    void onDeeplinkCallback(boolean z2);
}
