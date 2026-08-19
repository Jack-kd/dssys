package com.fl.saas.adx.api.mixNative;

import com.fl.saas.adx.base.exception.FLError;

/* loaded from: classes3.dex */
public interface NativeEventListener {
    void onAdClicked(NativeAdView nativeAdView);

    void onAdClose(NativeAdView nativeAdView);

    void onAdFailed(NativeAdView nativeAdView, FLError fLError);

    void onAdImpressed(NativeAdView nativeAdView);

    void onAdVideoEnd(NativeAdView nativeAdView);

    void onAdVideoProgress(NativeAdView nativeAdView, long j2);

    void onAdVideoStart(NativeAdView nativeAdView);
}
