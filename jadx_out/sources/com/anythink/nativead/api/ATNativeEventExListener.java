package com.anythink.nativead.api;

import com.anythink.core.api.ATAdInfo;

/* loaded from: classes2.dex */
public interface ATNativeEventExListener extends ATNativeEventListener {
    void onAdActReward(ATAdInfo aTAdInfo, int i2);

    void onAdActRewardSuccess(ATAdInfo aTAdInfo);

    void onDeeplinkCallback(ATNativeAdView aTNativeAdView, ATAdInfo aTAdInfo, boolean z2);
}
