package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sigmob.sdk.videoplayer.C1383c;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: com.sigmob.sdk.base.views.c, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class SurfaceHolderCallbackC1291c extends RelativeLayout implements MediaPlayer.OnBufferingUpdateListener, SurfaceHolder.Callback {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36910a = "AdVideoPlayer";

    /* renamed from: b, reason: collision with root package name */
    private MediaPlayer f36911b;

    /* renamed from: c, reason: collision with root package name */
    private SurfaceHolder f36912c;

    /* renamed from: d, reason: collision with root package name */
    private SurfaceView f36913d;

    /* renamed from: e, reason: collision with root package name */
    private ImageView f36914e;

    /* renamed from: f, reason: collision with root package name */
    private String f36915f;

    /* renamed from: g, reason: collision with root package name */
    private int f36916g;

    /* renamed from: h, reason: collision with root package name */
    private int f36917h;

    /* renamed from: i, reason: collision with root package name */
    private int f36918i;

    /* renamed from: j, reason: collision with root package name */
    private a f36919j;

    /* renamed from: k, reason: collision with root package name */
    private MediaPlayer.OnPreparedListener f36920k;

    /* renamed from: l, reason: collision with root package name */
    private final ExecutorService f36921l;

    /* renamed from: m, reason: collision with root package name */
    private final Handler f36922m;

    /* renamed from: com.sigmob.sdk.base.views.c$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f36923a;

        static {
            int[] iArr = new int[a.values().length];
            f36923a = iArr;
            try {
                iArr[a.FIT_SCREEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36923a[a.FILL_SCREEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36923a[a.ORIGINAL_SIZE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f36923a[a.STRETCH_FILL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.sigmob.sdk.base.views.c$a */
    public enum a {
        FIT_SCREEN,
        FILL_SCREEN,
        ORIGINAL_SIZE,
        STRETCH_FILL
    }

    public SurfaceHolderCallbackC1291c(Context context) {
        super(context);
        this.f36915f = "";
        this.f36916g = 0;
        this.f36917h = 0;
        this.f36919j = a.FIT_SCREEN;
        this.f36921l = Executors.newSingleThreadExecutor();
        this.f36922m = new Handler(Looper.getMainLooper());
        a(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
    
        if (r2 > r5) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0051, code lost:
    
        r6.height = r1;
        r6.width = (int) (r4 * r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0058, code lost:
    
        r6.width = r0;
        r0 = (int) (r3 / r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005f, code lost:
    
        if (r2 > r5) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void h() {
        /*
            r9 = this;
            int r0 = r9.getMeasuredWidth()
            int r1 = r9.getMeasuredHeight()
            if (r0 == 0) goto L71
            if (r1 == 0) goto L71
            int r2 = r9.f36916g
            if (r2 <= 0) goto L71
            int r3 = r9.f36917h
            if (r3 > 0) goto L15
            goto L71
        L15:
            float r2 = (float) r2
            float r3 = (float) r3
            float r2 = r2 / r3
            float r3 = (float) r0
            float r4 = (float) r1
            float r5 = r3 / r4
            android.view.SurfaceView r6 = r9.f36913d
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            android.widget.RelativeLayout$LayoutParams r6 = (android.widget.RelativeLayout.LayoutParams) r6
            int[] r7 = com.sigmob.sdk.base.views.SurfaceHolderCallbackC1291c.AnonymousClass1.f36923a
            com.sigmob.sdk.base.views.c$a r8 = r9.f36919j
            int r8 = r8.ordinal()
            r7 = r7[r8]
            r8 = 1
            if (r7 == r8) goto L5d
            r8 = 2
            if (r7 == r8) goto L4d
            r2 = 3
            if (r7 == r2) goto L3c
            r6.width = r0
            r6.height = r1
            goto L62
        L3c:
            int r2 = r9.f36916g
            int r0 = java.lang.Math.min(r2, r0)
            r6.width = r0
            int r0 = r9.f36917h
            int r0 = java.lang.Math.min(r0, r1)
        L4a:
            r6.height = r0
            goto L62
        L4d:
            int r5 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r5 <= 0) goto L58
        L51:
            r6.height = r1
            float r4 = r4 * r2
            int r0 = (int) r4
            r6.width = r0
            goto L62
        L58:
            r6.width = r0
            float r3 = r3 / r2
            int r0 = (int) r3
            goto L4a
        L5d:
            int r5 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r5 <= 0) goto L51
            goto L58
        L62:
            r0 = 13
            r6.addRule(r0)
            r0 = 0
            r6.leftMargin = r0
            r6.topMargin = r0
            android.view.SurfaceView r0 = r9.f36913d
            r0.setLayoutParams(r6)
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.views.SurfaceHolderCallbackC1291c.h():void");
    }

    private void i() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        String str = this.f36915f;
        if (str == null || str.isEmpty()) {
            return;
        }
        try {
            this.f36911b.reset();
            this.f36911b.setDataSource(this.f36915f);
            this.f36911b.prepareAsync();
        } catch (Exception e2) {
            com.sigmob.sdk.base.utils.k.f(f36910a, "play: error = " + e2.getMessage(), new Object[0]);
        }
    }

    public void d() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f36911b;
        if (mediaPlayer != null) {
            mediaPlayer.start();
        }
        C1383c.f(getContext());
    }

    public void e() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f36911b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.stop();
    }

    public void f() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f36911b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.pause();
    }

    public boolean g() {
        MediaPlayer mediaPlayer = this.f36911b;
        return mediaPlayer != null && mediaPlayer.isPlaying();
    }

    public ImageView getBackgroundImageView() {
        return this.f36914e;
    }

    public a getScaleMode() {
        return this.f36919j;
    }

    public int getVideoHeight() {
        return this.f36917h;
    }

    public int getVideoWidth() {
        return this.f36916g;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i2) {
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (z2) {
            h();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        h();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        ImageView imageView = this.f36914e;
        if (imageView == null) {
            return;
        }
        imageView.setBackgroundColor(i2);
    }

    public void setBackgroundImage(Bitmap bitmap) {
        ImageView imageView = this.f36914e;
        if (imageView == null || bitmap == null) {
            return;
        }
        imageView.setImageBitmap(bitmap);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        ImageView imageView = this.f36914e;
        if (imageView == null) {
            return;
        }
        imageView.setImageResource(i2);
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.f36920k = onPreparedListener;
    }

    public void setOnSeekCompleteListener(MediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.f36911b.setOnSeekCompleteListener(onSeekCompleteListener);
    }

    public void setScaleMode(a aVar) {
        if (this.f36919j == aVar) {
            return;
        }
        this.f36919j = aVar;
        requestLayout();
    }

    public void setVideoPath(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.f36915f = str;
        if (this.f36911b == null) {
            return;
        }
        i();
    }

    public void setVolume(float f2) {
        MediaPlayer mediaPlayer = this.f36911b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setVolume(f2, f2);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        requestLayout();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        MediaPlayer mediaPlayer = this.f36911b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setDisplay(surfaceHolder);
        String str = this.f36915f;
        if (str == null || str.isEmpty()) {
            return;
        }
        i();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        MediaPlayer mediaPlayer = this.f36911b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setDisplay(null);
    }

    public void a() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f36911b;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            return;
        }
        this.f36911b.pause();
        this.f36918i = this.f36911b.getCurrentPosition();
        C1383c.g(getContext());
    }

    public void b() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f36911b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.seekTo(this.f36918i);
        this.f36911b.start();
        C1383c.f(getContext());
    }

    public void c() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f36911b;
        if (mediaPlayer == null) {
            return;
        }
        if (mediaPlayer.isPlaying()) {
            this.f36911b.stop();
        }
        this.f36911b.reset();
        this.f36911b.release();
        this.f36911b = null;
        this.f36921l.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final String str) {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                mediaMetadataRetriever.setDataSource(str);
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(0L, 2);
                if (frameAtTime == null) {
                    com.sigmob.sdk.base.utils.k.e(f36910a, "extractVideoFirstFrame: Failed to retrieve the first frame of the video(%s).", str);
                } else {
                    com.sigmob.sdk.base.blurkit.a.a(getContext());
                    final Bitmap bitmapA = com.sigmob.sdk.base.blurkit.a.a().a(frameAtTime, 25, 1.0f);
                    this.f36922m.post(new Runnable() { // from class: com.sigmob.sdk.base.views.L
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f36680b.a(bitmapA, str);
                        }
                    });
                }
                androidx.core.content.res.a.a(mediaMetadataRetriever);
            } finally {
            }
        } catch (Exception e2) {
            com.sigmob.sdk.base.utils.k.f(f36910a, "extractVideoFirstFrame: error = " + e2.getMessage(), new Object[0]);
        }
    }

    public void a(int i2) throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f36911b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.seekTo(i2);
    }

    public void a(int i2, int i3) {
        this.f36916g = i2;
        this.f36917h = i3;
    }

    private void a(Context context) {
        this.f36914e = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f36914e.setLayoutParams(layoutParams);
        this.f36914e.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f36914e.setBackgroundColor(-16777216);
        addView(this.f36914e);
        this.f36913d = new SurfaceView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(13);
        this.f36913d.setLayoutParams(layoutParams2);
        addView(this.f36913d);
        SurfaceHolder holder = this.f36913d.getHolder();
        this.f36912c = holder;
        holder.addCallback(this);
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.f36911b = mediaPlayer;
        mediaPlayer.setLooping(true);
        this.f36911b.setOnBufferingUpdateListener(this);
        this.f36911b.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.sigmob.sdk.base.views.K
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer2) {
                this.f36679b.a(mediaPlayer2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Bitmap bitmap, String str) {
        this.f36914e.setImageBitmap(bitmap);
        com.sigmob.sdk.base.utils.k.b(f36910a, "extractVideoFirstFrame: Successfully captured the first frame of the video(%s).", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void a(android.media.MediaPlayer r5) {
        /*
            r4 = this;
            int r0 = r5.getVideoWidth()
            r4.f36916g = r0
            int r0 = r5.getVideoHeight()
            r4.f36917h = r0
            int[] r0 = com.sigmob.sdk.base.views.SurfaceHolderCallbackC1291c.AnonymousClass1.f36923a
            com.sigmob.sdk.base.views.c$a r1 = r4.f36919j
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r1 = 1
            if (r0 == r1) goto L29
            r2 = 2
            if (r0 == r2) goto L23
            r3 = 3
            if (r0 == r3) goto L23
            r2 = 4
            if (r0 == r2) goto L29
            goto L2e
        L23:
            android.media.MediaPlayer r0 = r4.f36911b
            r0.setVideoScalingMode(r2)
            goto L2e
        L29:
            android.media.MediaPlayer r0 = r4.f36911b
            r0.setVideoScalingMode(r1)
        L2e:
            r4.requestLayout()
            r4.invalidate()
            android.media.MediaPlayer$OnPreparedListener r0 = r4.f36920k
            if (r0 != 0) goto L39
            return
        L39:
            r0.onPrepared(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.views.SurfaceHolderCallbackC1291c.a(android.media.MediaPlayer):void");
    }

    private void a(final String str) {
        if (str == null || str.isEmpty() || str.startsWith("http://") || str.startsWith("https://")) {
            return;
        }
        this.f36921l.execute(new Runnable() { // from class: com.sigmob.sdk.base.views.M
            @Override // java.lang.Runnable
            public final void run() {
                this.f36683b.b(str);
            }
        });
    }

    public void a(boolean z2) {
        MediaPlayer mediaPlayer = this.f36911b;
        if (mediaPlayer == null) {
            return;
        }
        float f2 = z2 ? 0.0f : 1.0f;
        mediaPlayer.setVolume(f2, f2);
    }
}
