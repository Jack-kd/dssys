package com.byazt.um;

import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface eb {

    public interface hp {
        void onBufferEnd(eb ebVar, int i2);

        void onBufferStart(eb ebVar, int i2, int i3, int i4);

        void onBufferingUpdate(eb ebVar, int i2);

        void onCompletion(eb ebVar);

        void onError(eb ebVar, jx jxVar);

        void onMonitorLog(eb ebVar, JSONObject jSONObject, String str);

        void onPause(eb ebVar);

        void onPlayPositionUpdate(eb ebVar, long j2, long j3);

        void onPrepared(eb ebVar);

        void onRelease(eb ebVar);

        void onRenderStart(eb ebVar, long j2);

        void onResume(eb ebVar);

        void onSeekCompletion(eb ebVar, boolean z2);

        void onStart(eb ebVar);

        void onVideoSizeChanged(eb ebVar, int i2, int i3);
    }

    void addIVideoPlayerCallback(hp hpVar);

    int getBufferCount();

    String getCodec();

    long getCurrentPosition();

    SurfaceHolder getSurfaceHolder();

    SurfaceTexture getSurfaceTexture();

    long getTotalBufferTime();

    int getUpdateProgressInterval();

    long getVideoDuration();

    int getVideoHeight();

    int getVideoWidth();

    boolean isCompleted();

    boolean isFirstFrameSuccess();

    boolean isLooping();

    boolean isPaused();

    boolean isPlaying();

    boolean isPrepared();

    boolean isReleased();

    boolean isStarted();

    void pause();

    void play();

    void release();

    void removeIVideoPlayerCallback(hp hpVar);

    void reset();

    void restart();

    void seekTo(long j2);

    void setDataSource(zy zyVar);

    void setDisplay(SurfaceHolder surfaceHolder);

    void setLoop(boolean z2);

    void setPlaySpeedRatio(float f2);

    void setQuietPlay(boolean z2);

    void setSeekMode(int i2);

    void setSurface(SurfaceTexture surfaceTexture);

    void setSurfaceValid(boolean z2);

    void setUpdateProgressInterval(int i2);

    void start(boolean z2, long j2, boolean z3);

    void stop();
}
