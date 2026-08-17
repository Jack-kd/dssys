package com.sigmob.sdk.base.views;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;

/* loaded from: classes4.dex */
public class an extends View {

    /* renamed from: a, reason: collision with root package name */
    private Paint f36832a;

    /* renamed from: b, reason: collision with root package name */
    private Paint f36833b;

    /* renamed from: c, reason: collision with root package name */
    private RectF f36834c;

    /* renamed from: d, reason: collision with root package name */
    private RectF f36835d;

    /* renamed from: e, reason: collision with root package name */
    private float f36836e;

    /* renamed from: f, reason: collision with root package name */
    private Float f36837f;

    /* renamed from: g, reason: collision with root package name */
    private float f36838g;

    /* renamed from: h, reason: collision with root package name */
    private Paint f36839h;

    /* renamed from: i, reason: collision with root package name */
    private float f36840i;

    /* renamed from: j, reason: collision with root package name */
    private PointF f36841j;

    /* renamed from: k, reason: collision with root package name */
    private Path f36842k;

    /* renamed from: l, reason: collision with root package name */
    private Paint f36843l;

    /* renamed from: m, reason: collision with root package name */
    private int f36844m;

    /* renamed from: n, reason: collision with root package name */
    private int f36845n;

    /* renamed from: o, reason: collision with root package name */
    private float f36846o;

    /* renamed from: p, reason: collision with root package name */
    private float f36847p;

    /* renamed from: q, reason: collision with root package name */
    private PointF f36848q;

    /* renamed from: r, reason: collision with root package name */
    private float f36849r;

    public an(Context context) {
        super(context);
        this.f36836e = 0.0f;
        this.f36838g = 3.0f;
        a(context);
    }

    private void b() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.an.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                an.this.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(2);
        valueAnimatorOfFloat.setDuration(2000L);
        valueAnimatorOfFloat.start();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f36843l == null) {
            return;
        }
        this.f36842k.reset();
        a(this.f36842k, this.f36841j);
        canvas.drawPath(this.f36842k, this.f36843l);
        this.f36842k.reset();
        a(this.f36842k, this.f36848q);
        canvas.drawPath(this.f36842k, this.f36843l);
        float f2 = this.f36838g;
        float f3 = this.f36844m;
        float f4 = this.f36846o;
        float f5 = this.f36847p;
        float f6 = (f3 - f4) - f5;
        this.f36834c.set(f2, f6, this.f36845n - f2, (f4 + f6) - (f5 * 2.0f));
        RectF rectF = this.f36834c;
        float f7 = this.f36847p;
        canvas.drawRoundRect(rectF, f7, f7, this.f36832a);
        float f8 = this.f36836e;
        float f9 = (f8 > 0.98f ? this.f36838g - this.f36847p : this.f36838g + ((1.0f - f8) * this.f36846o)) + f6;
        float f10 = this.f36846o;
        float f11 = this.f36838g;
        float f12 = f6 + f10 + f11;
        if (this.f36836e > 0.2f) {
            f12 = (f10 + f6) - f11;
        }
        this.f36835d.set(f2 + this.f36847p, f9, this.f36845n - f11, f12);
        canvas.drawRect(this.f36835d, this.f36833b);
        float fMin = Math.min(this.f36849r * Dips.dipsToIntPixels(3.0f, getContext()), this.f36838g);
        int i2 = this.f36845n;
        float f13 = i2 > 0 ? i2 / 5.0f : this.f36838g;
        float f14 = (i2 - f13) / 2.0f;
        float f15 = ((f6 + this.f36846o) - fMin) - this.f36838g;
        canvas.drawRect(f14, f15, f14 + f13, f15 + fMin, this.f36839h);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f36844m = i3;
        this.f36845n = i2;
        a();
    }

    public an(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36836e = 0.0f;
        this.f36838g = 3.0f;
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f36832a == null) {
            Paint paint = new Paint(1);
            this.f36832a = paint;
            paint.setColor(-1);
            this.f36832a.setStyle(Paint.Style.STROKE);
            float fDipsToIntPixels = Dips.dipsToIntPixels(this.f36838g, getContext());
            this.f36838g = fDipsToIntPixels;
            this.f36832a.setStrokeWidth(fDipsToIntPixels);
            Paint paint2 = new Paint(1);
            this.f36833b = paint2;
            paint2.setColor(-3355444);
            Paint paint3 = this.f36833b;
            Paint.Style style = Paint.Style.FILL;
            paint3.setStyle(style);
            Paint paint4 = new Paint(1);
            this.f36839h = paint4;
            paint4.setColor(-1);
            this.f36839h.setStyle(style);
            float fDipsToIntPixels2 = (this.f36844m * 1.0f) / Dips.dipsToIntPixels(92.0f, getContext());
            this.f36849r = fDipsToIntPixels2;
            this.f36840i = fDipsToIntPixels2 * Dips.dipsToIntPixels(11.0f, getContext());
            this.f36834c = new RectF();
            this.f36835d = new RectF();
            this.f36841j = new PointF(getWidth() / 2.0f, 0.0f);
            this.f36848q = new PointF(getWidth() / 2.0f, this.f36840i);
            this.f36842k = new Path();
            Paint paint5 = new Paint(1);
            this.f36843l = paint5;
            paint5.setStyle(style);
            this.f36843l.setColor(-1);
            this.f36846o = this.f36844m - (this.f36840i * 3.0f);
            this.f36847p = this.f36838g / 2.0f;
        }
    }

    public an(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f36836e = 0.0f;
        this.f36838g = 3.0f;
        a(context);
    }

    public void a(float f2) {
        if (this.f36843l == null) {
            return;
        }
        float fMax = Math.max(0.2f, f2);
        this.f36836e = fMax;
        float fMin = Math.min(1.0f, fMax);
        this.f36836e = fMin;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "rotationX", fMin * 40.0f, f2 * 40.0f);
        objectAnimatorOfFloat.setDuration(50L);
        objectAnimatorOfFloat.start();
        this.f36843l.setAlpha((int) (this.f36836e * 255.0f));
        invalidate();
    }

    private void a(Context context) {
        com.sigmob.sdk.base.utils.w.a(this, new Runnable() { // from class: com.sigmob.sdk.base.views.G
            @Override // java.lang.Runnable
            public final void run() {
                this.f36675b.a();
            }
        });
    }

    private void a(Path path, PointF pointF) {
        float fTan = (float) (pointF.x - (this.f36840i * Math.tan(0.7853981633974483d)));
        float f2 = pointF.y;
        float f3 = this.f36840i;
        float f4 = f2 + f3;
        float fTan2 = (float) (pointF.x + (f3 * Math.tan(0.7853981633974483d)));
        float f5 = pointF.y + this.f36840i;
        path.moveTo(fTan, f4);
        path.lineTo(pointF.x, pointF.y);
        path.lineTo(fTan2, f5);
        path.lineTo(pointF.x, pointF.y + (this.f36840i / 2.0f));
        path.close();
    }
}
