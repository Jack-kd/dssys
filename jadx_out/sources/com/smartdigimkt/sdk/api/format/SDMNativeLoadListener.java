package com.smartdigimkt.sdk.api.format;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public interface SDMNativeLoadListener {
    void onAdLoadFail(AdError adError);

    void onAdLoaded(SDMNativeAd sDMNativeAd);
}
