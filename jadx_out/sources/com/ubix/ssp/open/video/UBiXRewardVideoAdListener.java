package com.ubix.ssp.open.video;

import com.ubix.ssp.open.AdError;

/* loaded from: classes5.dex */
public interface UBiXRewardVideoAdListener {
    void onAdClosed();

    void onAdExposed();

    void onAdLoadSucceed();

    void onError(AdError adError);

    void onVideoCached();

    void onVideoClicked();

    void onVideoPlayCompleted();

    void onVideoPlayStarted();

    void onVideoRewardVerify(boolean z2, UBiXRewardInfo uBiXRewardInfo);

    void onVideoRewarded();

    void onVideoSkipped();
}
