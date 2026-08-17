package com.meishu.sdk.meishu_ad.view;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.meishu.sdk.core.safe.k;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.safe.m;
import com.meishu.sdk.core.utils.LogUtil;
import com.sigmob.sdk.base.common.C1244a;

/* loaded from: classes4.dex */
public class MeishuVideoTextureView extends TextureView {

    /* renamed from: a, reason: collision with root package name */
    public String f32687a;

    /* renamed from: b, reason: collision with root package name */
    public MediaPlayer f32688b;

    /* renamed from: c, reason: collision with root package name */
    public MediaPlayer.OnPreparedListener f32689c;

    /* renamed from: d, reason: collision with root package name */
    public MediaPlayer.OnCompletionListener f32690d;

    /* renamed from: e, reason: collision with root package name */
    public MediaPlayer.OnInfoListener f32691e;

    /* renamed from: f, reason: collision with root package name */
    public MediaPlayer.OnVideoSizeChangedListener f32692f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f32693g;

    /* renamed from: h, reason: collision with root package name */
    public Surface f32694h;

    /* renamed from: i, reason: collision with root package name */
    public int f32695i;

    /* renamed from: j, reason: collision with root package name */
    public int f32696j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f32697k;

    /* renamed from: l, reason: collision with root package name */
    public Surface f32698l;

    /* renamed from: m, reason: collision with root package name */
    public int f32699m;

    /* renamed from: n, reason: collision with root package name */
    public SurfaceTexture f32700n;

    /* renamed from: o, reason: collision with root package name */
    public TextureView.SurfaceTextureListener f32701o;

    public class a extends com.meishu.sdk.core.safe.h {
        public a() {
        }

        @Override // com.meishu.sdk.core.safe.h
        public void a(MediaPlayer mediaPlayer) {
            MeishuVideoTextureView meishuVideoTextureView = MeishuVideoTextureView.this;
            meishuVideoTextureView.f32693g = true;
            MediaPlayer.OnPreparedListener onPreparedListener = meishuVideoTextureView.f32689c;
            if (onPreparedListener != null) {
                onPreparedListener.onPrepared(mediaPlayer);
            }
        }
    }

    public class b extends com.meishu.sdk.core.safe.e {
        public b() {
        }

        @Override // com.meishu.sdk.core.safe.e
        public void a(MediaPlayer mediaPlayer) {
            MediaPlayer.OnCompletionListener onCompletionListener = MeishuVideoTextureView.this.f32690d;
            if (onCompletionListener != null) {
                onCompletionListener.onCompletion(mediaPlayer);
            }
        }
    }

    public class c extends com.meishu.sdk.core.safe.d {
        public c() {
        }

        @Override // com.meishu.sdk.core.safe.d
        public void a(MediaPlayer mediaPlayer, int i2) {
            LogUtil.d(MeishuVideoTextureView.this.f32687a, "video buffer: " + i2);
        }
    }

    public class d extends com.meishu.sdk.core.safe.g {
        public d() {
        }

        @Override // com.meishu.sdk.core.safe.g
        public boolean safeOnInfo(MediaPlayer mediaPlayer, int i2, int i3) {
            LogUtil.d(MeishuVideoTextureView.this.f32687a, "media player info: " + i2 + " " + i3);
            MediaPlayer.OnInfoListener onInfoListener = MeishuVideoTextureView.this.f32691e;
            if (onInfoListener != null) {
                return onInfoListener.onInfo(mediaPlayer, i2, i3);
            }
            return true;
        }
    }

    public class e extends k {
        public e() {
        }

