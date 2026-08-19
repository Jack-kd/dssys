package com.kwad.components.offline.api.core.adWaynePlayer;

import android.view.Surface;
import android.view.SurfaceHolder;

/* loaded from: classes4.dex */
public interface IAdWaynePlayerPlayModule {

    public interface OnBufferingUpdateListener {
        void onBufferingUpdate(int i2);
    }

    public interface OnCompletionListener {
        void onCompletion();
    }

    public interface OnErrorListener {
        boolean onError(int i2, int i3);
    }

    public interface OnInfoListener {
        boolean onInfo(int i2, int i3);
    }

    public interface OnPreparedListener {
        void onPrepared();
    }

    public interface OnPreparingListener {
        void onPreparing();
    }

    public interface OnSeekCompleteListener {
        void onSeekComplete();
    }

    public interface OnVideoSizeChangedListener {
        void onVideoSizeChanged(int i2, int i3);
    }

    public interface OnVseReportListener {
        void onVseReport(String str, String str2);
    }

    int getAudioSessionId();

    String getCurrentPlayingUrl();

    long getCurrentPosition();

    long getDuration();

    int getVideoHeight();

    int getVideoWidth();

    boolean isLooping();

    boolean isPlaying();

    boolean isWaynePlayerReady();

    void pause();

    boolean prepareAsync();

    void release();

    void reset();

    void seekTo(long j2);

    void setAudioStreamType(int i2);

    void setClickCoordForOpaque(float f2, float f3);

    void setDataSource(String str, boolean z2);

    void setDisplay(SurfaceHolder surfaceHolder);

    void setLooping(boolean z2);

    void setOnBufferingUpdateListener(OnBufferingUpdateListener onBufferingUpdateListener);

    void setOnCompletionListener(OnCompletionListener onCompletionListener);

    void setOnErrorListener(OnErrorListener onErrorListener);

    void setOnInfoListener(OnInfoListener onInfoListener);

    void setOnPreparedListener(OnPreparedListener onPreparedListener);

    void setOnSeekCompleteListener(OnSeekCompleteListener onSeekCompleteListener);

    void setOnVideoSizeChangedListener(OnVideoSizeChangedListener onVideoSizeChangedListener);

    void setOnVseReportListener(OnVseReportListener onVseReportListener);

    void setScreenOnWhilePlaying(boolean z2);

    void setSpeed(float f2);

    void setSurface(Surface surface);

    void setVolume(float f2, float f3);

    void start();

    void stop();
}
