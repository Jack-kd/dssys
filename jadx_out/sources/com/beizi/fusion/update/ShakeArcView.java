package com.beizi.fusion.update;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.beizi.fusion.mh;

/* loaded from: classes2.dex */
public class ShakeArcView extends View {

    /* renamed from: a, reason: collision with root package name */
    private int f16539a;

    /* renamed from: b, reason: collision with root package name */
    private int f16540b;

    /* renamed from: c, reason: collision with root package name */
    private int f16541c;

    /* renamed from: d, reason: collision with root package name */
    private Paint f16542d;

    /* renamed from: e, reason: collision with root package name */
    private Paint f16543e;

    /* renamed from: f, reason: collision with root package name */
    private double f16544f;

    /* renamed from: g, reason: collision with root package name */
    private double f16545g;

    /* renamed from: h, reason: collision with root package name */
    private int f16546h;

    /* renamed from: i, reason: collision with root package name */
    private int f16547i;

    public ShakeArcView(Context context) {
        this(context, null);
    }

    private void a() {
        Paint paint = new Paint();
        this.f16542d = paint;
        paint.setAntiAlias(true);
        this.f16542d.setDither(true);
        this.f16542d.setStrokeWidth(this.f16541c);
        this.f16542d.setColor(this.f16539a);
        this.f16542d.setStyle(Paint.Style.STROKE);
        this.f16542d.setStrokeCap(Paint.Cap.ROUND);
    }

    private void b() {
        Paint paint = new Paint();
        this.f16543e = paint;
        paint.setAntiAlias(true);
        this.f16543e.setDither(true);
        this.f16543e.setStrokeWidth(this.f16541c);
        this.f16543e.setColor(this.f16540b);
        this.f16543e.setStyle(Paint.Style.STROKE);
        this.f16543e.setStrokeCap(Paint.Cap.ROUND);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        try {
            int i2 = this.f16541c;
            RectF rectF = new RectF(i2 / 2, i2 / 2, getWidth() - (this.f16541c / 2), getHeight() - (this.f16541c / 2));
            canvas.drawArc(rectF, 215.0f, 110.0f, false, this.f16542d);
            double d2 = this.f16545g;
            if (d2 >= 0.0d) {
                double d3 = this.f16544f;
                if (d3 > 0.0d) {
                    if (d2 >= d3) {
                        this.f16545g = d3;
                    }
                    float f2 = (float) (((float) this.f16545g) / d3);
                    mh.b("sweepAngle", "sweepAngle:" + f2 + ",mMaxProgress:" + this.f16544f + ",mCurrentProgress:" + this.f16545g);
                    int i3 = this.f16546h;
                    if (i3 == 1) {
                        canvas.drawArc(rectF, 215.0f, f2 * 110.0f, false, this.f16543e);
                    } else if (i3 == 2) {
                        canvas.drawArc(rectF, 325.0f, (-f2) * 110.0f, false, this.f16543e);
                    } else {
                        canvas.drawArc(rectF, 270.0f, (-f2) * 55.0f, false, this.f16543e);
                        canvas.drawArc(rectF, 270.0f, f2 * 55.0f, false, this.f16543e);
                    }
                }
            }
            int color = Color.parseColor("#CACCCA");
            if (this.f16545g == this.f16544f) {
                color = Color.parseColor("#FFFFFF");
            }
            int i4 = color;
            int width = getWidth();
            int height = getHeight();
            int iMin = (Math.min(width, height) / 2) + (this.f16541c * this.f16547i);
            int i5 = width / 2;
            int i6 = height / 2;
            float fCos = (float) Math.cos(Math.toRadians(45.0d));
            int i7 = this.f16546h;
            if (i7 == 1) {
                double d4 = i5 * 1.5d;
                double d5 = fCos * iMin;
                float f3 = (float) (d4 + (0.4d * d5));
                double d6 = d5 * 0.2d;
                float f4 = (float) (d4 + d6);
                float f5 = i6 / 2;
                a(canvas, true, f3, (float) ((i6 / 2) - d6), f4, f5, f3, f5, i4);
                return;
            }
            if (i7 == 2) {
                double d7 = fCos * iMin;
                float f6 = (float) ((i5 / 2) - (0.4d * d7));
                double d8 = d7 * 0.2d;
                float f7 = i6 / 2;
                a(canvas, true, f6, (float) ((i6 / 2) - d8), (float) ((i5 / 2) - d8), f7, f6, f7, i4);
                return;
            }
            double d9 = fCos * iMin;
            double d10 = 0.4d * d9;
            float f8 = (float) ((i5 / 2) - d10);
            double d11 = d9 * 0.2d;
            float f9 = i6 / 2;
            a(canvas, true, f8, (float) ((i6 / 2) - d11), (float) ((i5 / 2) - d11), f9, f8, f9, i4);
            double d12 = i5 * 1.5d;
            float f10 = (float) (d12 + d10);
            float f11 = i6 / 2;
            a(canvas, true, f10, (float) ((i6 / 2) - d11), (float) (d12 + d11), f11, f10, f11, i4);
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int size = View.MeasureSpec.getSize(i2) + (this.f16541c * 2);
        int size2 = View.MeasureSpec.getSize(i3) + (this.f16541c * 2);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    public ShakeArcView setArrowDirection(int i2) {
        this.f16546h = i2;
        return this;
    }

    public ShakeArcView setCurrentProgress(double d2) {
        this.f16545g = d2 * 100.0d;
        invalidate();
        return this;
    }

    public void setLineRadius(int i2) {
        this.f16547i = i2;
    }

    public void setLineWidth(int i2) {
        try {
            this.f16541c = i2;
            Paint paint = this.f16542d;
            if (paint != null) {
                paint.setStrokeWidth(i2);
            }
            Paint paint2 = this.f16543e;
            if (paint2 != null) {
                paint2.setStrokeWidth(this.f16541c);
            }
        } catch (Exception unused) {
        }
    }

    public ShakeArcView setMaxProgress(double d2) {
        this.f16544f = d2 * 100.0d;
        return this;
    }

    public ShakeArcView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShakeArcView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f16539a = Color.parseColor("#CACCCA");
        this.f16540b = Color.parseColor("#FFFFFF");
        this.f16541c = 6;
        this.f16544f = -1.0d;
        this.f16545g = -1.0d;
        this.f16546h = 0;
        this.f16547i = 2;
        a();
        b();
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
        } catch (Exception unused) {
        }
    }
}
