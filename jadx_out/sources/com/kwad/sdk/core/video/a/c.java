package com.kwad.sdk.core.video.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.TimedText;
import android.net.Uri;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.annotation.NonNull;
import java.io.FileDescriptor;
import java.util.Map;

/* loaded from: classes4.dex */
public interface c {

    public interface a {
        void br(int i2);
    }

    public interface b {
        void tK();
    }

    /* renamed from: com.kwad.sdk.core.video.a.c$c, reason: collision with other inner class name */
    public interface InterfaceC0617c {
        boolean o(int i2, int i3);
    }

    public interface d {
        boolean m(int i2, int i3);
    }

    public interface e {
        void a(c cVar);
    }

    public interface f {
        void xt();
    }

    public interface g {
        void tL();
    }

    public interface h {
        void a(TimedText timedText);
    }

    public interface i {
        void n(int i2, int i3);
    }

    void a(a aVar);

    void a(b bVar);

    void a(InterfaceC0617c interfaceC0617c);

    void a(f fVar);

    void a(g gVar);

    void a(h hVar);

    void a(i iVar);

    void b(@NonNull com.kwad.sdk.contentalliance.a.a.b bVar);

    void b(e eVar);

    void c(d dVar);

    int getAudioSessionId();

    String getCurrentPlayingUrl();

    long getCurrentPosition();

    String getDataSource();

    long getDuration();

    int getMediaPlayerType();

    int getVideoHeight();

    int getVideoWidth();

    boolean isLooping();

    boolean isPlaying();

    void pause();

    boolean prepareAsync();

    void release();

    void reset();

    void seekTo(long j2);

    void setAudioStreamType(int i2);

    void setDataSource(Context context, Uri uri);

    @TargetApi(14)
    void setDataSource(Context context, Uri uri, Map<String, String> map);

    void setDataSource(FileDescriptor fileDescriptor);

    void setDataSource(String str);

    void setDisplay(SurfaceHolder surfaceHolder);

    void setLooping(boolean z2);

    void setScreenOnWhilePlaying(boolean z2);

    void setSpeed(float f2);

    void setSurface(Surface surface);

    void setVolume(float f2, float f3);

    void start();

    void stop();

    boolean xJ();
}
