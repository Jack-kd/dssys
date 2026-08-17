package com.sigmob.sdk.base.views;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

/* renamed from: com.sigmob.sdk.base.views.u, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1308u extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    private static final int f37192a = 1000;

    /* renamed from: b, reason: collision with root package name */
    private int f37193b;

    /* renamed from: c, reason: collision with root package name */
    private Movie f37194c;

    /* renamed from: d, reason: collision with root package name */
    private long f37195d;

    /* renamed from: e, reason: collision with root package name */
    private int f37196e;

    /* renamed from: f, reason: collision with root package name */
    private float f37197f;

    /* renamed from: g, reason: collision with root package name */
    private float f37198g;

    /* renamed from: h, reason: collision with root package name */
    private float f37199h;

    /* renamed from: i, reason: collision with root package name */
    private float f37200i;

    /* renamed from: j, reason: collision with root package name */
    private int f37201j;

    /* renamed from: k, reason: collision with root package name */
    private int f37202k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f37203l;

    /* renamed from: m, reason: collision with root package name */
    private volatile boolean f37204m;

    public C1308u(Context context) {
        this(context, null);
    }

    private void a(Canvas canvas) {
        this.f37194c.setTime(this.f37196e);
        canvas.save();
        canvas.scale(this.f37199h, this.f37200i);
        this.f37194c.draw(canvas, this.f37197f / this.f37199h, this.f37198g / this.f37200i);
        canvas.restore();
    }

    @SuppressLint({"NewApi"})
    private void b() {
        if (this.f37203l) {
            postInvalidateOnAnimation();
        }
    }

    private void c() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.f37195d == 0) {
            this.f37195d = jUptimeMillis;
        }
        int iDuration = this.f37194c.duration();
        if (iDuration == 0) {
            iDuration = 1000;
        }
        this.f37196e = (int) ((jUptimeMillis - this.f37195d) % iDuration);
    }

    private byte[] getGiftBytes() throws Resources.NotFoundException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        InputStream inputStreamOpenRawResource = getResources().openRawResource(this.f37193b);
        byte[] bArr = new byte[1024];
        while (true) {
            try {
                int i2 = inputStreamOpenRawResource.read(bArr, 0, 1024);
                if (i2 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            } finally {
                try {
                    return byteArrayOutputStream.toByteArray();
                } finally {
                }
            }
        }
        byteArrayOutputStream.flush();
        return byteArrayOutputStream.toByteArray();
    }

    public Movie getMovie() {
        return this.f37194c;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f37194c == null) {
            super.onDraw(canvas);
            return;
        }
        c();
        a(canvas);
        b();
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        this.f37197f = (getWidth() - this.f37201j) / 2.0f;
        this.f37198g = (getHeight() - this.f37202k) / 2.0f;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i2, int i3) {
        Movie movie = this.f37194c;
        if (movie == null) {
            super.onMeasure(i2, i3);
            return;
        }
        int iWidth = movie.width();
        int iHeight = this.f37194c.height();
        int size = View.MeasureSpec.getSize(i2);
        this.f37199h = 1.0f / (iWidth / size);
        this.f37200i = 1.0f / (iHeight / View.MeasureSpec.getSize(i3));
        this.f37201j = size;
        int size2 = View.MeasureSpec.getSize(i3);
        this.f37202k = size2;
        setMeasuredDimension(this.f37201j, size2);
    }

    @Override // android.view.View
    @SuppressLint({"NewApi"})
    public void onScreenStateChanged(int i2) {
        super.onScreenStateChanged(i2);
        this.f37203l = i2 == 1;
        b();
    }

    @Override // android.view.View
    @SuppressLint({"NewApi"})
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        this.f37203l = i2 == 0;
        b();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.f37203l = i2 == 0;
        b();
    }

    public void setMovie(Movie movie) {
        this.f37194c = movie;
        requestLayout();
    }

    public void setMovieResource(int i2) throws Resources.NotFoundException {
        this.f37193b = i2;
        byte[] giftBytes = getGiftBytes();
        this.f37194c = Movie.decodeByteArray(giftBytes, 0, giftBytes.length);
        requestLayout();
    }

    public void setMovieTime(int i2) {
        this.f37196e = i2;
        invalidate();
    }

    public void setPaused(boolean z2) {
        this.f37204m = z2;
        if (!z2) {
            this.f37195d = SystemClock.uptimeMillis() - this.f37196e;
        }
        invalidate();
    }

    public C1308u(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public boolean a() {
        return this.f37204m;
    }

    public C1308u(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f37196e = 0;
        this.f37203l = true;
        this.f37204m = false;
        setLayerType(1, null);
    }
}
