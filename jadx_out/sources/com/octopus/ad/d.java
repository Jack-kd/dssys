package com.octopus.ad;

import android.annotation.SuppressLint;
import android.content.res.AssetFileDescriptor;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.badge.BadgeDrawable;
import com.octopus.ad.c;
import com.octopus.ad.internal.e.h;
import com.octopus.ad.internal.p;
import com.octopus.ad.internal.q;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.internal.video.VideoStateListener;
import java.io.FileDescriptor;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public class d extends TextureView implements MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener, com.octopus.ad.internal.e.c {

    /* renamed from: A, reason: collision with root package name */
    private a f33887A;

    /* renamed from: B, reason: collision with root package name */
    private int f33888B;

    /* renamed from: a, reason: collision with root package name */
    public com.octopus.ad.internal.e.b f33889a;

    /* renamed from: b, reason: collision with root package name */
    protected MediaPlayer f33890b;

    /* renamed from: c, reason: collision with root package name */
    protected c.b f33891c;

    /* renamed from: d, reason: collision with root package name */
    private final com.octopus.ad.internal.e.a f33892d;

    /* renamed from: e, reason: collision with root package name */
    private final com.octopus.ad.internal.b.f f33893e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f33894f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f33895g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f33896h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f33897i;

    /* renamed from: j, reason: collision with root package name */
    private int f33898j;

    /* renamed from: k, reason: collision with root package name */
    private int f33899k;

    /* renamed from: l, reason: collision with root package name */
    private int f33900l;

    /* renamed from: m, reason: collision with root package name */
    private int f33901m;

    /* renamed from: n, reason: collision with root package name */
    private int f33902n;

    /* renamed from: o, reason: collision with root package name */
    private int f33903o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f33904p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f33905q;

    /* renamed from: r, reason: collision with root package name */
    private boolean f33906r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f33907s;

    /* renamed from: t, reason: collision with root package name */
    private h f33908t;

    /* renamed from: u, reason: collision with root package name */
    private VideoStateListener f33909u;

    /* renamed from: v, reason: collision with root package name */
    private com.octopus.ad.b.a f33910v;

    /* renamed from: w, reason: collision with root package name */
    private com.octopus.ad.b.a f33911w;

    /* renamed from: x, reason: collision with root package name */
    private String f33912x;

    /* renamed from: y, reason: collision with root package name */
    private Handler f33913y;

    /* renamed from: z, reason: collision with root package name */
    private Runnable f33914z;

    public enum a {
        NRF_NONE,
        NRF_START,
        NRF_PAUSE
    }

    public d(com.octopus.ad.internal.e.b bVar) {
        super(bVar.a());
        this.f33895g = false;
        this.f33896h = false;
        this.f33897i = false;
        this.f33903o = -1;
        this.f33904p = false;
        this.f33905q = false;
        this.f33906r = true;
        this.f33907s = false;
        this.f33887A = a.NRF_NONE;
        this.f33891c = c.b.FIT_CENTER;
        this.f33888B = 0;
        this.f33889a = bVar;
        com.octopus.ad.internal.e.a aVar = bVar.f34842a;
        this.f33892d = aVar;
        com.octopus.ad.internal.b.f fVar = bVar.f34843b;
        this.f33893e = fVar;
        if (fVar != null) {
            this.f33894f = fVar.N();
        }
        if (aVar != null) {
            aVar.setAdVideoView(this);
            if (this.f33894f) {
                return;
            }
            this.f33909u = aVar.getVideoStateListener();
        }
    }

    private void p() {
        if (this.f33890b != null) {
            e();
            return;
        }
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.f33890b = mediaPlayer;
        mediaPlayer.setOnVideoSizeChangedListener(this);
        setSurfaceTextureListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (this.f33911w == null) {
            com.octopus.ad.b.a aVar = new com.octopus.ad.b.a(10000L, 50L);
            this.f33911w = aVar;
            aVar.a(new com.octopus.ad.b.b() { // from class: com.octopus.ad.d.4
                @Override // com.octopus.ad.b.b
                public void a(long j2) {
                }

                @Override // com.octopus.ad.b.b
                public void b() {
                }

                @Override // com.octopus.ad.b.b
                public void a() {
                    if (d.this.f33910v != null) {
                        d.this.f33910v.c();
                        return;
                    }
                    d dVar = d.this;
                    if (dVar.f33889a == null || !dVar.f33892d.d()) {
                        return;
                    }
                    d.this.r();
                }
            });
        }
        this.f33911w.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        if (this.f33896h) {
            return;
        }
        this.f33896h = true;
        if (this.f33889a != null && this.f33892d.d() && this.f33910v == null) {
            if (this.f33903o <= 0) {
                this.f33903o = 10;
                this.f33904p = true;
            }
            this.f33892d.a(this.f33903o, this.f33889a.g(), this.f33889a.h());
        }
    }

    private void s() throws IllegalStateException {
        this.f33913y = new Handler();
        this.f33914z = new Runnable() { // from class: com.octopus.ad.d.5
            @Override // java.lang.Runnable
            public void run() {
                MediaPlayer mediaPlayer = d.this.f33890b;
                if (mediaPlayer == null || !mediaPlayer.isPlaying() || d.this.f33890b.getDuration() <= 0) {
                    return;
                }
                int duration = d.this.f33890b.getDuration();
                int currentPosition = d.this.f33890b.getCurrentPosition();
                com.octopus.ad.d.b.f.a("OctopusAd", "currentPosition:" + currentPosition + ServiceReference.DELIMITER + duration);
                int i2 = currentPosition / 1000;
                int i3 = i2 == duration / TTAdConstant.INIT_LOCAL_FAIL_CODE ? 1 : i2 == duration / 2000 ? 2 : i2 == (duration * 3) / TTAdConstant.INIT_LOCAL_FAIL_CODE ? 3 : 0;
                if (i3 > 0 && d.this.f33893e != null) {
                    d.this.f33893e.c(i3);
                }
                com.octopus.ad.d.b.f.a("OctopusAd", "video progress:" + i3);
                d.this.t();
            }
        };
        a(new MediaPlayer.OnPreparedListener() { // from class: com.octopus.ad.d.6
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) throws IllegalStateException {
                d.this.setScalableType(c.b.FIT_CENTER);
                d.this.f33903o = mediaPlayer.getDuration() / 1000;
                int unused = d.this.f33903o;
                if (d.this.f33905q) {
                    com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, "Video start called!");
                    d.this.c();
                    d.this.f33887A = a.NRF_START;
                    if (d.this.f33893e != null) {
                        d.this.f33893e.ah();
                    }
                    if (d.this.f33909u != null) {
                        d.this.f33909u.onVideoStart();
                    }
                    if (d.this.f33892d != null) {
                        d.this.f33892d.m();
                    }
                    d.this.t();
                } else {
                    d.this.f33887A = a.NRF_PAUSE;
                }
                if (d.this.f33903o <= 0) {
                    Log.e("OctopusAd_Video", "Video Play Time = 0");
                    if (d.this.f33892d != null) {
                        d.this.f33892d.b(80202);
                    }
                }
            }
        });
    }

    private void setDataSource(@NonNull AssetFileDescriptor assetFileDescriptor) throws IllegalStateException, IOException, IllegalArgumentException {
        a(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        assetFileDescriptor.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        Handler handler = this.f33913y;
        if (handler == null || this.f33914z == null) {
            return;
        }
        handler.removeCallbacksAndMessages(null);
        this.f33913y.postDelayed(this.f33914z, 1000L);
    }

    @Override // com.octopus.ad.internal.e.c
    public com.octopus.ad.internal.e.b getAdWebView() {
        return this.f33889a;
    }

    @Override // com.octopus.ad.internal.e.c
    public int getCreativeHeight() {
        return this.f33901m;
    }

    public int getCreativeLeft() {
        return this.f33898j;
    }

    public int getCreativeTop() {
        return this.f33899k;
    }

    @Override // com.octopus.ad.internal.e.c
    public int getCreativeWidth() {
        return this.f33900l;
    }

    public int getCurrentPosition() {
        return this.f33890b.getCurrentPosition();
    }

    public int getDuration() {
        return this.f33890b.getDuration();
    }

    public int getRefreshInterval() {
        return this.f33902n;
    }

    public int getVideoHeight() {
        return this.f33890b.getVideoHeight();
    }

    public String getVideoUrl() {
        return this.f33912x;
    }

    public int getVideoWidth() {
        return this.f33890b.getVideoWidth();
    }

    @Override // com.octopus.ad.internal.e.c
    public View getView() {
        return this;
    }

    @Override // com.octopus.ad.internal.e.c
    public void l() {
        if (this.f33892d != null) {
            com.octopus.ad.internal.b.f fVar = this.f33893e;
            if (fVar != null) {
                this.f33907s = fVar.T();
            }
            this.f33908t = new h(this, this.f33907s, new h.a() { // from class: com.octopus.ad.d.8
                @Override // com.octopus.ad.internal.e.h.a
                public void a(View view, com.octopus.ad.a.d dVar) {
                    d.this.a(dVar);
                }
            });
            if (this.f33894f) {
                this.f33892d.e(this);
            } else {
                this.f33892d.d(this);
                this.f33892d.a(this, this.f33906r);
            }
            this.f33892d.c(this);
            this.f33892d.f(this);
            com.octopus.ad.internal.e.b bVar = this.f33889a;
            if (bVar != null && bVar.d()) {
                if (this.f33892d.getMediaType() == p.INTERSTITIAL || this.f33892d.getMediaType() == p.FULLSCREEN) {
                    this.f33892d.a(this.f33889a.g(), this.f33889a.h(), this);
                } else if (this.f33892d.getMediaType() == p.REWARD) {
                    this.f33892d.a(this.f33903o, this.f33889a.g(), Math.min(this.f33889a.h(), this.f33903o));
                }
                this.f33892d.setAdWebView(this.f33889a);
                this.f33892d.a(this);
            }
            if (this.f33889a == null || !this.f33892d.d()) {
                return;
            }
            q();
        }
    }

    public void m() {
        if (this.f33904p) {
            com.octopus.ad.b.a aVar = this.f33910v;
            if (aVar != null) {
                aVar.b();
                return;
            }
            return;
        }
        if (this.f33897i || this.f33887A != a.NRF_START) {
            return;
        }
        b();
        com.octopus.ad.b.a aVar2 = this.f33910v;
        if (aVar2 != null) {
            aVar2.b();
        }
        com.octopus.ad.internal.b.f fVar = this.f33893e;
        if (fVar != null) {
            fVar.ai();
        }
        VideoStateListener videoStateListener = this.f33909u;
        if (videoStateListener != null) {
            videoStateListener.onVideoPause();
        }
        this.f33887A = a.NRF_PAUSE;
    }

    public void n() {
        if (this.f33904p) {
            com.octopus.ad.b.a aVar = this.f33910v;
            if (aVar != null) {
                aVar.c();
                return;
            }
            return;
        }
        if (this.f33897i || this.f33887A != a.NRF_PAUSE) {
            return;
        }
        c();
        com.octopus.ad.b.a aVar2 = this.f33910v;
        if (aVar2 != null) {
            aVar2.c();
        }
        VideoStateListener videoStateListener = this.f33909u;
        if (videoStateListener != null) {
            videoStateListener.onVideoResume();
        }
        this.f33887A = a.NRF_START;
    }

    @Override // com.octopus.ad.internal.e.c
    public void o() throws IllegalStateException {
        k();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() throws IllegalStateException {
        super.onDetachedFromWindow();
        if (this.f33890b == null) {
            return;
        }
        if (a()) {
            d();
        }
        f();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        Surface surface = new Surface(surfaceTexture);
        MediaPlayer mediaPlayer = this.f33890b;
        if (mediaPlayer != null) {
            mediaPlayer.setSurface(surface);
            h();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        h hVar = this.f33908t;
        return hVar != null ? hVar.onTouch(this, motionEvent) : super.onTouchEvent(motionEvent);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3) {
    }

    @Override // android.view.TextureView, android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        b(getWindowVisibility(), i2);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        b(i2, getVisibility());
    }

    public void setAssetData(@NonNull String str) throws IllegalStateException, IOException, IllegalArgumentException {
        setDataSource(getContext().getAssets().openFd(str));
    }

    public void setCountDownTimer(com.octopus.ad.b.a aVar) {
        this.f33910v = aVar;
    }

    public void setCreativeLeft(int i2) {
        this.f33898j = i2;
    }

    public void setCreativeTop(int i2) {
        this.f33899k = i2;
    }

    public void setLooping(boolean z2) {
        MediaPlayer mediaPlayer = this.f33890b;
        if (mediaPlayer != null) {
            mediaPlayer.setLooping(z2);
        }
    }

    public void setOnCompletionListener(@Nullable MediaPlayer.OnCompletionListener onCompletionListener) {
        this.f33890b.setOnCompletionListener(onCompletionListener);
    }

    public void setOnErrorListener(@Nullable MediaPlayer.OnErrorListener onErrorListener) {
        this.f33890b.setOnErrorListener(onErrorListener);
    }

    public void setOnInfoListener(@Nullable MediaPlayer.OnInfoListener onInfoListener) {
        this.f33890b.setOnInfoListener(onInfoListener);
    }

    public void setOpt(int i2) {
        this.f33888B = i2;
    }

    public void setRawData(@RawRes int i2) throws IllegalStateException, IOException, IllegalArgumentException {
        setDataSource(getResources().openRawResourceFd(i2));
    }

    public void setRefreshInterval(int i2) {
        this.f33902n = i2;
    }

    public void setScalableType(c.b bVar) {
        this.f33891c = bVar;
        a(getVideoWidth(), getVideoHeight());
    }

    public void b() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f33890b;
        if (mediaPlayer != null) {
            mediaPlayer.pause();
        }
    }

    public void c() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f33890b;
        if (mediaPlayer != null) {
            mediaPlayer.start();
        }
    }

    public void d() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f33890b;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
        }
    }

    public void e() {
        this.f33890b.reset();
    }

    public void f() {
        e();
        Handler handler = this.f33913y;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f33913y = null;
        }
        this.f33914z = null;
        this.f33890b.release();
        this.f33890b = null;
    }

    public boolean g() {
        boolean z2 = this.f33906r;
        this.f33906r = !z2;
        if (z2) {
            a(1.0f, 1.0f);
        } else {
            a(0.0f, 0.0f);
        }
        return this.f33906r;
    }

    public void h() {
        com.octopus.ad.internal.b.f fVar;
        if (TextUtils.isEmpty(this.f33912x)) {
            return;
        }
        try {
            com.octopus.ad.internal.d.h hVarB = q.a().b();
            if (hVarB == null || !hVarB.b(this.f33912x)) {
                setDataSource(this.f33912x);
            } else {
                setDataSource(hVarB.a(this.f33912x));
            }
            s();
            com.octopus.ad.internal.e.a aVar = this.f33892d;
            if (aVar == null || aVar.getMediaType() == p.SPLASH || (fVar = this.f33893e) == null) {
                return;
            }
            fVar.a(this.f33892d.g(), new com.octopus.ad.a() { // from class: com.octopus.ad.d.7
                @Override // com.octopus.ad.a
                public void a(boolean z2) {
                    if (d.this.f33892d.getAdDispatcher() != null) {
                        d.this.f33892d.getAdDispatcher().a(z2);
                    }
                }
            });
        } catch (Exception e2) {
            Log.e("OctopusAd_Video", "video play fail：" + e2.getMessage());
            com.octopus.ad.internal.e.a aVar2 = this.f33892d;
            if (aVar2 != null) {
                aVar2.b(80202);
            }
        }
    }

    public void i() {
        com.octopus.ad.internal.e.b bVar = this.f33889a;
        if (bVar != null) {
            bVar.p();
        }
        this.f33895g = true;
    }

    @Override // com.octopus.ad.internal.e.c
    public boolean j() {
        return this.f33895g;
    }

    @Override // com.octopus.ad.internal.e.c
    public void k() throws IllegalStateException {
        d();
        com.octopus.ad.b.a aVar = this.f33911w;
        if (aVar != null) {
            aVar.d();
        }
        ViewUtil.removeChildFromParent(this);
    }

    public void setDataSource(@NonNull String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        p();
        this.f33890b.setDataSource(str);
    }

    private void b(int i2, int i3) {
        this.f33905q = i2 == 0 && i3 == 0;
    }

    public void setDataSource(@NonNull FileDescriptor fileDescriptor) throws IllegalStateException, IOException, IllegalArgumentException {
        p();
        this.f33890b.setDataSource(fileDescriptor);
    }

    private void a(int i2, int i3) {
        Matrix matrixA;
        if (i2 == 0 || i3 == 0 || (matrixA = new c(new c.C0719c(getWidth(), getHeight()), new c.C0719c(i2, i3)).a(this.f33891c)) == null) {
            return;
        }
        setTransform(matrixA);
    }

    public void a(@NonNull FileDescriptor fileDescriptor, long j2, long j3) throws IllegalStateException, IOException, IllegalArgumentException {
        p();
        this.f33890b.setDataSource(fileDescriptor, j2, j3);
    }

    public void a(@Nullable MediaPlayer.OnPreparedListener onPreparedListener) throws IllegalStateException {
        this.f33890b.setOnPreparedListener(onPreparedListener);
        this.f33890b.prepareAsync();
        VideoStateListener videoStateListener = this.f33909u;
        if (videoStateListener != null) {
            videoStateListener.onVideoReady();
        }
    }

    public boolean a() {
        return this.f33890b.isPlaying();
    }

    public void a(float f2, float f3) {
        MediaPlayer mediaPlayer = this.f33890b;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(f2, f3);
        }
    }

    private void a(HashMap map) {
        String str;
        if (map.isEmpty() || !map.containsKey("SCALE") || (str = (String) map.get("SCALE")) == null) {
            return;
        }
        switch (str) {
            case "RIGHT_TOP_CROP":
                this.f33891c = c.b.RIGHT_TOP_CROP;
                break;
            case "RIGHT_BOTTOM":
                this.f33891c = c.b.RIGHT_BOTTOM;
                break;
            case "RIGHT_CENTER":
                this.f33891c = c.b.RIGHT_CENTER;
                break;
            case "LEFT_TOP":
                this.f33891c = c.b.LEFT_TOP;
                break;
            case "RIGHT_CENTER_CROP":
                this.f33891c = c.b.RIGHT_CENTER_CROP;
                break;
            case "LEFT_TOP_CROP":
                this.f33891c = c.b.LEFT_TOP_CROP;
                break;
            case "END_INSIDE":
                this.f33891c = c.b.END_INSIDE;
                break;
            case "LEFT_BOTTOM":
                this.f33891c = c.b.LEFT_BOTTOM;
                break;
            case "LEFT_CENTER":
                this.f33891c = c.b.LEFT_CENTER;
                break;
            case "CENTER_CROP":
                this.f33891c = c.b.CENTER_CROP;
                break;
            case "CENTER_BOTTOM_CROP":
                this.f33891c = c.b.CENTER_BOTTOM_CROP;
                break;
            case "CENTER_TOP_CROP":
                this.f33891c = c.b.CENTER_TOP_CROP;
                break;
            case "LEFT_CENTER_CROP":
                this.f33891c = c.b.LEFT_CENTER_CROP;
                break;
            case "FIT_END":
                this.f33891c = c.b.FIT_END;
                break;
            case "START_INSIDE":
                this.f33891c = c.b.START_INSIDE;
                break;
            case "RIGHT_BOTTOM_CROP":
                this.f33891c = c.b.RIGHT_BOTTOM_CROP;
                break;
            case "FIT_START":
                this.f33891c = c.b.FIT_START;
                break;
            case "FIT_CENTER":
                this.f33891c = c.b.FIT_CENTER;
                break;
            case "RIGHT_TOP":
                this.f33891c = c.b.RIGHT_TOP;
                break;
            case "CENTER_BOTTOM":
                this.f33891c = c.b.CENTER_BOTTOM;
                break;
            case "CENTER_TOP":
                this.f33891c = c.b.CENTER_TOP;
                break;
            case "CENTER_INSIDE":
                this.f33891c = c.b.CENTER_INSIDE;
                break;
            case "LEFT_BOTTOM_CROP":
                this.f33891c = c.b.LEFT_BOTTOM_CROP;
                break;
            case "CENTER":
                this.f33891c = c.b.CENTER;
                break;
            case "FIT_XY":
                this.f33891c = c.b.FIT_XY;
                break;
            default:
                this.f33891c = c.b.FIT_CENTER;
                break;
        }
    }

    public void a(String str) {
        int creativeWidth;
        int creativeHeight;
        if (com.octopus.ad.internal.c.p.a(str)) {
            i();
            com.octopus.ad.internal.e.a aVar = this.f33892d;
            if (aVar != null) {
                aVar.b(80200);
                return;
            }
            return;
        }
        if (!str.endsWith(".jpg") && !str.endsWith(".jpeg") && !str.endsWith(".png")) {
            com.octopus.ad.internal.e.b bVar = this.f33889a;
            if (bVar != null) {
                this.f33901m = bVar.getCreativeHeight();
                this.f33900l = this.f33889a.getCreativeWidth();
                this.f33899k = this.f33889a.f();
                this.f33898j = this.f33889a.e();
                this.f33902n = this.f33889a.s();
            }
            try {
                new URI(str);
                this.f33891c = c.b.FIT_CENTER;
                com.octopus.ad.internal.e.b bVar2 = this.f33889a;
                if (bVar2 != null) {
                    a(bVar2.b());
                    this.f33906r = this.f33889a.i() && q.a().h();
                }
                this.f33912x = str;
                p();
                float fG = q.a().g();
                if (this.f33906r) {
                    a(0.0f, 0.0f);
                } else if (fG > 0.0f) {
                    a(fG, fG);
                } else {
                    a(1.0f, 1.0f);
                }
                float fP = q.a().p();
                float fQ = q.a().q();
                if (getCreativeWidth() == 1 && getCreativeHeight() == 1) {
                    creativeHeight = -1;
                    creativeWidth = -1;
                } else {
                    creativeWidth = (int) ((getCreativeWidth() * fP) + 0.5f);
                    creativeHeight = (int) ((getCreativeHeight() * fQ) + 0.5f);
                }
                if (getCreativeLeft() == 0 && getCreativeTop() == 0) {
                    setLayoutParams(new FrameLayout.LayoutParams(creativeWidth, creativeHeight, 17));
                } else {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(creativeWidth, creativeHeight, BadgeDrawable.TOP_START);
                    layoutParams.setMargins((int) ((getCreativeLeft() * fP) + 0.5f), (int) ((getCreativeTop() * fQ) + 0.5f), 0, 0);
                    setLayoutParams(layoutParams);
                }
                setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.octopus.ad.d.1
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public void onCompletion(MediaPlayer mediaPlayer) {
                        d.this.f33897i = true;
                        if (d.this.f33893e != null) {
                            d.this.f33893e.aj();
                        }
                        if (d.this.f33892d != null && !d.this.f33894f) {
                            d.this.f33892d.o();
                        }
                        if (d.this.f33909u != null) {
                            d.this.f33909u.onVideoCompleted();
                        }
                        com.octopus.ad.internal.e.b bVar3 = d.this.f33889a;
                        if ((bVar3 == null || bVar3.a(1)) && (d.this.f33892d instanceof com.octopus.ad.internal.e.f) && ((com.octopus.ad.internal.e.f) d.this.f33892d).getAdImplementation() != null) {
                            ((e) ((com.octopus.ad.internal.e.f) d.this.f33892d).getAdImplementation()).f();
                        }
                        if (d.this.f33892d != null) {
                            d.this.f33892d.s();
                        }
                    }
                });
                setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.octopus.ad.d.2
                    @Override // android.media.MediaPlayer.OnInfoListener
                    public boolean onInfo(MediaPlayer mediaPlayer, int i2, int i3) {
                        if (i2 != 3 && i2 != 702) {
                            if (d.this.f33910v == null || !d.this.f33910v.f()) {
                                return false;
                            }
                            d.this.f33910v.b();
                            if (d.this.f33909u != null) {
                                d.this.f33909u.onVideoStart();
                            }
                            if (d.this.f33892d != null) {
                                d.this.f33892d.a(d.this);
                            }
                            d.this.q();
                            return false;
                        }
                        if (d.this.f33892d != null && d.this.f33892d.getAdDispatcher() != null) {
                            d.this.r();
                            d.this.f33892d.i();
                            d.this.f33892d.getAdDispatcher().d();
                        }
                        if (d.this.f33910v != null) {
                            d.this.f33910v.c();
                        }
                        if (d.this.f33911w == null) {
                            return false;
                        }
                        d.this.f33911w.e();
                        return false;
                    }
                });
                setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.octopus.ad.d.3
                    @Override // android.media.MediaPlayer.OnErrorListener
                    public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) throws IllegalStateException {
                        Log.e("OctopusAd_Video", "MediaPlayer OnErrorListener: what: " + i2 + " extra: " + i3);
                        if (i2 == -38) {
                            d.this.c();
                        } else if (d.this.f33892d != null) {
                            d.this.f33892d.b(80202);
                        }
                        if (d.this.f33909u == null) {
                            return false;
                        }
                        d.this.f33909u.onVideoError(i2, i3);
                        return false;
                    }
                });
                return;
            } catch (NullPointerException | URISyntaxException unused) {
                i();
                com.octopus.ad.internal.e.a aVar2 = this.f33892d;
                if (aVar2 != null) {
                    aVar2.b(80201);
                    return;
                }
                return;
            }
        }
        i();
        com.octopus.ad.internal.e.a aVar3 = this.f33892d;
        if (aVar3 != null) {
            aVar3.b(80201);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.octopus.ad.a.d dVar) {
        com.octopus.ad.internal.e.a aVar = this.f33892d;
        if (aVar == null || aVar.getAdDispatcher() == null) {
            return;
        }
        com.octopus.ad.internal.e.a aVar2 = this.f33892d;
        aVar2.f34750i++;
        if (aVar2.g()) {
            this.f33892d.getAdDispatcher().b();
        }
        com.octopus.ad.internal.b.f fVar = this.f33893e;
        if (fVar != null) {
            fVar.a(this.f33892d.getOpensNativeBrowser());
            this.f33893e.a(this, this.f33888B, this.f33892d.g(), dVar);
        }
    }
}
