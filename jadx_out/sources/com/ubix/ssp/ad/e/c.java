package com.ubix.ssp.ad.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

/* loaded from: classes5.dex */
public class c extends RelativeLayout {

    /* renamed from: A, reason: collision with root package name */
    private final int f46769A;

    /* renamed from: B, reason: collision with root package name */
    private Rect f46770B;

    /* renamed from: a, reason: collision with root package name */
    private String f46771a;

    /* renamed from: b, reason: collision with root package name */
    private String f46772b;

    /* renamed from: c, reason: collision with root package name */
    private int f46773c;

    /* renamed from: d, reason: collision with root package name */
    private int f46774d;

    /* renamed from: e, reason: collision with root package name */
    private Paint f46775e;

    /* renamed from: f, reason: collision with root package name */
    private int f46776f;

    /* renamed from: g, reason: collision with root package name */
    private int f46777g;

    /* renamed from: h, reason: collision with root package name */
    private Paint f46778h;

    /* renamed from: i, reason: collision with root package name */
    private Paint f46779i;

    /* renamed from: j, reason: collision with root package name */
    private Paint f46780j;

    /* renamed from: k, reason: collision with root package name */
    private Paint f46781k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f46782l;

    /* renamed from: m, reason: collision with root package name */
    private double f46783m;

    /* renamed from: n, reason: collision with root package name */
    int f46784n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f46785o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f46786p;

    /* renamed from: q, reason: collision with root package name */
    private Handler f46787q;

    /* renamed from: r, reason: collision with root package name */
    HandlerThread f46788r;

    /* renamed from: s, reason: collision with root package name */
    Paint f46789s;

    /* renamed from: t, reason: collision with root package name */
    RectF f46790t;

    /* renamed from: u, reason: collision with root package name */
    int f46791u;

    /* renamed from: v, reason: collision with root package name */
    int f46792v;

    /* renamed from: w, reason: collision with root package name */
    long f46793w;

    /* renamed from: x, reason: collision with root package name */
    long f46794x;

    /* renamed from: y, reason: collision with root package name */
    private int f46795y;

    /* renamed from: z, reason: collision with root package name */
    private final int f46796z;

    public class a extends Drawable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Drawable f46797a;

