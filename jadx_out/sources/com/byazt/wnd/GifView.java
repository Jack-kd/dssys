package com.byazt.wnd;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.Movie;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.widget.ImageView;
import com.byazt.sq.w;
import com.byazt.uid.eb;
import com.byazt.ymw.s;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import x.AbstractC1796a;
import x.AbstractC1797b;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1273})
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes3.dex */
public class GifView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    public boolean f26996a;

    /* renamed from: e, reason: collision with root package name */
    public int f26997e;
    public float eb;
    public int gu;
    public Movie hp;

    /* renamed from: j, reason: collision with root package name */
    public AnimatedImageDrawable f26998j;
    public volatile boolean jl;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f26999k;

    /* renamed from: l, reason: collision with root package name */
    public long f27000l;

    /* renamed from: q, reason: collision with root package name */
    public float f27001q;

    /* renamed from: s, reason: collision with root package name */
    public float f27002s;

    /* renamed from: w, reason: collision with root package name */
    public boolean f27003w;
    public boolean zy;

    public interface hp {
        void hp(Drawable drawable);
    }

    public GifView(Context context) {
        super(context);
        this.f27003w = Build.VERSION.SDK_INT >= 28;
        this.f26996a = false;
        this.zy = true;
        this.f26999k = true;
        hp();
    }

    private void j() {
        if (this.hp == null) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.f27000l == 0) {
            this.f27000l = jUptimeMillis;
        }
        int iDuration = this.hp.duration();
        if (iDuration == 0) {
            iDuration = 1000;
        }
        if (this.f26999k || Math.abs(iDuration - this.jx) >= 60) {
            this.jx = (int) ((jUptimeMillis - this.f27000l) % iDuration);
        } else {
            this.jx = iDuration;
            this.jl = true;
        }
    }

    private void jx() {
        if (this.hp == null || this.f27003w || !this.zy) {
            return;
        }
        postInvalidateOnAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(11:0|2|32|3|(1:5)(1:8)|9|(3:38|10|(4:12|34|13|14))|36|17|22|(1:(0))) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.ImageDecoder.Source l(byte[] r6) {
        /*
            r5 = this;
            r0 = 0
            com.byazt.ui.hp r1 = com.byazt.ui.hp.hp()     // Catch: java.lang.Throwable -> L16
            com.byazt.ui.jx r1 = r1.jx()     // Catch: java.lang.Throwable -> L16
            boolean r1 = r1.jl()     // Catch: java.lang.Throwable -> L16
            android.content.Context r2 = r5.getContext()     // Catch: java.lang.Throwable -> L16
            if (r1 == 0) goto L19
            java.lang.String r1 = "GIF_AD_CACHE/"
            goto L1b
        L16:
            r6 = move-exception
            r2 = r0
            goto L3f
        L19:
            java.lang.String r1 = "/GIF_CACHE/"
        L1b:
            java.lang.String r3 = "TT_GIF_FILE"
            java.io.File r1 = hp(r2, r1, r3)     // Catch: java.lang.Throwable -> L16
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L16
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L16
            int r3 = r6.length     // Catch: java.lang.Throwable -> L39
            r4 = 0
            r2.write(r6, r4, r3)     // Catch: java.lang.Throwable -> L39
            int r6 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L39
            r3 = 28
            if (r6 < r3) goto L3b
            android.graphics.ImageDecoder$Source r6 = x.g.a(r1)     // Catch: java.lang.Throwable -> L39
            r2.close()     // Catch: java.lang.Throwable -> L38
        L38:
            return r6
        L39:
            r6 = move-exception
            goto L3f
        L3b:
            r2.close()     // Catch: java.lang.Throwable -> L49
            goto L49
        L3f:
            java.lang.String r1 = "GifView"
            java.lang.String r3 = "GifView  getSourceByFile fail : "
            com.byazt.ymw.u.hp(r1, r3, r6)     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L49
            goto L3b
        L49:
            return r0
        L4a:
            r6 = move-exception
            if (r2 == 0) goto L50
            r2.close()     // Catch: java.lang.Throwable -> L50
        L50:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.wnd.GifView.l(byte[]):android.graphics.ImageDecoder$Source");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDrawable(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        setImageDrawable(drawable);
        if (Build.VERSION.SDK_INT >= 28 && AbstractC1796a.a(drawable)) {
            AnimatedImageDrawable animatedImageDrawableA = AbstractC1797b.a(drawable);
            this.f26998j = animatedImageDrawableA;
            if (!this.jl) {
                animatedImageDrawableA.start();
            }
            if (!this.f26999k) {
                animatedImageDrawableA.setRepeatCount(0);
            }
        }
        jx();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.hp == null || this.f27003w) {
            super.onDraw(canvas);
            return;
        }
        try {
            if (this.jl) {
                hp(canvas);
                return;
            }
            j();
            hp(canvas);
            jx();
        } catch (Throwable th) {
            u.hp("GifView", "onDraw->Throwable->", th);
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (this.hp != null && !this.f27003w) {
            this.eb = (getWidth() - this.f26997e) / 2.0f;
            this.f27002s = (getHeight() - this.gu) / 2.0f;
        }
        this.zy = getVisibility() == 0;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i2, int i3) {
        Movie movie;
        int size;
        int size2;
        super.onMeasure(i2, i3);
        if (this.f27003w || (movie = this.hp) == null) {
            return;
        }
        int iWidth = movie.width();
        int iHeight = this.hp.height();
        float fMax = 1.0f / Math.max((View.MeasureSpec.getMode(i2) == 0 || iWidth <= (size2 = View.MeasureSpec.getSize(i2))) ? 1.0f : iWidth / size2, (View.MeasureSpec.getMode(i3) == 0 || iHeight <= (size = View.MeasureSpec.getSize(i3))) ? 1.0f : iHeight / size);
        this.f27001q = fMax;
        int i4 = (int) (iWidth * fMax);
        this.f26997e = i4;
        int i5 = (int) (iHeight * fMax);
        this.gu = i5;
        setMeasuredDimension(i4, i5);
    }

    @Override // android.view.View
    @SuppressLint({"NewApi"})
    public void onScreenStateChanged(int i2) {
        super.onScreenStateChanged(i2);
        if (this.hp != null) {
            this.zy = i2 == 1;
            jx();
        }
    }

    @Override // android.view.View
    @SuppressLint({"NewApi"})
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (this.hp != null) {
            this.zy = i2 == 0;
            jx();
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (this.hp != null) {
            this.zy = i2 == 0;
            jx();
        }
    }

    public void setRepeatConfig(boolean z2) {
        AnimatedImageDrawable animatedImageDrawable;
        this.f26999k = z2;
        if (z2) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT < 28 || (animatedImageDrawable = this.f26998j) == null) {
                return;
            }
            animatedImageDrawable.setRepeatCount(0);
        } catch (Exception e2) {
            u.hp("GifView", "setRepeatConfig error", e2);
        }
    }

    public void hp() {
        if (this.f27003w) {
            return;
        }
        setLayerType(1, null);
    }

    public void hp(byte[] bArr, boolean z2) {
        this.jl = z2;
        if (bArr == null) {
            return;
        }
        if (!this.f27003w) {
            this.hp = hp(bArr);
        } else {
            hp(bArr, new hp() { // from class: com.byazt.wnd.GifView.1
                @Override // com.byazt.wnd.GifView.hp
                public void hp(final Drawable drawable) {
                    GifView.this.post(new Runnable() { // from class: com.byazt.wnd.GifView.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            GifView.this.setDrawable(drawable);
                        }
                    });
                }
            });
        }
    }

    private Movie hp(byte[] bArr) {
        try {
            return Movie.decodeByteArray(bArr, 0, bArr.length);
        } catch (Throwable unused) {
            return null;
        }
    }

    private void hp(final byte[] bArr, final hp hpVar) {
        if (bArr == null) {
            return;
        }
        w.hp(new eb("createGifApi28WithByteArrayBySafely") { // from class: com.byazt.wnd.GifView.2
            @Override // java.lang.Runnable
            public void run() {
                hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    GifView gifView = GifView.this;
                    hpVar2.hp(gifView.hp(gifView.l(bArr)));
                }
            }
        }, 5);
    }

    public void l() {
        if (this.hp == null || !this.jl) {
            return;
        }
        this.jl = false;
        if (!this.f27003w) {
            this.f27000l = SystemClock.uptimeMillis() - this.jx;
            invalidate();
            return;
        }
        AnimatedImageDrawable animatedImageDrawable = this.f26998j;
        if (animatedImageDrawable == null || animatedImageDrawable.isRunning()) {
            return;
        }
        this.f26998j.start();
    }

    public static File hp(Context context, String str, String str2) {
        int iGu = com.byazt.ui.hp.hp().jx().gu();
        boolean zJl = com.byazt.ui.hp.hp().jx().jl();
        if (iGu == 1) {
            u.l("splashLoadAd", "视频存储使用内部存储");
            return s.l(context, zJl, str, str2);
        }
        u.l("splashLoadAd", "视频存储使用外存储");
        return s.hp(context, zJl, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable hp(ImageDecoder.Source source) {
        try {
            if (Build.VERSION.SDK_INT < 28) {
                return null;
            }
            return ImageDecoder.decodeDrawable(source);
        } catch (Throwable unused) {
            return null;
        }
    }

    private void hp(Canvas canvas) {
        Movie movie = this.hp;
        if (movie == null) {
            return;
        }
        movie.setTime(this.jx);
        float f2 = this.f27001q;
        if (f2 == 0.0f) {
            canvas.scale(1.0f, 1.0f);
            this.hp.draw(canvas, 0.0f, 0.0f);
        } else {
            canvas.scale(f2, f2);
            Movie movie2 = this.hp;
            float f3 = this.eb;
            float f4 = this.f27001q;
            movie2.draw(canvas, f3 / f4, this.f27002s / f4);
        }
        canvas.restore();
    }
}
