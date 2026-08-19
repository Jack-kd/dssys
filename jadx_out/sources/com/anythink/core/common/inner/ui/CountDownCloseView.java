package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;

/* loaded from: classes2.dex */
public class CountDownCloseView extends CloseImageView {

    /* renamed from: a, reason: collision with root package name */
    private Paint f4957a;

    /* renamed from: b, reason: collision with root package name */
    private Paint f4958b;

    /* renamed from: c, reason: collision with root package name */
    private float f4959c;

    /* renamed from: d, reason: collision with root package name */
    private int f4960d;

    /* renamed from: e, reason: collision with root package name */
    private int f4961e;

    /* renamed from: f, reason: collision with root package name */
    private int f4962f;

    /* renamed from: g, reason: collision with root package name */
    private int f4963g;

    /* renamed from: h, reason: collision with root package name */
    private int f4964h;

    /* renamed from: i, reason: collision with root package name */
    private RectF f4965i;

    /* renamed from: j, reason: collision with root package name */
    private float f4966j;

    /* renamed from: k, reason: collision with root package name */
    private long f4967k;

    public CountDownCloseView(Context context) {
        this(context, null);
    }

    private void a(Context context) {
        this.f4959c = TypedValue.applyDimension(1, 2.5f, context.getResources().getDisplayMetrics());
        this.f4960d = Color.parseColor("#FF57575A");
        this.f4961e = -1;
        Paint paint = new Paint();
        this.f4957a = paint;
        paint.setAntiAlias(true);
        this.f4957a.setStrokeCap(Paint.Cap.ROUND);
        this.f4957a.setStyle(Paint.Style.STROKE);
        this.f4957a.setStrokeWidth(this.f4959c);
        Paint paint2 = new Paint();
        this.f4958b = paint2;
        paint2.setAntiAlias(true);
        this.f4958b.setColor(this.f4961e);
        this.f4965i = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f4966j < 360.0f) {
            this.f4957a.setColor(this.f4960d);
            canvas.drawArc(this.f4965i, 0.0f, 360.0f, false, this.f4957a);
            this.f4957a.setColor(this.f4961e);
            canvas.drawArc(this.f4965i, -90.0f, this.f4966j, false, this.f4957a);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f4962f = i2;
        this.f4963g = i3;
        a();
    }

    public void refresh(long j2) {
        long j3 = this.f4967k;
        if (j3 > 0) {
            this.f4966j = ((j2 * 1.0f) / j3) * 360.0f;
            postInvalidate();
        }
    }

    public void setDuration(long j2) {
        this.f4967k = j2;
    }

    public void setThickInPx(int i2) {
        float f2 = i2;
        this.f4959c = f2;
        this.f4957a.setStrokeWidth(f2);
        a();
    }

    public void setUnderRingColor(int i2) {
        this.f4960d = i2;
    }

    public CountDownCloseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4959c = TypedValue.applyDimension(1, 2.5f, context.getResources().getDisplayMetrics());
        this.f4960d = Color.parseColor("#FF57575A");
        this.f4961e = -1;
        Paint paint = new Paint();
        this.f4957a = paint;
        paint.setAntiAlias(true);
        this.f4957a.setStrokeCap(Paint.Cap.ROUND);
        this.f4957a.setStyle(Paint.Style.STROKE);
        this.f4957a.setStrokeWidth(this.f4959c);
        Paint paint2 = new Paint();
        this.f4958b = paint2;
        paint2.setAntiAlias(true);
        this.f4958b.setColor(this.f4961e);
        this.f4965i = new RectF();
    }

    private void a() {
        float f2 = this.f4959c * 0.5f;
        float f3 = 0.0f + f2;
        this.f4965i.set(f3, f3, this.f4962f - f2, this.f4963g - f2);
        this.f4964h = ((int) this.f4965i.width()) >> 1;
    }
}
