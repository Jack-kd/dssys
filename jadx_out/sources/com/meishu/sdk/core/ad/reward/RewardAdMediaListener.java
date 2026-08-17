package com.meishu.sdk.core.ad.reward;

/* loaded from: classes4.dex */
public interface RewardAdMediaListener {
    void onSkippedVideo();

    void onVideoCompleted();

    void onVideoError();

    void onVideoPause();

    void onVideoResume();

    void onVideoStart();
}
