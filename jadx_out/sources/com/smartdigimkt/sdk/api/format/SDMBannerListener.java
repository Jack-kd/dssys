package com.smartdigimkt.sdk.api.format;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public interface SDMBannerListener {
    void onAdClick();

    void onAdClose();

    void onAdLoadFail(AdError adError);

    void onAdLoaded();

    void onAdShow();

    void onDeeplinkCallback(boolean z2);
}
