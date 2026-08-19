package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;

/* loaded from: classes2.dex */
public class CountDownView extends CloseImageView {

    /* renamed from: a, reason: collision with root package name */
    private Paint f4968a;

    /* renamed from: b, reason: collision with root package name */
    private Paint f4969b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f4970c;

    /* renamed from: d, reason: collision with root package name */
    private float f4971d;

    /* renamed from: e, reason: collision with root package name */
    private float f4972e;

    /* renamed from: f, reason: collision with root package name */
    private int f4973f;

    /* renamed from: g, reason: collision with root package name */
    private int f4974g;

    /* renamed from: h, reason: collision with root package name */
    private int f4975h;

    /* renamed from: i, reason: collision with root package name */
    private int f4976i;

    /* renamed from: j, reason: collision with root package name */
    private int f4977j;

    /* renamed from: k, reason: collision with root package name */
    private int f4978k;

    /* renamed from: l, reason: collision with root package name */
    private RectF f4979l;

    /* renamed from: m, reason: collision with root package name */
    private float f4980m;

    /* renamed from: n, reason: collision with root package name */
    private String f4981n;

    /* renamed from: o, reason: collision with root package name */
    private Rect f4982o;

    /* renamed from: p, reason: collision with root package name */
    private long f4983p;

    /* renamed from: q, reason: collision with root package name */
    private float f4984q;

    /* renamed from: r, reason: collision with root package name */
    private Paint.FontMetrics f4985r;

    /* renamed from: s, reason: collision with root package name */
    private Drawable f4986s;

    public CountDownView(Context context) {
        this(context, null);
    }

    private void a(Context context) {
        this.f4971d = TypedValue.applyDimension(1, 2.5f, context.getResources().getDisplayMetrics());
        this.f4972e = TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics());
        this.f4973f = Color.parseColor("#66000000");
        this.f4974g = Color.parseColor("#CC000000");
        this.f4975h = -1;
        Paint paint = new Paint();
        this.f4968a = paint;
        paint.setAntiAlias(true);
        this.f4968a.setStrokeCap(Paint.Cap.ROUND);
        this.f4968a.setStyle(Paint.Style.STROKE);
        this.f4968a.setStrokeWidth(this.f4971d);
        Paint paint2 = new Paint(this.f4968a);
        this.f4969b = paint2;
        paint2.setColor(this.f4973f);
        this.f4969b.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint();
        this.f4970c = paint3;
        paint3.setAntiAlias(true);
        this.f4970c.setTextSize(this.f4972e);
        this.f4970c.setColor(this.f4975h);
        this.f4979l = new RectF();
        this.f4982o = new Rect();
        this.f4983p = -1L;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f4986s != null && TextUtils.equals("0", this.f4981n)) {
            this.f4986s.setBounds(0, 0, getWidth(), getHeight());
            this.f4986s.draw(canvas);
            return;
        }
        canvas.drawCircle(this.f4979l.centerX(), this.f4979l.centerY(), this.f4978k, this.f4969b);
        this.f4968a.setColor(this.f4974g);
        canvas.drawArc(this.f4979l, 0.0f, 360.0f, false, this.f4968a);
        this.f4968a.setColor(this.f4975h);
        canvas.drawArc(this.f4979l, -90.0f, this.f4980m, false, this.f4968a);
        if (TextUtils.isEmpty(this.f4981n)) {
            return;
        }
        Paint paint = this.f4970c;
        String str = this.f4981n;
        paint.getTextBounds(str, 0, str.length(), this.f4982o);
        this.f4984q = this.f4970c.measureText(this.f4981n);
        this.f4985r = this.f4970c.getFontMetrics();
        String str2 = this.f4981n;
        float fCenterX = this.f4979l.centerX() - (this.f4984q / 2.0f);
        float fCenterY = this.f4979l.centerY();
        Paint.FontMetrics fontMetrics = this.f4985r;
        float f2 = fontMetrics.bottom;
        canvas.drawText(str2, fCenterX, fCenterY + (((f2 - fontMetrics.top) / 2.0f) - f2), this.f4970c);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f4976i = i2;
        this.f4977j = i3;
        a();
    }

    public void refresh(long j2) {
        long j3 = this.f4983p;
        if (j3 >= 0) {
            this.f4980m = ((j2 * 1.0f) / j3) * 360.0f;
            StringBuilder sb = new StringBuilder();
            sb.append((int) Math.ceil(j2 / 1000.0d));
            this.f4981n = sb.toString();
            postInvalidate();
        }
    }

    public void refreshToEnd() {
        if (this.f4983p > 0) {
            this.f4980m = 360.0f;
            this.f4981n = "0";
            postInvalidate();
        }
    }

    public void setBgColor(int i2) {
        this.f4973f = i2;
        this.f4969b.setColor(i2);
    }

    public void setCountDownEndDrawable(Drawable drawable) {
        this.f4986s = drawable;
        postInvalidate();
    }

    public void setDuration(long j2) {
        this.f4983p = j2;
        StringBuilder sb = new StringBuilder();
        sb.append(j2 / 1000);
        this.f4981n = sb.toString();
    }

    public void setThickInPx(int i2) {
        float f2 = i2;
        this.f4971d = f2;
        this.f4968a.setStrokeWidth(f2);
        a();
    }

    public void setUnderRingColor(int i2) {
        this.f4974g = i2;
    }

    public CountDownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4971d = TypedValue.applyDimension(1, 2.5f, context.getResources().getDisplayMetrics());
        this.f4972e = TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics());
        this.f4973f = Color.parseColor("#66000000");
        this.f4974g = Color.parseColor("#CC000000");
        this.f4975h = -1;
        Paint paint = new Paint();
        this.f4968a = paint;
        paint.setAntiAlias(true);
        this.f4968a.setStrokeCap(Paint.Cap.ROUND);
        this.f4968a.setStyle(Paint.Style.STROKE);
        this.f4968a.setStrokeWidth(this.f4971d);
        Paint paint2 = new Paint(this.f4968a);
        this.f4969b = paint2;
        paint2.setColor(this.f4973f);
        this.f4969b.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint();
        this.f4970c = paint3;
        paint3.setAntiAlias(true);
        this.f4970c.setTextSize(this.f4972e);
        this.f4970c.setColor(this.f4975h);
        this.f4979l = new RectF();
        this.f4982o = new Rect();
        this.f4983p = -1L;
    }

    private void a() {
        float f2 = this.f4971d * 0.5f;
        float f3 = 0.0f + f2;
        this.f4979l.set(f3, f3, this.f4976i - f2, this.f4977j - f2);
        this.f4978k = ((int) this.f4979l.width()) >> 1;
    }
}
