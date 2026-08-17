package com.ubix.ssp.open.icon;

import com.ubix.ssp.open.AdError;

/* loaded from: classes5.dex */
public interface UBiXIconAdListener {
    void onAdClicked();

    void onAdClosed();

    void onAdExposeFailed(AdError adError);

    void onAdExposed();

    void onAdLoadFailed(AdError adError);

    void onAdLoadSucceed();
}
