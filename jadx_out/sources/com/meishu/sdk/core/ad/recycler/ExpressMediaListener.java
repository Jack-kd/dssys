package com.meishu.sdk.core.ad.recycler;

/* loaded from: classes4.dex */
public interface ExpressMediaListener {
    void onVideoCompleted();

    void onVideoError(int i2, String str);

    void onVideoLoaded();

    void onVideoPause();

    void onVideoResume();

    void onVideoStart();
}
