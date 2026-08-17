package com.ubix.ssp.ad.g;

import com.ubix.ssp.open.AdError;

/* loaded from: classes5.dex */
public interface j {
    void a(boolean z2, String str, int i2, String str2, AdError adError);

    void onAdClosed();

    void onAdExposed();

    void onAdLoadSucceed();

    void onError(AdError adError);

    void onVideoCached();

    void onVideoClicked();

    void onVideoPlayCompleted();

    void onVideoPlayStarted();

    void onVideoRewarded();
}
