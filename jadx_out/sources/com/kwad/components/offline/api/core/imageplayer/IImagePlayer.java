package com.kwad.components.offline.api.core.imageplayer;

import android.content.Context;
import android.widget.FrameLayout;
import com.kwad.components.offline.api.core.video.listener.OfflineMediaPlayStateListener;
import java.util.List;

/* loaded from: classes4.dex */
public interface IImagePlayer {
    void destroy();

    FrameLayout getImagePlayerView(Context context);

    void pause();

    void play();

    void prepareToPlay();

    void registerMediaPlayStateListener(OfflineMediaPlayStateListener offlineMediaPlayStateListener);

    void resume();

    void setDuration(long j2);

    void setEnableCache(boolean z2);

    void setHorizontalGravity(int i2);

    void setImageResize(int i2);

    void setRadius(float f2, float f3, float f4, float f5);

    void setSpeed(float f2);

    void setURLs(List<String> list);

    void setVerticalGravity(int i2);

    void stop();

    void unregisterMediaPlayStateListener(OfflineMediaPlayStateListener offlineMediaPlayStateListener);
}
