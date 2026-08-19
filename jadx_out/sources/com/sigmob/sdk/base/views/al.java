package com.sigmob.sdk.base.views;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;

/* loaded from: classes4.dex */
public class al extends View {

    /* renamed from: a, reason: collision with root package name */
    private Paint f36810a;

    /* renamed from: b, reason: collision with root package name */
    private Paint f36811b;

    /* renamed from: c, reason: collision with root package name */
    private RectF f36812c;

    /* renamed from: d, reason: collision with root package name */
    private RectF f36813d;

    /* renamed from: e, reason: collision with root package name */
    private float f36814e;

    /* renamed from: f, reason: collision with root package name */
    private float f36815f;

    /* renamed from: g, reason: collision with root package name */
    private Paint f36816g;

    /* renamed from: h, reason: collision with root package name */
    private float f36817h;

    /* renamed from: i, reason: collision with root package name */
    private PointF f36818i;

    /* renamed from: j, reason: collision with root package name */
    private Path f36819j;

    /* renamed from: k, reason: collision with root package name */
    private Paint f36820k;

    /* renamed from: l, reason: collision with root package name */
    private int f36821l;

    /* renamed from: m, reason: collision with root package name */
    private int f36822m;

    /* renamed from: n, reason: collision with root package name */
    private float f36823n;

    /* renamed from: o, reason: collision with root package name */
    private float f36824o;

    /* renamed from: p, reason: collision with root package name */
    private float f36825p;

    /* renamed from: q, reason: collision with root package name */
    private PointF f36826q;

    /* renamed from: r, reason: collision with root package name */
    private float f36827r;

    public al(Context context) {
        super(context);
        this.f36814e = 0.0f;
        this.f36815f = 1.0f;
    }

    private void a() {
        Paint paint = new Paint(1);
        this.f36810a = paint;
        paint.setColor(-1);
        this.f36810a.setStyle(Paint.Style.STROKE);
        float fDipsToIntPixels = Dips.dipsToIntPixels(1.0f, getContext());
        this.f36815f = fDipsToIntPixels;
        this.f36810a.setStrokeWidth((this.f36821l / (100.0f * fDipsToIntPixels)) * 3.0f * fDipsToIntPixels);
        Paint paint2 = new Paint(1);
        this.f36811b = paint2;
        paint2.setColor(Color.parseColor("#B7B7B7"));
        Paint paint3 = this.f36811b;
        Paint.Style style = Paint.Style.FILL;
        paint3.setStyle(style);
        Paint paint4 = new Paint(1);
        this.f36816g = paint4;
        paint4.setColor(-1);
        this.f36816g.setStyle(style);
        int iDipsToIntPixels = Dips.dipsToIntPixels(92.0f, getContext());
        int i2 = this.f36821l;
        this.f36827r = (i2 * 1.0f) / iDipsToIntPixels;
        this.f36817h = i2 * 0.1f;
        this.f36812c = new RectF();
        this.f36813d = new RectF();
        float f2 = this.f36821l * 0.2f;
        this.f36818i = new PointF(getWidth() / 2.0f, f2);
        this.f36826q = new PointF(getWidth() / 2.0f, f2 + this.f36817h);
        this.f36819j = new Path();
        Paint paint5 = new Paint(1);
        this.f36820k = paint5;
        paint5.setStyle(style);
        this.f36820k.setColor(-1);
        float f3 = this.f36821l * 0.3f;
        this.f36823n = f3;
        this.f36824o = f3 * 0.9f;
        this.f36825p = this.f36815f * 2.0f;
    }

    private void b() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.al.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                al.this.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
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
        if (this.f36810a == null) {
            return;
        }
        this.f36819j.reset();
        a(this.f36819j, this.f36818i);
        canvas.drawPath(this.f36819j, this.f36820k);
        this.f36819j.reset();
        a(this.f36819j, this.f36826q);
        canvas.drawPath(this.f36819j, this.f36820k);
        int i2 = this.f36821l;
        float f2 = this.f36822m;
        float f3 = this.f36824o;
        float f4 = (f2 - f3) / 2.0f;
        float f5 = this.f36823n;
        float f6 = (i2 - f5) - (i2 * 0.2f);
        RectF rectF = this.f36812c;
        float f7 = this.f36825p;
        rectF.set(f4 + f7, f6, (f3 + f4) - f7, f5 + f6 + this.f36815f);
        RectF rectF2 = this.f36812c;
        float f8 = this.f36825p;
        canvas.drawRoundRect(rectF2, f8, f8, this.f36810a);
        float f9 = this.f36814e;
        float f10 = (f9 > 0.98f ? this.f36815f : this.f36815f + ((1.0f - f9) * this.f36823n)) + f6;
        float f11 = this.f36812c.bottom;
        float f12 = this.f36815f;
        if (f10 >= f11 - f12) {
            f10 = f11 - f12;
        }
        this.f36813d.set(this.f36825p + f4, f10, (f4 + this.f36824o) - (f12 * 2.0f), f11);
        canvas.drawRect(this.f36813d, this.f36811b);
        float fMin = Math.min(this.f36827r * Dips.dipsToIntPixels(3.0f, getContext()), this.f36815f * 2.0f);
        float f13 = this.f36824o;
        float f14 = f13 > 0.0f ? f13 / 5.0f : this.f36815f * 3.0f;
        float f15 = (this.f36822m - f14) / 2.0f;
        float f16 = this.f36823n;
        float f17 = (f6 + f16) - (f16 / 4.0f);
        canvas.drawRect(f15, f17, f15 + f14, f17 + fMin, this.f36816g);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f36821l = i3;
        this.f36822m = i2;
        a();
    }

    public al(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36814e = 0.0f;
        this.f36815f = 1.0f;
    }

    public void a(float f2) {
        if (this.f36820k == null) {
            return;
        }
        float fMax = Math.max(0.0f, f2);
        this.f36814e = fMax;
        float fMin = Math.min(1.0f, fMax);
        this.f36814e = fMin;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "rotationX", fMin * 40.0f, f2 * 40.0f);
        objectAnimatorOfFloat.setDuration(50L);
        objectAnimatorOfFloat.start();
        this.f36820k.setAlpha((int) (this.f36814e * 255.0f));
        invalidate();
    }

    public al(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f36814e = 0.0f;
        this.f36815f = 1.0f;
    }

    private void a(Path path, PointF pointF) {
        float fTan = (float) (pointF.x - (this.f36817h * Math.tan(0.7853981633974483d)));
        float f2 = pointF.y;
        float f3 = this.f36817h;
        float f4 = f2 + f3;
        float fTan2 = (float) (pointF.x + (f3 * Math.tan(0.7853981633974483d)));
        float f5 = pointF.y + this.f36817h;
        path.moveTo(fTan, f4);
        path.lineTo(pointF.x, pointF.y);
        path.lineTo(fTan2, f5);
        path.lineTo(pointF.x, pointF.y + (this.f36817h / 2.0f));
        path.close();
    }
}