        public a(Drawable drawable) {
            this.f46797a = drawable;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Drawable drawable = this.f46797a;
            if (drawable != null) {
                drawable.setBounds(c.this.f46795y, c.this.f46795y, c.this.f46773c + c.this.f46795y, c.this.f46774d + c.this.f46795y);
                this.f46797a.draw(canvas);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i2) {
            Drawable drawable = this.f46797a;
            if (drawable != null) {
                drawable.setAlpha(i2);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            Drawable drawable = this.f46797a;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c.this.postInvalidate();
                c.this.postDelayed(this, 16L);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public c(Context context, boolean z2) {
        super(context);
        this.f46771a = "";
        this.f46772b = "跳转详情页或第三方应用";
        this.f46775e = new Paint(1);
        this.f46776f = 16;
        this.f46777g = 12;
        this.f46778h = new Paint(1);
        this.f46779i = new Paint(1);
        this.f46780j = new Paint(1);
        this.f46781k = new Paint(1);
        this.f46782l = true;
        this.f46783m = 4.0d;
        this.f46784n = 0;
        this.f46785o = false;
        this.f46786p = false;
        this.f46788r = new HandlerThread("ButtonDraw");
        this.f46789s = null;
        this.f46790t = null;
        this.f46791u = 2;
        this.f46792v = 9;
        this.f46795y = 0;
        this.f46796z = 500;
        this.f46769A = 16;
        this.f46770B = new Rect();
        this.f46782l = !z2;
        this.f46783m = com.ubix.ssp.ad.e.a0.r.a().a(context);
        this.f46778h.setFakeBoldText(true);
        this.f46778h.setTextSize(com.ubix.ssp.ad.e.a0.r.d(this.f46776f));
        this.f46778h.setColor(-1);
        Paint paint = this.f46778h;
        Paint.Align align = Paint.Align.CENTER;
        paint.setTextAlign(align);
        this.f46779i.setTextSize(com.ubix.ssp.ad.e.a0.r.d(this.f46777g));
        this.f46779i.setColor(-1);
        this.f46779i.setTextAlign(align);
        this.f46780j.setColor(1711276032);
        this.f46780j.setTextAlign(align);
        this.f46781k.setColor(1711276032);
        this.f46781k.setTextAlign(align);
        this.f46778h.setLetterSpacing(0.14f);
        this.f46779i.setLetterSpacing(0.14f);
        this.f46780j.setLetterSpacing(0.14f);
        this.f46781k.setLetterSpacing(0.14f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            HandlerThread handlerThread = this.f46788r;
            if (handlerThread != null) {
                handlerThread.quitSafely();
                this.f46788r = null;
            }
            this.f46787q = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Bitmap bitmapA;
        super.onDraw(canvas);
        try {
            Paint.FontMetrics fontMetrics = this.f46778h.getFontMetrics();
            Paint.FontMetrics fontMetrics2 = this.f46779i.getFontMetrics();
            int i2 = 0;
            int i3 = 0;
            while ((-fontMetrics.top) + fontMetrics.bottom > this.f46774d / 2.5f && i3 < 12) {
                this.f46776f = this.f46776f - 1;
                i3++;
                this.f46778h.setTextSize(com.ubix.ssp.ad.e.a0.r.d(r2));
                fontMetrics = this.f46778h.getFontMetrics();
            }
            while ((-fontMetrics2.top) + fontMetrics2.bottom > this.f46774d / 3.0f && i2 < 10) {
                this.f46777g = this.f46777g - 1;
                i2++;
                this.f46779i.setTextSize(com.ubix.ssp.ad.e.a0.r.d(r3));
                fontMetrics2 = this.f46779i.getFontMetrics();
            }
            this.f46780j.setTextSize(com.ubix.ssp.ad.e.a0.r.d(this.f46776f));
            this.f46781k.setTextSize(com.ubix.ssp.ad.e.a0.r.d(this.f46777g));
            if (this.f46782l) {
                String str = this.f46771a;
                float f2 = this.f46795y;
                float f3 = this.f46774d;
                float f4 = -fontMetrics.top;
                float f5 = fontMetrics.bottom;
                canvas.drawText(str, (r8 / 2) + (((int) ((this.f46773c - r8) - (f3 / 4.0f))) / 2.0f) + f2, f2 + ((((f3 / 2.0f) / 2.0f) + ((f4 + f5) / 2.0f)) - f5) + (r8 / 16), this.f46778h);
                String str2 = this.f46772b;
                float f6 = this.f46795y;
                float f7 = (r8 / 2) + (((int) ((this.f46773c - r8) - (r11 / 4.0f))) / 2.0f) + f6;
                float f8 = this.f46774d / 2.0f;
                canvas.drawText(str2, f7, f6 + ((((f8 + (f8 / 2.0f)) + (((-fontMetrics2.top) + fontMetrics2.bottom) / 2.0f)) - fontMetrics.bottom) - (r8 / 16)), this.f46779i);
            } else {
                String str3 = this.f46771a;
                float f9 = this.f46795y;
                int i4 = this.f46774d;
                float f10 = -fontMetrics.top;
                float f11 = fontMetrics.bottom;
                canvas.drawText(str3, (this.f46773c / 2.0f) + f9 + 4.0f, f9 + ((((i4 / 2.0f) / 2.0f) + ((f10 + f11) / 2.0f)) - f11) + (i4 / 16) + 4.0f, this.f46780j);
                String str4 = this.f46772b;
                float f12 = this.f46795y;
                float f13 = this.f46774d / 2.0f;
                canvas.drawText(str4, (this.f46773c / 2.0f) + f12 + 4.0f, f12 + ((((f13 + (f13 / 2.0f)) + (((-fontMetrics2.top) + fontMetrics2.bottom) / 2.0f)) - fontMetrics.bottom) - (r9 / 16)) + 4.0f, this.f46781k);
                String str5 = this.f46771a;
                float f14 = this.f46795y;
                int i5 = this.f46774d;
                float f15 = -fontMetrics.top;
                float f16 = fontMetrics.bottom;
                canvas.drawText(str5, (this.f46773c / 2.0f) + f14, f14 + ((((i5 / 2.0f) / 2.0f) + ((f15 + f16) / 2.0f)) - f16) + (i5 / 16), this.f46778h);
                String str6 = this.f46772b;
                float f17 = this.f46795y;
                float f18 = this.f46774d / 2.0f;
                canvas.drawText(str6, (this.f46773c / 2.0f) + f17, f17 + ((((f18 + (f18 / 2.0f)) + (((-fontMetrics2.top) + fontMetrics2.bottom) / 2.0f)) - fontMetrics.bottom) - (r9 / 16)), this.f46779i);
            }
            if (this.f46782l && (bitmapA = q.a(getContext(), "ubix/ic_bottom_right_arrow.webp")) != null) {
                Rect rect = this.f46770B;
                int i6 = this.f46795y;
                double d2 = this.f46773c;
                int i7 = this.f46774d;
                double d3 = i7 / 2;
                boolean z2 = this.f46785o;
                double d4 = 1.5d;
                int i8 = ((int) (d2 - (d3 * (z2 ? 1.5d : 1.2d)))) + i6;
                float f19 = i7;
                float f20 = f19 / 2.0f;
                float f21 = f19 / 4.0f;
                float f22 = f21 / 2.0f;
                int i9 = ((int) (f20 - f22)) + i6;
                double d5 = i7 / 2;
                if (!z2) {
                    d4 = 1.2d;
                }
                rect.set(i8, i9, ((int) ((d2 - (d5 * d4)) + f21)) + i6, i6 + ((int) (f20 + f22)));
                canvas.drawBitmap(bitmapA, (Rect) null, this.f46770B, this.f46775e);
            }
            if (this.f46786p) {
                a(canvas);
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() == 1 || motionEvent.getAction() == 0) && motionEvent.getX() > this.f46795y && motionEvent.getX() < this.f46773c + this.f46795y && motionEvent.getY() > this.f46795y && motionEvent.getY() < this.f46774d + this.f46795y) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        super.setBackground(new a(drawable));
    }

    public void setNeedWave(boolean z2) {
        HandlerThread handlerThread;
        try {
            if (z2 == this.f46786p) {
                return;
            }
            this.f46786p = z2;
            if (z2 && (handlerThread = this.f46788r) != null && !handlerThread.isAlive()) {
                b bVar = new b();
                this.f46788r.start();
                Handler handler = new Handler(this.f46788r.getLooper());
                this.f46787q = handler;
                handler.postDelayed(bVar, 16L);
                if (this.f46789s == null) {
                    Paint paint = new Paint(1);
                    this.f46789s = paint;
                    paint.setColor(-1);
                    this.f46789s.setAlpha(255);
                    this.f46789s.setStrokeWidth((float) this.f46783m);
                    this.f46789s.setStyle(Paint.Style.STROKE);
                    float f2 = this.f46795y;
                    this.f46790t = new RectF(f2, f2, this.f46773c + r0, this.f46774d + r0);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setSubTitle(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f46772b = str;
        invalidate();
    }

    public void setTitle(String str) {
        this.f46771a = str;
        invalidate();
    }

    private void a() {
        int i2;
        if (this.f46784n != getDisplay().getRotation()) {
            this.f46784n = getDisplay().getRotation();
            if (this.f46785o) {
                this.f46776f = 14;
                i2 = 10;
            } else {
                this.f46776f = 16;
                i2 = 12;
            }
            this.f46777g = i2;
            this.f46778h.setTextSize(com.ubix.ssp.ad.e.a0.r.d(this.f46776f));
            this.f46779i.setTextSize(com.ubix.ssp.ad.e.a0.r.d(this.f46777g));
            invalidate();
        }
    }

    public void b() {
        this.f46785o = true;
        this.f46776f = 14;
        this.f46777g = 10;
        this.f46778h.setTextSize(com.ubix.ssp.ad.e.a0.r.d(14));
        this.f46779i.setTextSize(com.ubix.ssp.ad.e.a0.r.d(this.f46777g));
        invalidate();
    }

    public void a(int i2, int i3) {
        int i4 = (int) ((this.f46783m * 25.0d) / 2.0d);
        this.f46795y = i4;
        int i5 = i4 * 2;
        int i6 = i2 - i5;
        if (i6 == this.f46773c && i3 - i5 == this.f46774d) {
            return;
        }
        this.f46791u = (i4 / 31) + 1;
        this.f46792v = 9;
        this.f46773c = i6;
        this.f46774d = i3 - i5;
        setLayoutParams(new RelativeLayout.LayoutParams(i2, i3));
        a();
    }

    private void a(Canvas canvas) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = this.f46794x;
        if (j2 <= 0 || jCurrentTimeMillis - j2 >= 1000) {
            this.f46794x = 0L;
            this.f46793w = jCurrentTimeMillis;
            Paint paint = this.f46789s;
            paint.setAlpha(Math.max(paint.getAlpha() - this.f46792v, 0));
            RectF rectF = this.f46790t;
            float f2 = rectF.left;
            if (f2 >= 0.0f) {
                float f3 = rectF.top;
                if (f3 >= 0.0f) {
                    float f4 = this.f46791u;
                    rectF.left = f2 - f4;
                    rectF.top = f3 - f4;
                    rectF.right += f4;
                    rectF.bottom += f4;
                    canvas.drawRoundRect(rectF, 288.0f, 288.0f, this.f46789s);
                    return;
                }
            }
            float f5 = this.f46795y;
            rectF.left = f5;
            rectF.top = f5;
            rectF.right = this.f46773c + r9;
            rectF.bottom = this.f46774d + r9;
            this.f46789s.setAlpha(255);
            this.f46794x = jCurrentTimeMillis;
        }
    }
}
