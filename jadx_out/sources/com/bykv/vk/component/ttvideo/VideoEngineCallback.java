package com.bykv.vk.component.ttvideo;

import com.bykv.vk.component.ttvideo.utils.Error;

/* loaded from: classes3.dex */
public interface VideoEngineCallback {
    public static final int AFTER_FIRST_FRAME = 1;
    public static final int BEFORE_FIRST_FRAME = 0;
    public static final int BUFFERING_TYPE_DECODER = 1;
    public static final int BUFFERING_TYPE_NET = 0;

    void onBufferEnd(int i2);

    void onBufferStart(int i2, int i3, int i4);

    void onBufferingUpdate(TTVideoEngine tTVideoEngine, int i2);

    void onCompletion(TTVideoEngine tTVideoEngine);

    void onError(Error error);

    void onLoadStateChanged(TTVideoEngine tTVideoEngine, int i2);

    void onMDLHitCache(String str, long j2);

    void onPlaybackStateChanged(TTVideoEngine tTVideoEngine, int i2);

    void onPrepare(TTVideoEngine tTVideoEngine);

    void onPrepared(TTVideoEngine tTVideoEngine);

    void onRenderSeekComplete(int i2);

    void onRenderStart(TTVideoEngine tTVideoEngine);

    void onRetry(int i2);

    void onUseMDLCacheEnd();

    void onVideoSizeChanged(TTVideoEngine tTVideoEngine, int i2, int i3);
}
