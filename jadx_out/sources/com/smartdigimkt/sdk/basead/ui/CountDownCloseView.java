package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.TypedValue;

/* loaded from: classes5.dex */
public class CountDownCloseView extends CloseImageView {

    /* renamed from: d, reason: collision with root package name */
    public final Paint f43367d;

    /* renamed from: e, reason: collision with root package name */
    public final Paint f43368e;

    /* renamed from: f, reason: collision with root package name */
    public float f43369f;

    /* renamed from: g, reason: collision with root package name */
    public int f43370g;

    /* renamed from: h, reason: collision with root package name */
    public final int f43371h;

    /* renamed from: i, reason: collision with root package name */
    public int f43372i;

    /* renamed from: j, reason: collision with root package name */
    public int f43373j;

    /* renamed from: k, reason: collision with root package name */
    public final RectF f43374k;

    /* renamed from: l, reason: collision with root package name */
    public float f43375l;

    /* renamed from: m, reason: collision with root package name */
    public long f43376m;

    public CountDownCloseView(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f43375l < 360.0f) {
            this.f43367d.setColor(this.f43370g);
            canvas.drawArc(this.f43374k, 0.0f, 360.0f, false, this.f43367d);
            this.f43367d.setColor(this.f43371h);
            canvas.drawArc(this.f43374k, -90.0f, this.f43375l, false, this.f43367d);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f43372i = i2;
        this.f43373j = i3;
        float f2 = this.f43369f * 0.5f;
        float f3 = 0.0f + f2;
        this.f43374k.set(f3, f3, i2 - f2, i3 - f2);
        this.f43374k.width();
    }

    public void refresh(long j2) {
        long j3 = this.f43376m;
        if (j3 > 0) {
            this.f43375l = ((j2 * 1.0f) / j3) * 360.0f;
            if (Looper.getMainLooper() == Looper.myLooper()) {
                invalidate();
            } else {
                postInvalidate();
            }
        }
    }

    public void setDuration(long j2) {
        this.f43376m = j2;
    }

    public void setThickInPx(int i2) {
        float f2 = i2;
        this.f43369f = f2;
        this.f43367d.setStrokeWidth(f2);
        float f3 = this.f43369f * 0.5f;
        float f4 = 0.0f + f3;
        this.f43374k.set(f4, f4, this.f43372i - f3, this.f43373j - f3);
        this.f43374k.width();
    }

    public void setUnderRingColor(int i2) {
        this.f43370g = i2;
    }

    public CountDownCloseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43369f = TypedValue.applyDimension(1, 2.5f, context.getResources().getDisplayMetrics());
        this.f43370g = Color.parseColor("#FF57575A");
        this.f43371h = -1;
        Paint paint = new Paint();
        this.f43367d = paint;
        paint.setAntiAlias(true);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.f43369f);
        Paint paint2 = new Paint();
        this.f43368e = paint2;
        paint2.setAntiAlias(true);
        paint2.setColor(-1);
        this.f43374k = new RectF();
    }
}
