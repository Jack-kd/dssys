package com.sigmob.sdk.videoplayer;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.os.Handler;
import android.view.Surface;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.logger.SigmobLog;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/* loaded from: classes5.dex */
public class j extends i implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {

    /* renamed from: f, reason: collision with root package name */
    private static final String f39099f = "VideoPlayerMediaSystem";

    /* renamed from: e, reason: collision with root package name */
    public MediaPlayer f39100e;

    /* renamed from: g, reason: collision with root package name */
    private boolean f39101g;

    public j(h hVar) {
        super(hVar);
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void a() {
        Handler handler = this.f39096b;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.t
            @Override // java.lang.Runnable
            public final void run() throws IllegalStateException {
                this.f39113b.o();
            }
        });
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void b() {
        c();
        this.f39101g = true;
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void c() {
        MediaPlayer mediaPlayer;
        if (this.f39101g && (mediaPlayer = this.f39100e) != null && this.f39095a != null) {
            this.f39101g = false;
            mediaPlayer.setSurface(new Surface(this.f39095a));
            return;
        }
        f();
        this.f39097c = new Handler();
        Handler iOHandler = ThreadPoolFactory.BackgroundThreadPool.getInstance().getIOHandler();
        this.f39096b = iOHandler;
        iOHandler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.r
            @Override // java.lang.Runnable
            public final void run() throws IllegalStateException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                this.f39110b.p();
            }
        });
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void d() {
        Handler handler = this.f39096b;
        if (handler == null || this.f39100e == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.q
            @Override // java.lang.Runnable
            public final void run() throws IllegalStateException {
                this.f39109b.n();
            }
        });
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public boolean e() {
        MediaPlayer mediaPlayer = this.f39100e;
        if (mediaPlayer == null) {
            return false;
        }
        return mediaPlayer.isPlaying();
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void f() {
        final MediaPlayer mediaPlayer;
        Handler handler = this.f39096b;
        if (handler == null || (mediaPlayer = this.f39100e) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.z
            @Override // java.lang.Runnable
            public final void run() {
                this.f39123b.a(mediaPlayer);
            }
        });
        this.f39100e = null;
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public long g() {
        if (this.f39100e == null) {
            return 0L;
        }
        return r0.getCurrentPosition();
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public int h() {
        MediaPlayer mediaPlayer = this.f39100e;
        if (mediaPlayer == null) {
            return 0;
        }
        mediaPlayer.getVideoWidth();
        return 0;
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public int i() {
        MediaPlayer mediaPlayer = this.f39100e;
        if (mediaPlayer == null) {
            return 0;
        }
        mediaPlayer.getVideoHeight();
        return 0;
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public long j() {
        if (this.f39100e == null) {
            return 0L;
        }
        return r0.getDuration();
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, final int i2) {
        Handler handler = this.f39097c;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.s
            @Override // java.lang.Runnable
            public final void run() {
                this.f39111b.a(i2);
            }
        });
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        Handler handler = this.f39097c;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.v
            @Override // java.lang.Runnable
            public final void run() {
                this.f39115b.l();
            }
        });
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, final int i2, final int i3) {
        Handler handler = this.f39097c;
        if (handler == null) {
            return false;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.A
            @Override // java.lang.Runnable
            public final void run() {
                this.f38978b.c(i2, i3);
            }
        });
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, final int i2, final int i3) {
        Handler handler = this.f39097c;
        if (handler != null && this.f39098d != null) {
            handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.y
                @Override // java.lang.Runnable
                public final void run() {
                    this.f39120b.b(i2, i3);
                }
            });
        }
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        Handler handler = this.f39097c;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f39116b.m();
            }
        });
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        Handler handler = this.f39097c;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f39108b.k();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        if (this.f39098d == null) {
            return;
        }
        SigmobLog.d("onSurfaceTextureAvailable() called with: surface = [" + surfaceTexture + "], width = [" + i2 + "], height = [" + i3 + "]");
        SurfaceTexture surfaceTexture2 = this.f39095a;
        if (surfaceTexture2 != null) {
            this.f39098d.setSurfaceTexture(surfaceTexture2);
        } else {
            this.f39095a = surfaceTexture;
            c();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        SigmobLog.d("onSurfaceTextureDestroyed() called with: surface = [" + surfaceTexture + "]");
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
        SigmobLog.d("onSurfaceTextureSizeChanged() called with: surface = [" + surfaceTexture + "], width = [" + i2 + "], height = [" + i3 + "]");
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, final int i2, final int i3) {
        Handler handler = this.f39097c;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.x
            @Override // java.lang.Runnable
            public final void run() {
                this.f39117b.a(i2, i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(float f2) {
        MediaPlayer mediaPlayer = this.f39100e;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setVolume(f2, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        h hVar = this.f39098d;
        if (hVar == null) {
            return;
        }
        hVar.q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        h hVar = this.f39098d;
        if (hVar == null) {
            return;
        }
        hVar.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        if (this.f39098d == null) {
            return;
        }
        SigmobLog.d("VideoPlayerMediaSystem mediaPlayer onPrepared [" + hashCode() + "] ");
        this.f39098d.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f39100e;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.pause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() throws IllegalStateException {
        if (this.f39100e == null) {
            return;
        }
        SigmobLog.d("VideoPlayerMediaSystem mediaPlayer start [" + hashCode() + "] ");
        this.f39100e.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() throws IllegalStateException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            g videoPlayerDataSource = this.f39098d.getVideoPlayerDataSource();
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f39100e = mediaPlayer;
            mediaPlayer.setAudioStreamType(3);
            this.f39100e.setLooping(videoPlayerDataSource.f39094e);
            this.f39100e.setOnPreparedListener(this);
            this.f39100e.setOnCompletionListener(this);
            this.f39100e.setOnBufferingUpdateListener(this);
            this.f39100e.setScreenOnWhilePlaying(true);
            this.f39100e.setOnSeekCompleteListener(this);
            this.f39100e.setOnErrorListener(this);
            this.f39100e.setOnInfoListener(this);
            this.f39100e.setOnVideoSizeChangedListener(this);
            MediaPlayer.class.getDeclaredMethod("setDataSource", String.class, Map.class).invoke(this.f39100e, videoPlayerDataSource.a().toString(), videoPlayerDataSource.f39093d);
            this.f39100e.prepareAsync();
            if (this.f39095a != null) {
                this.f39101g = false;
                this.f39100e.setSurface(new Surface(this.f39095a));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            this.f39097c.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.u
                @Override // java.lang.Runnable
                public final void run() {
                    this.f39114b.q();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        h hVar = this.f39098d;
        if (hVar == null) {
            return;
        }
        hVar.a(0, 0);
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void a(final float f2) {
        Handler handler = this.f39096b;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.C
            @Override // java.lang.Runnable
            public final void run() {
                this.f38983b.c(f2);
            }
        });
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void b(float f2) {
        MediaPlayer mediaPlayer = this.f39100e;
        if (mediaPlayer == null) {
            return;
        }
        PlaybackParams playbackParams = mediaPlayer.getPlaybackParams();
        playbackParams.setSpeed(f2);
        this.f39100e.setPlaybackParams(playbackParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2) {
        h hVar = this.f39098d;
        if (hVar == null) {
            return;
        }
        hVar.setBufferProgress(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i2, int i3) {
        h hVar = this.f39098d;
        if (hVar == null) {
            return;
        }
        hVar.b(i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(int i2, int i3) {
        h hVar = this.f39098d;
        if (hVar == null) {
            return;
        }
        hVar.a(i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, int i3) {
        h hVar = this.f39098d;
        if (hVar == null) {
            return;
        }
        hVar.c(i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(long j2) throws IllegalStateException {
        try {
            MediaPlayer mediaPlayer = this.f39100e;
            if (mediaPlayer == null) {
                return;
            }
            mediaPlayer.seekTo((int) j2);
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void a(final long j2) {
        Handler handler = this.f39096b;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.B
            @Override // java.lang.Runnable
            public final void run() throws IllegalStateException {
                this.f38981b.b(j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MediaPlayer mediaPlayer) {
        mediaPlayer.reset();
        mediaPlayer.setSurface(null);
        mediaPlayer.release();
        this.f39096b = null;
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void a(Surface surface) {
        SigmobLog.d("setSurface() called with: surface = [" + surface + "]");
        MediaPlayer mediaPlayer = this.f39100e;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setSurface(surface);
    }

    @Override // com.sigmob.sdk.videoplayer.i
    public void a(boolean z2) {
        MediaPlayer mediaPlayer = this.f39100e;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setLooping(z2);
    }
}
