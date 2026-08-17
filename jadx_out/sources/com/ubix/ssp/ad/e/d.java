package com.ubix.ssp.ad.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.View;
import com.ubix.ssp.ad.e.a0.u;

/* loaded from: classes5.dex */
public class d extends View {

    /* renamed from: a, reason: collision with root package name */
    Paint f46814a;

    /* renamed from: b, reason: collision with root package name */
    Paint f46815b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f46816c;

    /* renamed from: d, reason: collision with root package name */
    private Paint f46817d;

    /* renamed from: e, reason: collision with root package name */
    private Paint f46818e;

    /* renamed from: f, reason: collision with root package name */
    private Paint f46819f;

    /* renamed from: g, reason: collision with root package name */
    int f46820g;

    /* renamed from: h, reason: collision with root package name */
    int f46821h;

    /* renamed from: i, reason: collision with root package name */
    boolean f46822i;

    /* renamed from: j, reason: collision with root package name */
    boolean f46823j;

    /* renamed from: k, reason: collision with root package name */
    private int f46824k;

    /* renamed from: l, reason: collision with root package name */
    private int f46825l;

    /* renamed from: m, reason: collision with root package name */
    private int f46826m;

    /* renamed from: n, reason: collision with root package name */
    private float f46827n;

    /* renamed from: o, reason: collision with root package name */
    boolean f46828o;

    /* renamed from: p, reason: collision with root package name */
    private String f46829p;

    /* renamed from: q, reason: collision with root package name */
    private String f46830q;

    /* renamed from: r, reason: collision with root package name */
    private int f46831r;

    /* renamed from: s, reason: collision with root package name */
    private int f46832s;

    /* renamed from: t, reason: collision with root package name */
    float f46833t;

    /* renamed from: u, reason: collision with root package name */
    float f46834u;

    /* renamed from: v, reason: collision with root package name */
    private int f46835v;

    /* renamed from: w, reason: collision with root package name */
    private int f46836w;

    /* renamed from: x, reason: collision with root package name */
    private Bitmap f46837x;

    /* renamed from: y, reason: collision with root package name */
    private boolean f46838y;

