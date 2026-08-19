package com.sigmob.sdk.base.views;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import com.czhj.sdk.common.utils.Dips;
import com.sigmob.sdk.base.common.C1244a;

/* loaded from: classes4.dex */
public class ao extends View {

    /* renamed from: a, reason: collision with root package name */
    private Paint f36851a;

    /* renamed from: b, reason: collision with root package name */
    private RectF f36852b;

    /* renamed from: c, reason: collision with root package name */
    private float f36853c;

    /* renamed from: d, reason: collision with root package name */
    private float f36854d;

    /* renamed from: e, reason: collision with root package name */
    private float f36855e;

    /* renamed from: f, reason: collision with root package name */
    private int f36856f;

    /* renamed from: g, reason: collision with root package name */
    private int f36857g;

    /* renamed from: h, reason: collision with root package name */
    private int f36858h;

    /* renamed from: i, reason: collision with root package name */
    private int f36859i;

    /* renamed from: j, reason: collision with root package name */
    private int f36860j;

    /* renamed from: k, reason: collision with root package name */
    private int f36861k;

    /* renamed from: l, reason: collision with root package name */
    private int f36862l;

    /* renamed from: m, reason: collision with root package name */
    private Path f36863m;

    /* renamed from: n, reason: collision with root package name */
    private AnimatorSet f36864n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f36865o;

    public ao(Context context) {
        super(context);
        this.f36851a = new Paint(1);
        this.f36863m = new Path();
        this.f36852b = new RectF();
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f36861k = getWidth();
        int height = getHeight();
        this.f36862l = height;
        if (this.f36861k == 0 || height == 0) {
            return;
        }
        this.f36851a.setStyle(Paint.Style.STROKE);
        int iDipsToIntPixels = Dips.dipsToIntPixels(1.0f, getContext());
        this.f36857g = iDipsToIntPixels;
        this.f36851a.setStrokeWidth(iDipsToIntPixels);
        this.f36851a.setColor(-1);
        this.f36856f = (int) ((this.f36861k / (this.f36857g * 75.0f)) * Dips.dipsToIntPixels(5.0f, getContext()));
        setLayerType(2, null);
        float f2 = this.f36861k;
        int i2 = this.f36857g;
        this.f36858h = Math.max((int) ((f2 / (i2 * 25.0f)) * i2 * 11.0f), i2 * 3);
        float f3 = this.f36861k;
        int i3 = this.f36857g;
        this.f36859i = Math.max((int) ((f3 / (i3 * 25.0f)) * 3.0f * i3), i3 * 2);
        float f4 = this.f36861k;
        int i4 = this.f36857g;
        this.f36860j = Math.max((int) ((f4 / (i4 * 25.0f)) * 11.0f * i4), i4 * 5);
        e();
    }

    private void e() {
        AnimatorSet animatorSet = this.f36864n;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.f36864n = new AnimatorSet();
        this.f36864n.playSequentially(a(-45), a(45), getFlipLeftAnimation(), getFlipRightAnimation());
        this.f36864n.addListener(new Animator.AnimatorListener() { // from class: com.sigmob.sdk.base.views.ao.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ao.this.f36864n == null || !ao.this.f36865o) {
                    return;
                }
                ao.this.f36864n.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        if (this.f36865o) {
            this.f36864n.start();
        }
    }

    private Animator getFlipLeftAnimation() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "rotationY", 0.0f, 45.0f, 0.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, this.f36861k * 0.6f, 0.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.I
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f36677a.b(valueAnimator);
            }
        });
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.setDuration(1000L);
        animatorSet.playTogether(objectAnimatorOfFloat, valueAnimatorOfFloat);
        return animatorSet;
    }

    private Animator getFlipRightAnimation() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "rotationY", 0.0f, -45.0f, 0.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, (-this.f36861k) * 0.6f, 0.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.H
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f36676a.a(valueAnimator);
            }
        });
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.setDuration(1000L);
        animatorSet.playTogether(objectAnimatorOfFloat, valueAnimatorOfFloat);
        return animatorSet;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f36861k == 0 || this.f36862l == 0) {
            return;
        }
        this.f36851a.setStyle(Paint.Style.STROKE);
        this.f36851a.setColor(-1);
        this.f36863m.reset();
        RectF rectF = this.f36852b;
        int i2 = this.f36857g;
        rectF.set(i2, i2, this.f36861k - i2, this.f36862l - i2);
        Path path = this.f36863m;
        RectF rectF2 = this.f36852b;
        int i3 = this.f36856f;
        path.addRoundRect(rectF2, i3, i3, Path.Direction.CCW);
        canvas.drawPath(this.f36863m, this.f36851a);
        canvas.clipPath(this.f36863m);
        Paint paint = this.f36851a;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.f36851a.setColor(-7829368);
        this.f36851a.setAlpha(204);
        canvas.drawRect(0.0f, 0.0f, this.f36861k, this.f36862l, this.f36851a);
        this.f36851a.setColor(-3355444);
        this.f36851a.setAlpha(255);
        int i4 = this.f36862l;
        canvas.drawRect(0.0f, this.f36853c + i4, this.f36861k, i4, this.f36851a);
        float f2 = this.f36854d;
        canvas.drawRect(((-this.f36861k) * 0.6f) + f2, 0.0f, f2, this.f36862l, this.f36851a);
        int i5 = this.f36861k;
        float f3 = this.f36855e;
        canvas.drawRect(i5 + f3, 0.0f, (i5 * 1.6f) + f3, this.f36862l, this.f36851a);
        this.f36851a.setStyle(style);
        int i6 = this.f36861k;
        int i7 = this.f36858h;
        int i8 = (i6 - i7) / 2;
        int i9 = this.f36862l - this.f36860j;
        float f4 = i8 + i7;
        int i10 = this.f36859i;
        canvas.drawRoundRect(i8, i9, f4, i9 + i10, i10, i10, this.f36851a);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        c();
    }

    public ao(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c();
    }

    private Animator a(int i2) {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, C1244a.f35650B, 0.0f, i2, 0.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, (-this.f36862l) * 0.6f, 0.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.J
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f36678a.c(valueAnimator);
            }
        });
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.setDuration(1000L);
        animatorSet.playTogether(objectAnimatorOfFloat, valueAnimatorOfFloat);
        return animatorSet;
    }

    private void c() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.base.views.ao.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ao.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                ao.this.d();
            }
        });
    }

    public ao(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(ValueAnimator valueAnimator) {
        this.f36853c = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public void a() {
        this.f36865o = true;
        AnimatorSet animatorSet = this.f36864n;
        if (animatorSet == null) {
            return;
        }
        animatorSet.start();
    }

    public void b() {
        this.f36865o = false;
        AnimatorSet animatorSet = this.f36864n;
        if (animatorSet == null) {
            return;
        }
        animatorSet.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.f36855e = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        this.f36854d = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }
}
