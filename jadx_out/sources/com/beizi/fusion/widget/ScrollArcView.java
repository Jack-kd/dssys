package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public class ScrollArcView extends View {

    /* renamed from: a, reason: collision with root package name */
    private Path f17135a;

    /* renamed from: b, reason: collision with root package name */
    private Path f17136b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f17137c;

    /* renamed from: d, reason: collision with root package name */
    private Paint f17138d;

    /* renamed from: e, reason: collision with root package name */
    private float f17139e;

    /* renamed from: f, reason: collision with root package name */
    private float f17140f;

    /* renamed from: g, reason: collision with root package name */
    private float f17141g;

    /* renamed from: h, reason: collision with root package name */
    private int f17142h;

    /* renamed from: i, reason: collision with root package name */
    private int f17143i;

    /* renamed from: j, reason: collision with root package name */
    private int f17144j;

    public ScrollArcView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17139e = 100.0f;
        this.f17140f = 0.0f;
        this.f17141g = 0.0f;
        f();
    }

    private void a() {
        float f2 = this.f17142h / 2.0f;
        float f3 = this.f17143i / 2.0f;
        float fMin = Math.min(r0, r3) / 2.0f;
        this.f17135a.reset();
        this.f17136b.reset();
        Path path = this.f17136b;
        Path.Direction direction = Path.Direction.CW;
        path.addCircle(f2, f3, fMin, direction);
        this.f17135a.addCircle(f2, f3, fMin, direction);
    }

    private void b() {
        float f2 = (this.f17143i - ((this.f17139e + 10.0f) / 2.0f)) - this.f17141g;
        this.f17135a.moveTo(0.0f, f2);
        Path path = this.f17135a;
        float f3 = this.f17142h;
        path.quadTo(f3 / 2.0f, this.f17139e + f2, f3, f2);
        this.f17136b.moveTo(0.0f, f2);
        Path path2 = this.f17136b;
        float f4 = this.f17142h;
        path2.quadTo(f4 / 2.0f, this.f17139e + f2, f4, f2);
        this.f17136b.lineTo(this.f17142h, 0.0f);
        this.f17136b.lineTo(0.0f, 0.0f);
        this.f17136b.close();
    }

    private void c() {
        float f2 = (this.f17142h - ((this.f17139e + 10.0f) / 2.0f)) - this.f17140f;
        this.f17135a.moveTo(f2, 0.0f);
        Path path = this.f17135a;
        float f3 = f2 - this.f17139e;
        float f4 = this.f17143i;
        path.quadTo(f3, f4 / 2.0f, f2, f4);
        this.f17136b.moveTo(f2, 0.0f);
        Path path2 = this.f17136b;
        float f5 = f2 - this.f17139e;
        float f6 = this.f17143i;
        path2.quadTo(f5, f6 / 2.0f, f2, f6);
        this.f17136b.lineTo(this.f17142h, this.f17143i);
        this.f17136b.lineTo(this.f17142h, 0.0f);
        this.f17136b.close();
    }

    private void d() {
        float f2 = ((this.f17139e + 10.0f) / 2.0f) + this.f17140f;
        this.f17135a.moveTo(f2, 0.0f);
        Path path = this.f17135a;
        float f3 = this.f17139e + f2;
        float f4 = this.f17143i;
        path.quadTo(f3, f4 / 2.0f, f2, f4);
        this.f17136b.moveTo(f2, 0.0f);
        Path path2 = this.f17136b;
        float f5 = this.f17139e + f2;
        float f6 = this.f17143i;
        path2.quadTo(f5, f6 / 2.0f, f2, f6);
        this.f17136b.lineTo(0.0f, this.f17143i);
        this.f17136b.lineTo(0.0f, 0.0f);
        this.f17136b.close();
    }

    private void e() {
        float f2 = ((this.f17139e + 10.0f) / 2.0f) + this.f17141g;
        this.f17135a.moveTo(0.0f, f2);
        Path path = this.f17135a;
        float f3 = this.f17142h;
        path.quadTo(f3 / 2.0f, f2 - this.f17139e, f3, f2);
        this.f17136b.moveTo(0.0f, f2);
        Path path2 = this.f17136b;
        float f4 = this.f17142h;
        path2.quadTo(f4 / 2.0f, f2 - this.f17139e, f4, f2);
        this.f17136b.lineTo(this.f17142h, this.f17143i);
        this.f17136b.lineTo(0.0f, this.f17143i);
        this.f17136b.close();
    }

    private void f() {
        float fApplyDimension = TypedValue.applyDimension(1, this.f17139e, getResources().getDisplayMetrics());
        this.f17139e = fApplyDimension;
        this.f17143i = ((int) fApplyDimension) + 10;
        Paint paint = new Paint();
        this.f17137c = paint;
        paint.setColor(Color.parseColor("#E5E5E5"));
        this.f17137c.setStyle(Paint.Style.STROKE);
        this.f17137c.setStrokeWidth(8.0f);
        this.f17137c.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f17138d = paint2;
        paint2.setColor(Color.parseColor("#000000"));
        this.f17138d.setStyle(Paint.Style.FILL);
        this.f17138d.setAntiAlias(true);
        this.f17135a = new Path();
        this.f17136b = new Path();
    }

    private void g() {
        this.f17135a.reset();
        this.f17136b.reset();
        int i2 = this.f17144j;
        if (i2 == 0) {
            e();
            return;
        }
        if (i2 == 1) {
            d();
            return;
        }
        if (i2 == 2) {
            c();
        } else if (i2 == 3) {
            b();
        } else {
            if (i2 != 4) {
                return;
            }
            a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f17136b, this.f17138d);
        canvas.drawPath(this.f17135a, this.f17137c);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f17142h = i2;
        this.f17143i = i3;
        g();
    }

    public void setArcColor(int i2) {
        this.f17137c.setColor(i2);
        invalidate();
    }

    public void setArcDirection(int i2) {
        this.f17144j = i2;
        g();
        invalidate();
    }

    public void setArcHeight(int i2) {
        this.f17139e = i2;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        this.f17138d.setColor(i2);
        invalidate();
    }

    public void setOffset(float f2) {
        this.f17141g = TypedValue.applyDimension(1, f2, getResources().getDisplayMetrics());
        g();
        invalidate();
    }

    public void setOffsetX(float f2) {
        this.f17140f = f2;
        g();
        invalidate();
    }

    public void setOffsetY(float f2) {
        this.f17141g = f2;
        g();
        invalidate();
    }

    public void setArcHeight(float f2) {
        this.f17139e = TypedValue.applyDimension(1, f2, getResources().getDisplayMetrics());
        g();
        invalidate();
    }
}
