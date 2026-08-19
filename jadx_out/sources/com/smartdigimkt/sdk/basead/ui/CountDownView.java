package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;

/* loaded from: classes5.dex */
public class CountDownView extends CloseImageView {

    /* renamed from: d, reason: collision with root package name */
    public final Paint f43377d;

    /* renamed from: e, reason: collision with root package name */
    public final Paint f43378e;

    /* renamed from: f, reason: collision with root package name */
    public final Paint f43379f;

    /* renamed from: g, reason: collision with root package name */
    public float f43380g;

    /* renamed from: h, reason: collision with root package name */
    public final float f43381h;

    /* renamed from: i, reason: collision with root package name */
    public int f43382i;

    /* renamed from: j, reason: collision with root package name */
    public int f43383j;

    /* renamed from: k, reason: collision with root package name */
    public final int f43384k;

    /* renamed from: l, reason: collision with root package name */
    public int f43385l;

    /* renamed from: m, reason: collision with root package name */
    public int f43386m;

    /* renamed from: n, reason: collision with root package name */
    public int f43387n;

    /* renamed from: o, reason: collision with root package name */
    public final RectF f43388o;

    /* renamed from: p, reason: collision with root package name */
    public float f43389p;

    /* renamed from: q, reason: collision with root package name */
    public String f43390q;

    /* renamed from: r, reason: collision with root package name */
    public long f43391r;

    /* renamed from: s, reason: collision with root package name */
    public float f43392s;

    /* renamed from: t, reason: collision with root package name */
    public final Paint.FontMetrics f43393t;

    /* renamed from: u, reason: collision with root package name */
    public Drawable f43394u;

    public CountDownView(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        String str;
        super.onDraw(canvas);
        if (this.f43394u != null && (str = this.f43390q) != null && str.length() == 1 && this.f43390q.charAt(0) == '0') {
            this.f43394u.setBounds(0, 0, getWidth(), getHeight());
            this.f43394u.draw(canvas);
            return;
        }
        canvas.drawCircle(this.f43388o.centerX(), this.f43388o.centerY(), this.f43387n, this.f43378e);
        this.f43377d.setColor(this.f43383j);
        canvas.drawArc(this.f43388o, 0.0f, 360.0f, false, this.f43377d);
        this.f43377d.setColor(this.f43384k);
        canvas.drawArc(this.f43388o, -90.0f, this.f43389p, false, this.f43377d);
        if (TextUtils.isEmpty(this.f43390q)) {
            return;
        }
        float fCenterY = this.f43388o.centerY();
        Paint.FontMetrics fontMetrics = this.f43393t;
        float f2 = fontMetrics.bottom;
        canvas.drawText(this.f43390q, this.f43388o.centerX() - (this.f43392s / 2.0f), (((f2 - fontMetrics.top) / 2.0f) - f2) + fCenterY, this.f43379f);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f43385l = i2;
        this.f43386m = i3;
        float f2 = this.f43380g * 0.5f;
        float f3 = 0.0f + f2;
        this.f43388o.set(f3, f3, i2 - f2, i3 - f2);
        this.f43387n = ((int) this.f43388o.width()) >> 1;
    }

    public void refresh(long j2) {
        try {
            long j3 = this.f43391r;
            if (j3 <= 0) {
                if (j3 == 0) {
                    this.f43389p = 360.0f;
                    this.f43390q = "0";
                    if (Looper.getMainLooper() == Looper.myLooper()) {
                        invalidate();
                        return;
                    } else {
                        postInvalidate();
                        return;
                    }
                }
                return;
            }
            this.f43389p = (int) ((360 * j2) / j3);
            int iCeil = (int) Math.ceil((j3 - j2) / 1000.0d);
            String str = this.f43390q;
            if (str == null || !str.equals(String.valueOf(iCeil))) {
                String strValueOf = String.valueOf(iCeil);
                this.f43390q = strValueOf;
                this.f43392s = this.f43379f.measureText(strValueOf);
            }
            if (Looper.getMainLooper() == Looper.myLooper()) {
                invalidate();
            } else {
                postInvalidate();
            }
        } catch (Throwable unused) {
        }
    }

    public void refreshToEnd() {
        if (this.f43391r > 0) {
            this.f43389p = 360.0f;
            this.f43390q = "0";
            if (Looper.getMainLooper() == Looper.myLooper()) {
                invalidate();
            } else {
                postInvalidate();
            }
        }
    }

    public void setBgColor(int i2) {
        this.f43382i = i2;
        this.f43378e.setColor(i2);
    }

    public void setCountDownEndDrawable(Drawable drawable) {
        this.f43394u = drawable;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            invalidate();
        } else {
            postInvalidate();
        }
    }

    public void setDuration(long j2) {
        this.f43391r = j2;
        this.f43390q = (j2 / 1000) + "";
    }

    public void setThickInPx(int i2) {
        float f2 = i2;
        this.f43380g = f2;
        this.f43377d.setStrokeWidth(f2);
        float f3 = this.f43380g * 0.5f;
        float f4 = 0.0f + f3;
        this.f43388o.set(f4, f4, this.f43385l - f3, this.f43386m - f3);
        this.f43387n = ((int) this.f43388o.width()) >> 1;
    }

    public void setUnderRingColor(int i2) {
        this.f43383j = i2;
    }

    public CountDownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43380g = TypedValue.applyDimension(1, 2.5f, context.getResources().getDisplayMetrics());
        float fApplyDimension = TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics());
        this.f43381h = fApplyDimension;
        this.f43382i = Color.parseColor("#66000000");
        this.f43383j = Color.parseColor("#CC000000");
        this.f43384k = -1;
        Paint paint = new Paint();
        this.f43377d = paint;
        paint.setAntiAlias(true);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.f43380g);
        Paint paint2 = new Paint(paint);
        this.f43378e = paint2;
        paint2.setColor(this.f43382i);
        paint2.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint();
        this.f43379f = paint3;
        paint3.setAntiAlias(true);
        paint3.setTextSize(fApplyDimension);
        paint3.setColor(-1);
        this.f43393t = paint3.getFontMetrics();
        this.f43388o = new RectF();
        new Rect();
        this.f43391r = -1L;
    }
}
