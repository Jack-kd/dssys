package com.kwad.components.core.h;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.kwad.components.offline.api.core.imageplayer.IImagePlayer;
import com.kwad.components.offline.api.core.video.listener.OfflineMediaPlayStateListener;
import java.util.List;

/* loaded from: classes4.dex */
public final class d implements IImagePlayer {
    private c SK = new c();

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void destroy() {
        this.SK.destroy();
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final FrameLayout getImagePlayerView(Context context) {
        return this.SK.getImagePlayerView(context);
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void pause() {
        this.SK.pause();
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void play() {
        this.SK.play();
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void prepareToPlay() {
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void registerMediaPlayStateListener(OfflineMediaPlayStateListener offlineMediaPlayStateListener) {
        this.SK.c(com.kwad.components.core.offline.b.c.d.a(offlineMediaPlayStateListener));
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void resume() {
        this.SK.resume();
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void setDuration(long j2) {
        this.SK.H(j2 * 1000);
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void setEnableCache(boolean z2) {
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void setHorizontalGravity(int i2) {
        this.SK.setHorizontalGravity(i2);
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void setImageResize(int i2) {
        if (i2 == 0) {
            this.SK.setImageScaleType(ImageView.ScaleType.FIT_CENTER);
            return;
        }
        if (i2 == 1) {
            this.SK.setImageScaleType(ImageView.ScaleType.CENTER_CROP);
        } else if (i2 == 2) {
            this.SK.setImageScaleType(ImageView.ScaleType.FIT_XY);
        } else {
            if (i2 != 3) {
                return;
            }
            this.SK.setImageScaleType(ImageView.ScaleType.CENTER);
        }
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void setRadius(float f2, float f3, float f4, float f5) {
        this.SK.setRadius(f2, f3, f4, f5);
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void setSpeed(float f2) {
        this.SK.setSpeed(f2);
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void setURLs(List<String> list) {
        this.SK.setURLs(list);
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void setVerticalGravity(int i2) {
        this.SK.setVerticalGravity(i2);
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void stop() {
        this.SK.stop();
    }

    @Override // com.kwad.components.offline.api.core.imageplayer.IImagePlayer
    public final void unregisterMediaPlayStateListener(OfflineMediaPlayStateListener offlineMediaPlayStateListener) {
        this.SK.d(com.kwad.components.core.offline.b.c.d.a(offlineMediaPlayStateListener));
    }
}
