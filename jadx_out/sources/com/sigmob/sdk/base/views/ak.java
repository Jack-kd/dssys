package com.sigmob.sdk.base.views;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.czhj.sdk.common.utils.Dips;

/* loaded from: classes4.dex */
public class ak extends View {

    /* renamed from: a, reason: collision with root package name */
    private float f36799a;

    /* renamed from: b, reason: collision with root package name */
    private Paint f36800b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f36801c;

    /* renamed from: d, reason: collision with root package name */
    private Paint f36802d;

    /* renamed from: e, reason: collision with root package name */
    private Path f36803e;

    /* renamed from: f, reason: collision with root package name */
    private Path f36804f;

    /* renamed from: g, reason: collision with root package name */
    private Path f36805g;

    /* renamed from: h, reason: collision with root package name */
    private PointF f36806h;

    /* renamed from: i, reason: collision with root package name */
    private PointF f36807i;

    /* renamed from: j, reason: collision with root package name */
    private PointF f36808j;

    /* renamed from: k, reason: collision with root package name */
    private float f36809k;

    public ak(Context context) {
        super(context);
        b();
    }

    private void c() {
        this.f36803e.reset();
        this.f36804f.reset();
        this.f36805g.reset();
        a(this.f36803e, this.f36806h);
        a(this.f36804f, this.f36807i);
        a(this.f36805g, this.f36808j);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f36803e, this.f36800b);
        canvas.drawPath(this.f36804f, this.f36801c);
        canvas.drawPath(this.f36805g, this.f36802d);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        float f2 = i2 / 2.0f;
        float f3 = i3;
        float fDipsToIntPixels = Dips.dipsToIntPixels(13.0f, getContext());
        this.f36806h = new PointF(f2, this.f36799a + f3);
        this.f36807i = new PointF(f2, this.f36799a + f3 + fDipsToIntPixels);
        this.f36808j = new PointF(f2, f3 + this.f36799a + (fDipsToIntPixels * 2.0f));
        c();
        a();
    }

    public ak(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    private AnimatorSet a(final PointF pointF, final Paint paint, int i2) {
        int alpha = paint.getAlpha();
        float f2 = pointF.y;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, (f2 - getHeight()) - this.f36799a);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.E
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f36671a.a(pointF, valueAnimator);
            }
        });
        valueAnimatorOfFloat.setRepeatCount(-1);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(alpha, 0);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.F
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f36673a.a(paint, valueAnimator);
            }
        });
        valueAnimatorOfInt.setRepeatCount(-1);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(i2 * 1000);
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfInt);
        return animatorSet;
    }

    private void b() {
        float fDipsToIntPixels = Dips.dipsToIntPixels(5.0f, getContext());
        this.f36799a = fDipsToIntPixels;
        this.f36809k = fDipsToIntPixels * 2.0f;
        Paint paint = new Paint(1);
        this.f36800b = paint;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.f36800b.setStrokeWidth(this.f36799a);
        this.f36800b.setColor(-1);
        this.f36800b.setAlpha(255);
        Paint paint2 = new Paint(1);
        this.f36801c = paint2;
        paint2.setStyle(style);
        this.f36801c.setStrokeWidth(this.f36799a);
        this.f36801c.setColor(-1);
        this.f36801c.setAlpha(127);
        Paint paint3 = new Paint(1);
        this.f36802d = paint3;
        paint3.setStyle(style);
        this.f36802d.setStrokeWidth(this.f36799a);
        this.f36802d.setColor(-1);
        this.f36802d.setAlpha(76);
        this.f36803e = new Path();
        this.f36804f = new Path();
        this.f36805g = new Path();
    }

    public ak(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        b();
    }

    public void a() {
        AnimatorSet animatorSetA = a(this.f36806h, this.f36800b, 2);
        AnimatorSet animatorSetA2 = a(this.f36807i, this.f36801c, 2);
        AnimatorSet animatorSetA3 = a(this.f36808j, this.f36802d, 2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animatorSetA, animatorSetA2, animatorSetA3);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Paint paint, ValueAnimator valueAnimator) {
        paint.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        invalidate();
    }

    private void a(Path path, PointF pointF) {
        float fTan = (float) (pointF.x - (this.f36809k * Math.tan(2.0943951023931953d)));
        float f2 = pointF.y;
        float f3 = this.f36809k;
        float f4 = f2 + f3;
        float fTan2 = (float) (pointF.x + (f3 * Math.tan(2.0943951023931953d)));
        float f5 = pointF.y + this.f36809k;
        path.moveTo(fTan, f4);
        path.lineTo(pointF.x, pointF.y);
        path.lineTo(fTan2, f5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(PointF pointF, ValueAnimator valueAnimator) {
        pointF.y = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        c();
        invalidate();
    }
}
