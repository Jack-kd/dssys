package com.ubix.ssp.ad.e.b0;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.ubix.ssp.ad.e.a0.u;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes5.dex */
public class c extends com.ubix.ssp.ad.e.b0.b implements MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnVideoSizeChangedListener {

    /* renamed from: g, reason: collision with root package name */
    private MediaPlayer f46600g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f46601h;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f46602a;

        public a(int i2) {
            this.f46602a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f() == null || c.this.f().getMediaPlayerCallback() == null) {
                return;
            }
            c.this.f().getMediaPlayerCallback().a(this.f46602a);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f() == null || c.this.f().getMediaPlayerCallback() == null) {
                return;
            }
            c.this.f().getMediaPlayerCallback().b();
            c.this.f().getMediaPlayerCallback().b(9090, 9090);
        }
    }

    /* renamed from: com.ubix.ssp.ad.e.b0.c$c, reason: collision with other inner class name */
    public class RunnableC0816c implements Runnable {
        public RunnableC0816c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f() == null || c.this.f().getMediaPlayerCallback() == null) {
                return;
            }
            c.this.f().getMediaPlayerCallback().a(false);
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f46606a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f46607b;

        public d(int i2, int i3) {
            this.f46606a = i2;
            this.f46607b = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f() != null) {
                c.this.f().getMediaPlayerCallback().b(this.f46606a, this.f46607b);
            }
        }
    }

    public class e implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.b0.a f46609a;

        public e(com.ubix.ssp.ad.e.b0.a aVar) {
            this.f46609a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() throws IllegalStateException, IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            try {
                if (c.this.f46600g == null) {
                    return;
                }
                Method declaredMethod = MediaPlayer.class.getDeclaredMethod("setDataSource", String.class, Map.class);
                declaredMethod.setAccessible(true);
                c.this.f46600g.reset();
                declaredMethod.invoke(c.this.f46600g, this.f46609a.a().toString(), this.f46609a.f46592d);
                c.this.f46600g.prepareAsync();
                c.this.f46601h = true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class f implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ SurfaceTexture f46611a;

        public f(SurfaceTexture surfaceTexture) {
            this.f46611a = surfaceTexture;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c cVar = c.this;
                SurfaceTexture surfaceTexture = this.f46611a;
                cVar.f46594a = surfaceTexture;
                if (surfaceTexture != null) {
                    cVar.a(new Surface(c.this.f46594a));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            cVar.onError(cVar.f46600g, -1, -1);
        }
    }

    public class h implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ SurfaceHolder f46614a;

        public h(SurfaceHolder surfaceHolder) {
            this.f46614a = surfaceHolder;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (c.this.f46600g != null) {
                    c.this.f46600g.setDisplay(this.f46614a);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class i implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f46616a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f46617b;

        public i(int i2, int i3) {
            this.f46616a = i2;
            this.f46617b = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            cVar.onVideoSizeChanged(cVar.f46600g, this.f46616a, this.f46617b);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = c.this;
            cVar.onError(cVar.f46600g, -1, -1);
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c.this.f46600g = new MediaPlayer();
                c.this.f46600g.setAudioStreamType(3);
                c.this.f46600g.setVolume(0.0f, 0.0f);
                c.this.f46600g.setOnPreparedListener(c.this);
                c.this.f46600g.setOnCompletionListener(c.this);
                c.this.f46600g.setOnBufferingUpdateListener(c.this);
                c.this.f46600g.setScreenOnWhilePlaying(true);
                c.this.f46600g.setOnSeekCompleteListener(c.this);
                c.this.f46600g.setOnErrorListener(c.this);
                c.this.f46600g.setOnInfoListener(c.this);
                c.this.f46600g.setOnVideoSizeChangedListener(c.this);
                if (c.this.f().f46654h == null || c.this.f().f46654h.a() == null || c.this.f46600g == null || c.this.f46601h) {
                    return;
                }
                c cVar = c.this;
                cVar.a(cVar.f().f46654h);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f46600g == null || c.this.f() == null || !c.this.f().f()) {
                return;
            }
            try {
                c.this.f46600g.start();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f() != null) {
                c.this.f().k();
            }
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() throws IllegalStateException {
            try {
                if (c.this.f46600g != null) {
                    c.this.f46600g.pause();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class o implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f46624a;

        public o(long j2) {
            this.f46624a = j2;
        }

        @Override // java.lang.Runnable
        public void run() throws IllegalStateException {
            try {
                if (c.this.f46600g != null) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        c.this.f46600g.seekTo((int) this.f46624a, 2);
                    } else {
                        c.this.f46600g.seekTo((int) this.f46624a);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class p implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f46626a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ float f46627b;

        public p(float f2, float f3) {
            this.f46626a = f2;
            this.f46627b = f3;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            try {
                if (c.this.f46600g != null) {
                    c.this.f46600g.setVolume(this.f46626a, this.f46627b);
                    str = "---setVolume";
                } else {
                    str = "--mediaPlayer---null";
                }
                u.b(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class q implements Runnable {
        public q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f() == null || c.this.f().getMediaPlayerCallback() == null) {
                return;
            }
            c.this.f().getMediaPlayerCallback().a();
        }
    }

    public class r implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f46630a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f46631b;

        public r(int i2, int i3) {
            this.f46630a = i2;
            this.f46631b = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f() == null || c.this.f().getMediaPlayerCallback() == null) {
                return;
            }
            c.this.f().getMediaPlayerCallback().a(this.f46630a, this.f46631b);
        }
    }

    public class s implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f46633a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f46634b;

        public s(int i2, int i3) {
            this.f46633a = i2;
            this.f46634b = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f() == null || c.this.f().getMediaPlayerCallback() == null) {
                return;
            }
            c.this.f().getMediaPlayerCallback().c(this.f46633a, this.f46634b);
        }
    }

    public c(com.ubix.ssp.ad.e.b0.e eVar) {
        super(eVar);
        this.f46601h = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.ubix.ssp.ad.e.b0.e f() {
        return this.f46599f.get();
    }

    @Override // com.ubix.ssp.ad.e.b0.b
    public long a() {
        if (this.f46600g != null) {
            try {
                return r0.getCurrentPosition();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return -1L;
    }

    @Override // com.ubix.ssp.ad.e.b0.b
    public long b() {
        if (this.f46600g != null) {
            return r0.getDuration();
        }
        return 0L;
    }

    @Override // com.ubix.ssp.ad.e.b0.b
    public boolean c() {
        return this.f46601h;
    }

    @Override // com.ubix.ssp.ad.e.b0.b
    public void d() {
        try {
            Handler handler = this.f46597d;
            if (handler != null) {
                handler.post(new n());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.e.b0.b
    public void e() {
        MediaPlayer mediaPlayer;
        u.b("notifyVideoRelease " + hashCode());
        try {
            if (this.f46597d == null || this.f46596c == null || (mediaPlayer = this.f46600g) == null) {
                return;
            }
            this.f46594a = null;
            this.f46595b = null;
            mediaPlayer.reset();
            mediaPlayer.release();
            HandlerThread handlerThread = this.f46596c;
            if (handlerThread != null) {
                handlerThread.quitSafely();
                this.f46596c = null;
            }
            this.f46597d = null;
            this.f46600g = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void g() {
        e();
        HandlerThread handlerThread = new HandlerThread("UbiXVideo");
        this.f46596c = handlerThread;
        handlerThread.start();
        this.f46597d = new Handler(this.f46596c.getLooper());
        this.f46598e = new Handler();
        this.f46597d.post(new k());
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i2) {
        this.f46598e.post(new a(i2));
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.f46598e.post(new RunnableC0816c());
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
        this.f46598e.post(new r(i2, i3));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i2, int i3) {
        u.a("onInfo what= " + i2 + ";extra= " + i3);
        this.f46598e.post(new d(i2, i3));
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.f46598e.post(new q());
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        this.f46598e.post(new b());
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        SurfaceTexture surfaceTexture2 = this.f46594a;
        if (surfaceTexture2 == null) {
            this.f46594a = surfaceTexture;
            g();
            Handler handler = this.f46597d;
            if (handler != null) {
                handler.post(new f(surfaceTexture));
                return;
            }
            return;
        }
        try {
            if (Build.VERSION.SDK_INT < 26 || surfaceTexture2.isReleased()) {
                this.f46594a = surfaceTexture;
            }
            if (this.f46594a != null) {
                a(new Surface(this.f46594a));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.f46594a = null;
        this.f46601h = false;
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3) {
        this.f46598e.post(new s(i2, i3));
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        this.f46597d.post(new i(i3, i4));
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        SurfaceHolder surfaceHolder2 = this.f46595b;
        if (surfaceHolder2 == null) {
            this.f46595b = surfaceHolder;
            g();
            Handler handler = this.f46597d;
            if (handler != null) {
                handler.post(new h(surfaceHolder));
                return;
            }
            return;
        }
        if (surfaceHolder2 != surfaceHolder) {
            this.f46595b = surfaceHolder;
            MediaPlayer mediaPlayer = this.f46600g;
            if (mediaPlayer != null) {
                mediaPlayer.setDisplay(surfaceHolder);
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        u.b("surfaceDestroyed");
        this.f46595b = null;
        this.f46601h = false;
    }

    @Override // com.ubix.ssp.ad.e.b0.b
    public void a(float f2, float f3) {
        if (this.f46597d == null) {
            u.b("---mMediaHandler null");
        } else {
            this.f46598e.post(new p(f2, f3));
        }
    }

    @Override // com.ubix.ssp.ad.e.b0.b
    public void a(long j2) {
        Handler handler = this.f46597d;
        if (handler != null) {
            handler.post(new o(j2));
        }
    }

    public void a(Surface surface) {
        try {
            this.f46600g.setSurface(surface);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.e.b0.b
    public synchronized void a(com.ubix.ssp.ad.e.b0.a aVar) {
        Handler handler = this.f46597d;
        if (handler == null) {
            return;
        }
        handler.post(new e(aVar));
    }

    @Override // com.ubix.ssp.ad.e.b0.b
    public void a(boolean z2) {
        if (z2) {
            try {
                a(0.0f, 0.0f);
            } catch (Exception e2) {
                e2.printStackTrace();
                Handler handler = this.f46598e;
                if (handler != null) {
                    handler.post(new m());
                    return;
                }
                return;
            }
        }
        this.f46597d.post(new l());
    }
}
