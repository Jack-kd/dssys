package com.byazt.jc;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.byazt.tw.a;
import com.bytedance.component.sdk.annotation.RequiresApi;
import com.sigmob.sdk.base.n;
import java.io.FileDescriptor;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

@com.byazt.kj.hp(hp = {0, 1, 692, 34})
/* loaded from: classes.dex */
public class l extends com.byazt.jc.hp {

    /* renamed from: a, reason: collision with root package name */
    public final Object f21305a;
    public volatile boolean eb;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.aa.hp f21306j;
    public final hp jx;

    /* renamed from: l, reason: collision with root package name */
    public final MediaPlayer f21307l;

    /* renamed from: w, reason: collision with root package name */
    public Surface f21308w;

    @com.byazt.kj.hp(hp = {0, 1, 692, 123})
    public static class hp implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {
        public final WeakReference<l> hp;

        public hp(l lVar) {
            this.hp = new WeakReference<>(lVar);
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i2) {
            try {
                l lVar = this.hp.get();
                if (lVar != null) {
                    lVar.hp(i2);
                }
            } catch (Throwable th) {
                com.byazt.qm.l.hp("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onBufferingUpdate error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            try {
                l lVar = this.hp.get();
                if (lVar != null) {
                    lVar.jx();
                }
            } catch (Throwable th) {
                com.byazt.qm.l.hp("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onCompletion error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
            try {
                l lVar = this.hp.get();
                if (lVar != null) {
                    if (lVar.hp(i2, i3)) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                com.byazt.qm.l.hp("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onError error: ", th);
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i2, int i3) {
            try {
                l lVar = this.hp.get();
                if (lVar != null) {
                    if (lVar.l(i2, i3)) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                com.byazt.qm.l.hp("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onInfo error: ", th);
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            try {
                l lVar = this.hp.get();
                if (lVar != null) {
                    lVar.l();
                }
            } catch (Throwable th) {
                com.byazt.qm.l.hp("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onPrepared error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            try {
                l lVar = this.hp.get();
                if (lVar != null) {
                    lVar.j();
                }
            } catch (Throwable th) {
                com.byazt.qm.l.hp("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onSeekComplete error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3) {
            try {
                l lVar = this.hp.get();
                if (lVar != null) {
                    lVar.hp(i2, i3, 1, 1);
                }
            } catch (Throwable th) {
                com.byazt.qm.l.hp("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onVideoSizeChanged error: ", th);
            }
        }
    }

    public l() {
        MediaPlayer mediaPlayer;
        Object obj = new Object();
        this.f21305a = obj;
        synchronized (obj) {
            mediaPlayer = new MediaPlayer();
            this.f21307l = mediaPlayer;
        }
        hp(mediaPlayer);
        try {
            mediaPlayer.setAudioStreamType(3);
        } catch (Throwable th) {
            com.byazt.qm.l.hp("CSJ_VIDEO", "setAudioStreamType error: ", th);
        }
        this.jx = new hp(this);
        xs();
    }

    private void hp(MediaPlayer mediaPlayer) {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        try {
            Class<?> cls = Class.forName("android.media.MediaTimeProvider");
            Class<?> cls2 = Class.forName("android.media.SubtitleController");
            Class<?> cls3 = Class.forName("android.media.SubtitleController$Anchor");
            Object objNewInstance = cls2.getConstructor(Context.class, cls, Class.forName("android.media.SubtitleController$Listener")).newInstance(com.byazt.fw.l.getContext(), null, null);
            Field declaredField = cls2.getDeclaredField("mHandler");
            declaredField.setAccessible(true);
            try {
                declaredField.set(objNewInstance, new Handler());
                declaredField.setAccessible(false);
                mediaPlayer.getClass().getMethod("setSubtitleAnchor", cls2, cls3).invoke(mediaPlayer, objNewInstance, null);
            } catch (Throwable th) {
                try {
                    com.byazt.qm.l.hp("CSJ_VIDEO", "subtitleInstance error: ", th);
                } finally {
                    declaredField.setAccessible(false);
                }
            }
        } catch (Throwable th2) {
            com.byazt.qm.l.hp("CSJ_VIDEO", "setSubtitleController error: ", th2);
        }
    }

    private void u() {
        com.byazt.aa.hp hpVar = this.f21306j;
        if (hpVar != null) {
            try {
                hpVar.close();
            } catch (Throwable th) {
                com.byazt.qm.l.hp("CSJ_VIDEO", "releaseMediaDataSource error: ", th);
            }
            this.f21306j = null;
        }
    }

    private void vv() {
        try {
            Surface surface = this.f21308w;
            if (surface != null) {
                surface.release();
                this.f21308w = null;
            }
        } catch (Throwable unused) {
        }
    }

    private void xs() {
        this.f21307l.setOnPreparedListener(this.jx);
        this.f21307l.setOnBufferingUpdateListener(this.jx);
        this.f21307l.setOnCompletionListener(this.jx);
        this.f21307l.setOnSeekCompleteListener(this.jx);
        this.f21307l.setOnVideoSizeChangedListener(this.jx);
        this.f21307l.setOnErrorListener(this.jx);
        this.f21307l.setOnInfoListener(this.jx);
    }

    @Override // com.byazt.jc.jx
    public void a() throws Throwable {
        this.f21307l.stop();
    }

    @Override // com.byazt.jc.jx
    public long e() {
        try {
            return this.f21307l.getDuration();
        } catch (Throwable th) {
            com.byazt.qm.l.hp("CSJ_VIDEO", "getDuration error: ", th);
            return 0L;
        }
    }

    @Override // com.byazt.jc.jx
    public void eb() throws Throwable {
        this.f21307l.pause();
    }

    public void finalize() throws Throwable {
        super.finalize();
        vv();
    }

    @Override // com.byazt.jc.jx
    public void gu() throws Throwable {
        synchronized (this.f21305a) {
            try {
                if (!this.eb) {
                    this.f21307l.release();
                    this.eb = true;
                    vv();
                    u();
                    hp();
                    xs();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.jc.jx
    public void j(boolean z2) throws Throwable {
        MediaPlayer mediaPlayer = this.f21307l;
        if (mediaPlayer == null) {
            return;
        }
        if (z2) {
            mediaPlayer.setVolume(0.0f, 0.0f);
        } else {
            mediaPlayer.setVolume(1.0f, 1.0f);
        }
    }

    @Override // com.byazt.jc.jx
    public void jl() throws Throwable {
        try {
            this.f21307l.reset();
        } catch (Throwable th) {
            com.byazt.qm.l.hp("CSJ_VIDEO", "reset error: ", th);
        }
        u();
        hp();
        xs();
    }

    @Override // com.byazt.jc.jx
    public void jx(boolean z2) throws Throwable {
        this.f21307l.setLooping(z2);
    }

    @Override // com.byazt.jc.jx
    public int k() {
        MediaPlayer mediaPlayer = this.f21307l;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.byazt.jc.jx
    public void l(boolean z2) throws Throwable {
        this.f21307l.setScreenOnWhilePlaying(z2);
    }

    @Override // com.byazt.jc.jx
    public long q() {
        try {
            return this.f21307l.getCurrentPosition();
        } catch (Throwable th) {
            com.byazt.qm.l.hp("CSJ_VIDEO", "getCurrentPosition error: ", th);
            return 0L;
        }
    }

    @Override // com.byazt.jc.jx
    public void s() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f21307l;
        if (mediaPlayer != null) {
            mediaPlayer.prepareAsync();
        }
    }

    @Override // com.byazt.jc.jx
    public boolean v() {
        MediaPlayer mediaPlayer = this.f21307l;
        if (mediaPlayer != null) {
            return mediaPlayer.isLooping();
        }
        return false;
    }

    @Override // com.byazt.jc.jx
    public void w() throws Throwable {
        this.f21307l.start();
    }

    @Override // com.byazt.jc.jx
    public int zy() {
        MediaPlayer mediaPlayer = this.f21307l;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.byazt.jc.jx
    public void w(boolean z2) {
        try {
            MediaPlayer mediaPlayer = this.f21307l;
            if (mediaPlayer != null) {
                mediaPlayer.setLooping(z2);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.jc.jx
    public void hp(SurfaceHolder surfaceHolder) throws Throwable {
        synchronized (this.f21305a) {
            try {
                if (!this.eb && surfaceHolder != null && surfaceHolder.getSurface() != null && this.hp) {
                    this.f21307l.setDisplay(surfaceHolder);
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.jc.jx
    @TargetApi(14)
    public void hp(Surface surface) {
        vv();
        this.f21308w = surface;
        this.f21307l.setSurface(surface);
    }

    @Override // com.byazt.jc.jx
    @RequiresApi(api = 23)
    public void hp(com.byazt.fw.hp hpVar) throws Throwable {
        this.f21307l.setPlaybackParams(this.f21307l.getPlaybackParams().setSpeed(hpVar.hp()));
    }

    @Override // com.byazt.jc.jx
    public void hp(String str) throws Throwable {
        Uri uri = Uri.parse(str);
        if (n.f36463z.equalsIgnoreCase(uri.getScheme())) {
            this.f21307l.setDataSource(uri.getPath());
        } else {
            this.f21307l.setDataSource(str);
        }
    }

    @Override // com.byazt.jc.jx
    public void hp(FileDescriptor fileDescriptor) throws Throwable {
        this.f21307l.setDataSource(fileDescriptor);
    }

    @Override // com.byazt.jc.jx
    @RequiresApi(api = 23)
    public synchronized void hp(a aVar, com.byazt.tw.l lVar) {
        this.f21306j = com.byazt.aa.hp.hp(com.byazt.fw.l.getContext(), lVar, aVar);
        com.byazt.va.jx.hp(aVar);
        this.f21307l.setDataSource(this.f21306j);
    }

    @Override // com.byazt.jc.jx
    public void hp(long j2, int i2) throws Throwable {
        if (Build.VERSION.SDK_INT < 26) {
            this.f21307l.seekTo((int) j2);
            return;
        }
        if (i2 == 0) {
            this.f21307l.seekTo((int) j2, 0);
            return;
        }
        if (i2 == 1) {
            this.f21307l.seekTo((int) j2, 1);
            return;
        }
        if (i2 == 2) {
            this.f21307l.seekTo((int) j2, 2);
        } else if (i2 == 3) {
            this.f21307l.seekTo((int) j2, 3);
        } else {
            this.f21307l.seekTo((int) j2);
        }
    }
}