    /* renamed from: z, reason: collision with root package name */
    private float f46839z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                d dVar = d.this;
                if (dVar.f46822i) {
                    dVar.f46821h -= 3;
                    dVar.f46820g++;
                } else {
                    dVar.f46820g -= 2;
                    dVar.f46821h += 3;
                }
                dVar.f46814a.setAlpha(dVar.f46821h);
                d dVar2 = d.this;
                dVar2.f46815b.setAlpha(dVar2.f46821h - 100);
                d dVar3 = d.this;
                if (dVar3.f46820g > dVar3.f46824k) {
                    d dVar4 = d.this;
                    dVar4.f46820g = dVar4.f46824k;
                    d dVar5 = d.this;
                    dVar5.f46823j = false;
                    dVar5.f46822i = false;
                }
                d dVar6 = d.this;
                if (dVar6.f46820g < 0) {
                    dVar6.f46820g = 0;
                    dVar6.f46821h = 255;
                    dVar6.f46815b.setAlpha(100);
                    d dVar7 = d.this;
                    dVar7.f46822i = true;
                    dVar7.f46823j = true;
                }
                d.this.invalidate();
                d dVar8 = d.this;
                if (!dVar8.f46823j) {
                    dVar8.postDelayed(this, 16L);
                } else {
                    dVar8.postDelayed(this, 1000L);
                    d.this.f46823j = false;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public d(Context context, boolean z2) {
        super(context);
        this.f46814a = new Paint(1);
        this.f46815b = new Paint(1);
        this.f46816c = new Paint(1);
        this.f46817d = new Paint(1);
        this.f46818e = new Paint(1);
        this.f46819f = new Paint(1);
        this.f46820g = 0;
        this.f46821h = 255;
        this.f46822i = true;
        this.f46824k = 30;
        this.f46827n = 0.0f;
        this.f46829p = "向上滑动或点击";
        this.f46830q = "跳转详情页或第三方应用";
        this.f46831r = 16;
        this.f46832s = 12;
        this.f46835v = 0;
        this.f46836w = 0;
        this.f46839z = 3.0f;
        this.f46838y = z2;
        this.f46816c.setFakeBoldText(true);
        this.f46816c.setTextSize(com.ubix.ssp.ad.e.a0.r.d(this.f46831r));
        this.f46816c.setColor(-1);
        Paint paint = this.f46816c;
        Paint.Align align = Paint.Align.CENTER;
        paint.setTextAlign(align);
        this.f46817d.setTextSize(com.ubix.ssp.ad.e.a0.r.d(this.f46832s));
        this.f46817d.setColor(-1);
        this.f46817d.setTextAlign(align);
        this.f46818e.setColor(1711276032);
        this.f46819f.setColor(1711276032);
        this.f46818e.setTextAlign(align);
        this.f46819f.setTextAlign(align);
        this.f46818e.setTextSize(com.ubix.ssp.ad.e.a0.r.d(this.f46831r));
        this.f46819f.setTextSize(com.ubix.ssp.ad.e.a0.r.d(this.f46832s));
        this.f46839z = com.ubix.ssp.ad.e.a0.r.a().a(context);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        try {
            Paint.FontMetrics fontMetrics = this.f46816c.getFontMetrics();
            Paint.FontMetrics fontMetrics2 = this.f46817d.getFontMetrics();
            int i2 = 0;
            int i3 = 0;
            while ((-fontMetrics.top) + fontMetrics.bottom > this.f46825l / 8.0f && i3 < 12) {
                this.f46831r = this.f46831r - 1;
                i3++;
                this.f46816c.setTextSize(com.ubix.ssp.ad.e.a0.r.d(r0));
                fontMetrics = this.f46816c.getFontMetrics();
            }
            while ((-fontMetrics2.top) + fontMetrics2.bottom > this.f46825l / 9.0f && i2 < 10) {
                this.f46832s = this.f46832s - 1;
                i2++;
                this.f46817d.setTextSize(com.ubix.ssp.ad.e.a0.r.d(r0));
                fontMetrics2 = this.f46817d.getFontMetrics();
            }
            this.f46818e.setTextSize(com.ubix.ssp.ad.e.a0.r.d(this.f46831r));
            this.f46819f.setTextSize(com.ubix.ssp.ad.e.a0.r.d(this.f46832s));
            Paint paint = this.f46814a;
            if (paint != null) {
                canvas.drawCircle(this.f46833t, this.f46834u + this.f46835v, this.f46827n + this.f46820g, paint);
                canvas.drawCircle(this.f46833t, this.f46834u + this.f46835v, this.f46827n + 30.0f + this.f46820g, this.f46815b);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        Bitmap bitmap = this.f46837x;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, this.f46833t - (bitmap.getWidth() / 2), (float) (((this.f46825l - (this.f46827n * 0.95d)) - (this.f46837x.getHeight() / 2)) - this.f46820g), (Paint) null);
        }
        canvas.drawText(this.f46829p, this.f46833t + 4.0f, (((this.f46825l - this.f46836w) + (this.f46827n / 3.0f)) - 10.0f) + 4.0f, this.f46818e);
        canvas.drawText(this.f46830q, this.f46833t + 4.0f, (this.f46825l - this.f46836w) + (this.f46839z * 20.0f) + (this.f46827n / 3.0f) + 4.0f, this.f46819f);
        canvas.drawText(this.f46829p, this.f46833t, ((this.f46825l - this.f46836w) + (this.f46827n / 3.0f)) - 10.0f, this.f46816c);
        canvas.drawText(this.f46830q, this.f46833t, (this.f46825l - this.f46836w) + (this.f46839z * 20.0f) + (this.f46827n / 3.0f), this.f46817d);
    }

    public void setSubTitle(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f46830q = str;
        invalidate();
    }

    public void setTitle(String str) {
        this.f46829p = str;
        invalidate();
    }

    public void a() {
        this.f46814a.setColor(-1);
        this.f46814a.setStrokeWidth(15.0f);
        Paint paint = this.f46814a;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.f46815b.setAlpha(100);
        this.f46815b.setColor(-1);
        this.f46815b.setStrokeWidth(15.0f);
        this.f46815b.setStyle(style);
    }

    public void a(boolean z2) {
        if (z2) {
            this.f46837x = q.a(getContext(), "ubix/ic_full_slide_arrow.webp", 90, true);
        }
        setWillNotDraw(false);
        a();
        postDelayed(new a(), 16L);
    }

    public void a(boolean z2, int i2, int i3) {
        if (this.f46826m == i2 && this.f46825l == i3) {
            return;
        }
        this.f46826m = i2;
        this.f46825l = i3;
        int i4 = i2 / 2;
        float f2 = (float) (i4 * 0.8d);
        this.f46827n = f2;
        this.f46833t = i4;
        double d2 = f2;
        this.f46834u = (float) (i3 - (0.1d * d2));
        this.f46836w = (int) (d2 * (z2 ? 1.1d : 0.9d));
        a();
        this.f46828o = true;
    }

    public boolean a(float f2, float f3) {
        u.e("isInside x=" + f2 + " ; " + f3);
        double dSqrt = Math.sqrt(Math.pow((double) (f2 - this.f46833t), 2.0d) + Math.pow((double) (f3 - (this.f46834u + ((float) this.f46835v))), 2.0d));
        u.e("length=" + dSqrt + " ; " + (this.f46827n + 30.0f + this.f46820g));
        return dSqrt < ((double) ((this.f46827n + 30.0f) + ((float) this.f46820g)));
    }
}
