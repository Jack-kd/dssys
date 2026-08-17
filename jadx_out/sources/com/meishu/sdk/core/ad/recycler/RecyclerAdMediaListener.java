package com.meishu.sdk.core.ad.recycler;

/* loaded from: classes4.dex */
public interface RecyclerAdMediaListener {
    default void onProgressUpdate(long j2, long j3) {
    }

    void onVideoCompleted();

    void onVideoError();

    default void onVideoLoaded() {
    }

    void onVideoPause();

    void onVideoResume();

    void onVideoStart();
}
