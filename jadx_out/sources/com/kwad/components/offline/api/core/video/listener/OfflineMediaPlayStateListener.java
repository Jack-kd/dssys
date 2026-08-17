package com.kwad.components.offline.api.core.video.listener;

/* loaded from: classes4.dex */
public interface OfflineMediaPlayStateListener {
    void onMediaPlayCompleted();

    void onMediaPlayError(int i2, int i3);

    void onMediaPlayPaused();

    void onMediaPlayProgress(long j2, long j3);

    void onMediaPlayStart();

    void onMediaPlaying();

    void onMediaPrepared();

    void onMediaPreparing();
}
