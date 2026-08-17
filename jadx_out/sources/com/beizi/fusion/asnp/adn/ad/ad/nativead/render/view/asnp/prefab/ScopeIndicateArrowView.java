package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public class ScopeIndicateArrowView extends View {

    /* renamed from: a, reason: collision with root package name */
    private final int f12829a;

    /* renamed from: b, reason: collision with root package name */
    private final int f12830b;

    /* renamed from: c, reason: collision with root package name */
    private int f12831c;

    /* renamed from: d, reason: collision with root package name */
    private Paint f12832d;

    /* renamed from: e, reason: collision with root package name */
    private Paint f12833e;

    /* renamed from: f, reason: collision with root package name */
    private double f12834f;

    /* renamed from: g, reason: collision with root package name */
    private double f12835g;

    /* renamed from: h, reason: collision with root package name */
    private int f12836h;

    /* renamed from: i, reason: collision with root package name */
    private int f12837i;

    public ScopeIndicateArrowView(Context context) {
        this(context, null);
    }

    private void a() {
        Paint paint = new Paint();
        this.f12832d = paint;
        paint.setAntiAlias(true);
        this.f12832d.setDither(true);
        this.f12832d.setStrokeWidth(this.f12831c);
        this.f12832d.setColor(this.f12829a);
        this.f12832d.setStyle(Paint.Style.STROKE);
        this.f12832d.setStrokeCap(Paint.Cap.ROUND);
    }

    private void b() {
        Paint paint = new Paint();
        this.f12833e = paint;
        paint.setAntiAlias(true);
        this.f12833e.setDither(true);
        this.f12833e.setStrokeWidth(this.f12831c);
        this.f12833e.setColor(this.f12830b);
        this.f12833e.setStyle(Paint.Style.STROKE);
        this.f12833e.setStrokeCap(Paint.Cap.ROUND);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        try {
            float f2 = this.f12831c / 2.0f;
            RectF rectF = new RectF(f2, f2, getWidth() - (this.f12831c / 2.0f), getHeight() - (this.f12831c / 2.0f));
            canvas.drawArc(rectF, 215.0f, 110.0f, false, this.f12832d);
            double d2 = this.f12835g;
            if (d2 >= 0.0d) {
                double d3 = this.f12834f;
                if (d3 > 0.0d) {
                    if (d2 >= d3) {
                        this.f12835g = d3;
                    }
                    float f3 = (float) (((float) this.f12835g) / d3);
                    int i2 = this.f12836h;
                    if (i2 == 1) {
                        canvas.drawArc(rectF, 215.0f, 110.0f * f3, false, this.f12833e);
                    } else if (i2 == 2) {
                        canvas.drawArc(rectF, 325.0f, 110.0f * (-f3), false, this.f12833e);
                    } else {
                        canvas.drawArc(rectF, 270.0f, (-f3) * 55.0f, false, this.f12833e);
                        canvas.drawArc(rectF, 270.0f, f3 * 55.0f, false, this.f12833e);
                    }
                }
            }
            int color = Color.parseColor("#CACCCA");
            if (this.f12835g == this.f12834f) {
                color = Color.parseColor("#FFFFFF");
            }
            int i3 = color;
            int width = getWidth();
            int height = getHeight();
            int iMin = (Math.min(width, height) / 2) + (this.f12831c * this.f12837i);
            int i4 = width / 2;
            int i5 = height / 2;
            float fCos = (float) Math.cos(Math.toRadians(45.0d));
            int i6 = this.f12836h;
            if (i6 == 1) {
                b(canvas, i4, i5, fCos, iMin, i3);
            } else {
                if (i6 == 2) {
                    a(canvas, i4, i5, fCos, iMin, i3);
                    return;
                }
                float f4 = iMin;
                a(canvas, i4, i5, fCos, f4, i3);
                b(canvas, i4, i5, fCos, f4, i3);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int size = View.MeasureSpec.getSize(i2) + (this.f12831c * 2);
        int size2 = View.MeasureSpec.getSize(i3) + (this.f12831c * 2);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    public void setArrowDirection(int i2) {
        this.f12836h = i2;
    }

    public void setCurrentProgress(double d2) {
        this.f12835g = d2 * 100.0d;
        invalidate();
    }

    public void setLineRadius(int i2) {
        this.f12837i = i2;
    }

    public void setLineWidth(int i2) {
        try {
            this.f12831c = i2;
            Paint paint = this.f12832d;
            if (paint != null) {
                paint.setStrokeWidth(i2);
            }
            Paint paint2 = this.f12833e;
            if (paint2 != null) {
                paint2.setStrokeWidth(this.f12831c);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setMaxProgress(double d2) {
        this.f12834f = d2 * 100.0d;
    }

    public ScopeIndicateArrowView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScopeIndicateArrowView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12829a = Color.parseColor("#CACCCA");
        this.f12830b = Color.parseColor("#FFFFFF");
        this.f12831c = 8;
        this.f12834f = -1.0d;
        this.f12835g = -1.0d;
        this.f12836h = 0;
        this.f12837i = 2;
        a();
        b();
    }

    private void a(Canvas canvas, int i2, int i3, float f2, float f3, int i4) {
        double d2 = i2 / 2;
        double d3 = f2 * f3;
        float f4 = (float) (d2 - (0.4d * d3));
        int i5 = i3 / 2;
        double d4 = d3 * 0.2d;
        float f5 = i5;
        a(canvas, true, f4, (float) (i5 - d4), (float) (d2 - d4), f5, f4, f5, i4);
    }

    private void b(Canvas canvas, int i2, int i3, float f2, float f3, int i4) {
        double d2 = i2 * 1.5d;
        double d3 = f2 * f3;
        float f4 = (float) ((0.4d * d3) + d2);
        int i5 = i3 / 2;
        double d4 = d3 * 0.2d;
        float f5 = i5;
        a(canvas, true, f4, (float) (i5 - d4), (float) (d2 + d4), f5, f4, f5, i4);
    }

    private void a(Canvas canvas, boolean z2, float f2, float f3, float f4, float f5, float f6, float f7, int i2) {
        try {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setColor(i2);
            if (z2) {
                paint.setStyle(Paint.Style.FILL);
            } else {
                paint.setStyle(Paint.Style.STROKE);
            }
            Path path = new Path();
            path.moveTo(f2, f3);
            path.lineTo(f4, f5);
            path.lineTo(f6, f7);
            path.lineTo(f2, f3);
            path.close();
            canvas.drawPath(path, paint);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
