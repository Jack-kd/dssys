package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.webkit.WebSettings;

/* renamed from: com.sigmob.sdk.base.views.l, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1300l extends C1295g {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37087a = "l";

    /* renamed from: b, reason: collision with root package name */
    private float f37088b;

    /* renamed from: c, reason: collision with root package name */
    private int f37089c;

    /* renamed from: d, reason: collision with root package name */
    private int f37090d;

    /* renamed from: e, reason: collision with root package name */
    private int f37091e;

    /* renamed from: f, reason: collision with root package name */
    private int f37092f;

    /* renamed from: g, reason: collision with root package name */
    private Paint f37093g;

    /* renamed from: h, reason: collision with root package name */
    private Paint f37094h;

    public C1300l(Context context) {
        this(context, null);
    }

    private void a(Context context) {
        Paint paint = new Paint();
        this.f37093g = paint;
        paint.setColor(-1);
        this.f37093g.setAntiAlias(true);
        this.f37093g.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        Paint paint2 = new Paint();
        this.f37094h = paint2;
        paint2.setXfermode(null);
    }

    private void b(Canvas canvas) {
        Path path = new Path();
        path.moveTo(this.f37091e + this.f37089c, this.f37092f + this.f37088b);
        path.lineTo(this.f37091e + this.f37089c, this.f37092f);
        path.lineTo((this.f37091e + this.f37089c) - this.f37088b, this.f37092f);
        int i2 = this.f37091e;
        int i3 = this.f37089c;
        float f2 = this.f37088b;
        int i4 = this.f37092f;
        path.arcTo(new RectF((i2 + i3) - (f2 * 2.0f), i4, i2 + i3, i4 + (f2 * 2.0f)), -90.0f, 90.0f);
        path.close();
        canvas.drawPath(path, this.f37093g);
    }

    private void c(Canvas canvas) {
        Path path = new Path();
        path.moveTo(this.f37091e, (this.f37092f + this.f37090d) - this.f37088b);
        path.lineTo(this.f37091e, this.f37092f + this.f37090d);
        path.lineTo(this.f37091e + this.f37088b, this.f37092f + this.f37090d);
        int i2 = this.f37091e;
        int i3 = this.f37092f;
        int i4 = this.f37090d;
        float f2 = this.f37088b;
        path.arcTo(new RectF(i2, (i3 + i4) - (f2 * 2.0f), i2 + (f2 * 2.0f), i3 + i4), 90.0f, 90.0f);
        path.close();
        canvas.drawPath(path, this.f37093g);
    }

    private void d(Canvas canvas) {
        Path path = new Path();
        path.moveTo((this.f37091e + this.f37089c) - this.f37088b, this.f37092f + this.f37090d);
        path.lineTo(this.f37091e + this.f37089c, this.f37092f + this.f37090d);
        path.lineTo(this.f37091e + this.f37089c, (this.f37092f + this.f37090d) - this.f37088b);
        int i2 = this.f37091e;
        int i3 = this.f37089c;
        float f2 = this.f37088b;
        int i4 = this.f37092f;
        int i5 = this.f37090d;
        path.arcTo(new RectF((i2 + i3) - (f2 * 2.0f), (i4 + i5) - (f2 * 2.0f), i2 + i3, i4 + i5), 0.0f, 90.0f);
        path.close();
        canvas.drawPath(path, this.f37093g);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        this.f37091e = getScrollX();
        int scrollY = getScrollY();
        this.f37092f = scrollY;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.f37091e + this.f37089c, scrollY + this.f37090d, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(bitmapCreateBitmap);
        super.draw(canvas2);
        a(canvas2);
        b(canvas2);
        canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, this.f37094h);
        bitmapCreateBitmap.recycle();
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.f37089c = getMeasuredWidth();
        this.f37090d = getMeasuredHeight();
    }

    public void setRadius(float f2) {
        this.f37088b = f2;
    }

    public C1300l(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a(Canvas canvas) {
        Path path = new Path();
        path.moveTo(this.f37091e, this.f37088b);
        path.lineTo(this.f37091e, this.f37092f);
        path.lineTo(this.f37088b, this.f37092f);
        int i2 = this.f37091e;
        int i3 = this.f37092f;
        float f2 = this.f37088b;
        path.arcTo(new RectF(i2, i3, i2 + (f2 * 2.0f), i3 + (f2 * 2.0f)), -90.0f, -90.0f);
        path.close();
        canvas.drawPath(path, this.f37093g);
    }

    public C1300l(Context context, AttributeSet attributeSet, int i2) {
        super(context);
        this.f37088b = 40.0f;
        a(getSettings());
        a(context);
    }

    private void a(WebSettings webSettings) {
        com.sigmob.sdk.base.utils.j.a(f37087a, webSettings);
        webSettings.setDomStorageEnabled(true);
        webSettings.setUseWideViewPort(true);
        webSettings.setBuiltInZoomControls(false);
        webSettings.setLoadWithOverviewMode(true);
        webSettings.setSupportZoom(true);
        webSettings.setDefaultTextEncodingName("UTF-8");
        webSettings.setBlockNetworkImage(false);
        webSettings.setBlockNetworkLoads(false);
        webSettings.setCacheMode(-1);
        int i2 = Build.VERSION.SDK_INT;
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        webSettings.setLoadsImagesAutomatically(true);
        webSettings.setAllowContentAccess(true);
        if (i2 >= 26) {
            try {
                webSettings.setSafeBrowsingEnabled(false);
            } catch (Throwable unused) {
            }
        }
        try {
            webSettings.setMixedContentMode(0);
        } catch (Throwable unused2) {
        }
    }

    @Override // com.sigmob.sdk.base.views.C1295g
    public void a(boolean z2) {
    }
}
