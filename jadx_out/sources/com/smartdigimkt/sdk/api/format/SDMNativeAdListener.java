package com.smartdigimkt.sdk.api.format;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public interface SDMNativeAdListener {
    void onAdClick();

    void onAdClosed();

    void onAdShow();

    void onDeeplinkCallback(boolean z2);

    void onShowFailed(AdError adError);
}