        @Override // com.meishu.sdk.core.safe.k
        public void safeOnVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3) {
            int measuredWidth;
            int measuredHeight;
            MeishuVideoTextureView meishuVideoTextureView = MeishuVideoTextureView.this;
            meishuVideoTextureView.f32695i = i2;
            meishuVideoTextureView.f32696j = i3;
            MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener = meishuVideoTextureView.f32692f;
            if (onVideoSizeChangedListener != null) {
                onVideoSizeChangedListener.onVideoSizeChanged(mediaPlayer, i2, i3);
            }
            MeishuVideoTextureView meishuVideoTextureView2 = MeishuVideoTextureView.this;
            if (meishuVideoTextureView2.f32698l != null) {
                return;
            }
            LogUtil.i(meishuVideoTextureView2.f32687a, "" + i2 + " " + i3);
            if (MeishuVideoTextureView.this.getParent() instanceof View) {
                measuredWidth = ((View) MeishuVideoTextureView.this.getParent()).getMeasuredWidth();
                measuredHeight = ((View) MeishuVideoTextureView.this.getParent()).getMeasuredHeight();
            } else {
                measuredWidth = MeishuVideoTextureView.this.getMeasuredWidth();
                measuredHeight = MeishuVideoTextureView.this.getMeasuredHeight();
            }
            Matrix matrixA = MeishuVideoTextureView.this.a(measuredWidth, measuredHeight);
            MeishuVideoTextureView meishuVideoTextureView3 = MeishuVideoTextureView.this;
            if (!meishuVideoTextureView3.f32697k) {
                meishuVideoTextureView3.a(measuredWidth, measuredHeight, matrixA);
            } else {
                meishuVideoTextureView3.setTransform(matrixA);
                MeishuVideoTextureView.this.postInvalidate();
            }
        }
    }

    public class f extends m {
        public f() {
        }

        @Override // com.meishu.sdk.core.safe.m
        public void safeOnSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
            try {
                MeishuVideoTextureView meishuVideoTextureView = MeishuVideoTextureView.this;
                meishuVideoTextureView.f32700n = surfaceTexture;
                if (meishuVideoTextureView.f32688b != null) {
                    meishuVideoTextureView.f32694h = new Surface(surfaceTexture);
                    MeishuVideoTextureView meishuVideoTextureView2 = MeishuVideoTextureView.this;
                    meishuVideoTextureView2.f32688b.setSurface(meishuVideoTextureView2.f32694h);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.meishu.sdk.core.safe.m
        public boolean safeOnSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            return false;
        }

        @Override // com.meishu.sdk.core.safe.m
        public void safeOnSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
        }

        @Override // com.meishu.sdk.core.safe.m
        public void safeOnSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    public class g extends l {
        public g() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            MeishuVideoTextureView.this.requestLayout();
        }
    }

    public class h extends ViewOutlineProvider {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f32709a;

        public h(MeishuVideoTextureView meishuVideoTextureView, int i2) {
            this.f32709a = i2;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            try {
                outline.setRoundRect(new Rect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight()), this.f32709a);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public MeishuVideoTextureView(Context context) {
        super(context);
        this.f32687a = getClass().getSimpleName();
        this.f32693g = false;
        this.f32697k = true;
        this.f32699m = 1;
        this.f32701o = new f();
        a();
    }

    public void a() {
        a(new MediaPlayer());
    }

    public boolean b() {
        try {
            MediaPlayer mediaPlayer = this.f32688b;
            if (mediaPlayer != null) {
                return mediaPlayer.isPlaying();
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public void c() {
        LogUtil.d(this.f32687a, C1244a.f35682j);
        MediaPlayer mediaPlayer = this.f32688b;
        if (mediaPlayer == null || !this.f32693g) {
            return;
        }
        try {
            mediaPlayer.pause();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d() {
        LogUtil.d(this.f32687a, "resume");
        try {
            MediaPlayer mediaPlayer = this.f32688b;
            if (mediaPlayer == null || !this.f32693g) {
                return;
            }
            mediaPlayer.start();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void e() {
        LogUtil.d(this.f32687a, "start");
        try {
            MediaPlayer mediaPlayer = this.f32688b;
            if (mediaPlayer == null || !this.f32693g) {
                return;
            }
            mediaPlayer.start();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public int getCurrentPosition() {
        try {
            MediaPlayer mediaPlayer = this.f32688b;
            if (mediaPlayer == null || !this.f32693g) {
                return 0;
            }
            return mediaPlayer.getCurrentPosition();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public int getDuration() {
        try {
            MediaPlayer mediaPlayer = this.f32688b;
            if (mediaPlayer == null || !this.f32693g) {
                return 0;
            }
            return mediaPlayer.getDuration();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public MediaPlayer getMediaPlayer() {
        return this.f32688b;
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int measuredWidth;
        int measuredHeight;
        super.onLayout(z2, i2, i3, i4, i5);
        if (z2) {
            if (getParent() instanceof View) {
                measuredWidth = ((View) getParent()).getMeasuredWidth();
                measuredHeight = ((View) getParent()).getMeasuredHeight();
            } else {
                measuredWidth = getMeasuredWidth();
                measuredHeight = getMeasuredHeight();
            }
            if (this.f32697k) {
                return;
            }
            a(measuredWidth, measuredHeight, a(measuredWidth, measuredHeight));
        }
    }

    @Override // android.view.TextureView, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
    }

    public void setDisplayMode(int i2) {
        if (i2 == 1 || i2 == 2) {
            this.f32699m = i2;
        }
    }

    public void setInitMute(boolean z2) {
        if (z2) {
            this.f32688b.setVolume(0.0f, 0.0f);
        } else {
            this.f32688b.setVolume(1.0f, 1.0f);
        }
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        if (this.f32688b != null) {
            this.f32690d = onCompletionListener;
        }
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        MediaPlayer mediaPlayer = this.f32688b;
        if (mediaPlayer != null) {
            mediaPlayer.setOnErrorListener(onErrorListener);
        }
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        if (this.f32688b != null) {
            this.f32691e = onInfoListener;
        }
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        if (this.f32688b != null) {
            this.f32689c = onPreparedListener;
        }
    }

    public void setOnVideoSizeChangedListener(MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.f32692f = onVideoSizeChangedListener;
    }

    public void setRadius(int i2) {
        try {
            setOutlineProvider(new h(this, i2));
            setClipToOutline(true);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setUseTransform(boolean z2) {
        this.f32697k = z2;
    }

    public void setVideoPath(String str) {
        MediaPlayer mediaPlayer = this.f32688b;
        if (mediaPlayer == null) {
            return;
        }
        try {
            mediaPlayer.setDataSource(str);
            this.f32688b.prepareAsync();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(MediaPlayer mediaPlayer) {
        this.f32688b = mediaPlayer;
        mediaPlayer.setAudioStreamType(3);
        this.f32688b.setScreenOnWhilePlaying(true);
        this.f32688b.setOnPreparedListener(new a());
        this.f32688b.setOnCompletionListener(new b());
        this.f32688b.setOnBufferingUpdateListener(new c());
        this.f32688b.setOnInfoListener(new d());
        this.f32688b.setOnVideoSizeChangedListener(new e());
        setSurfaceTextureListener(this.f32701o);
    }

    public MeishuVideoTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32687a = getClass().getSimpleName();
        this.f32693g = false;
        this.f32697k = true;
        this.f32699m = 1;
        this.f32701o = new f();
        a();
    }

    public Matrix a(float f2, float f3) {
        if (f2 == 0.0f || f3 == 0.0f || this.f32695i == 0 || this.f32696j == 0) {
            return null;
        }
        LogUtil.d(this.f32687a, "adjustVideoRadio " + f2 + " " + f3 + " " + this.f32695i + " " + this.f32696j);
        float f4 = f2 / ((float) this.f32695i);
        float f5 = f3 / ((float) this.f32696j);
        Matrix matrix = new Matrix();
        matrix.preTranslate((f2 - ((float) this.f32695i)) / 2.0f, (f3 - ((float) this.f32696j)) / 2.0f);
        matrix.preScale(((float) this.f32695i) / f2, ((float) this.f32696j) / f3);
        if (2 == this.f32699m) {
            matrix.postScale(f4, f5, f2 / 2.0f, f3 / 2.0f);
            return matrix;
        }
        if (f4 >= f5) {
            matrix.postScale(f5, f5, f2 / 2.0f, f3 / 2.0f);
            return matrix;
        }
        matrix.postScale(f4, f4, f2 / 2.0f, f3 / 2.0f);
        return matrix;
    }

    public MeishuVideoTextureView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f32687a = getClass().getSimpleName();
        this.f32693g = false;
        this.f32697k = true;
        this.f32699m = 1;
        this.f32701o = new f();
        a();
    }

    public final void a(int i2, int i3, Matrix matrix) {
        if (matrix == null) {
            return;
        }
        RectF rectF = new RectF(0.0f, 0.0f, i2, i3);
        matrix.mapRect(rectF);
        LogUtil.i(this.f32687a, "changeViewSize " + matrix + " " + ((int) rectF.width()) + " " + ((int) rectF.height()));
        getLayoutParams().width = (int) rectF.width();
        getLayoutParams().height = ((int) rectF.height()) + 1;
        post(new g());
    }
}
