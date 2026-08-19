package com.anythink.core.common.inner.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.y;
import com.anythink.core.common.inner.b.c;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public abstract class BaseShakeView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    protected ImageView f4892a;

    /* renamed from: b, reason: collision with root package name */
    protected ImageView f4893b;

    /* renamed from: c, reason: collision with root package name */
    ValueAnimator f4894c;

    /* renamed from: d, reason: collision with root package name */
    protected int f4895d;

    /* renamed from: e, reason: collision with root package name */
    protected String f4896e;

    /* renamed from: f, reason: collision with root package name */
    protected String f4897f;

    /* renamed from: g, reason: collision with root package name */
    protected String f4898g;

    /* renamed from: h, reason: collision with root package name */
    protected String f4899h;

    /* renamed from: i, reason: collision with root package name */
    protected Bitmap f4900i;

    /* renamed from: j, reason: collision with root package name */
    protected int f4901j;

    /* renamed from: k, reason: collision with root package name */
    protected a f4902k;

    /* renamed from: l, reason: collision with root package name */
    private int f4903l;

    /* renamed from: m, reason: collision with root package name */
    private c f4904m;

    /* renamed from: com.anythink.core.common.inner.ui.BaseShakeView$10, reason: invalid class name */
    public class AnonymousClass10 implements ValueAnimator.AnimatorUpdateListener {
        public AnonymousClass10() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            BaseShakeView.this.f4892a.setRotation(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseShakeView$11, reason: invalid class name */
    public class AnonymousClass11 extends AnimatorListenerAdapter {
        public AnonymousClass11() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            BaseShakeView.a(BaseShakeView.this);
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseShakeView$12, reason: invalid class name */
    public class AnonymousClass12 implements Interpolator {
        public AnonymousClass12() {
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f2) {
            if (BaseShakeView.this.f4903l % 3 == 2) {
                return 0.0f;
            }
            return f2;
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseShakeView$13, reason: invalid class name */
    public class AnonymousClass13 implements Runnable {
        public AnonymousClass13() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            BaseShakeView.this.f4892a.setPivotX((int) (BaseShakeView.this.f4892a.getWidth() * 0.5d));
            BaseShakeView.this.f4892a.setPivotY((int) (BaseShakeView.this.f4892a.getHeight() * 0.5d));
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseShakeView$14, reason: invalid class name */
    public class AnonymousClass14 implements ValueAnimator.AnimatorUpdateListener {
        public AnonymousClass14() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            BaseShakeView.this.f4892a.setRotation(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseShakeView$2, reason: invalid class name */
    public class AnonymousClass2 extends AnimatorListenerAdapter {
        public AnonymousClass2() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            BaseShakeView.a(BaseShakeView.this);
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseShakeView$3, reason: invalid class name */
    public class AnonymousClass3 implements Interpolator {
        public AnonymousClass3() {
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f2) {
            if ((BaseShakeView.this.f4903l / 2) % 3 == 0) {
                return 0.0f;
            }
            return f2;
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseShakeView$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageView imageView = BaseShakeView.this.f4892a;
            if (imageView == null || imageView.getWidth() <= 0 || BaseShakeView.this.f4892a.getHeight() <= 0) {
                return;
            }
            BaseShakeView.this.f4892a.setPivotX((int) (BaseShakeView.this.f4892a.getWidth() * 0.8d));
            BaseShakeView.this.f4892a.setPivotY((int) (BaseShakeView.this.f4892a.getHeight() * 0.8d));
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseShakeView$7, reason: invalid class name */
    public class AnonymousClass7 implements ValueAnimator.AnimatorUpdateListener {
        public AnonymousClass7() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            BaseShakeView.this.f4892a.setTranslationX(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseShakeView$8, reason: invalid class name */
    public class AnonymousClass8 extends AnimatorListenerAdapter {
        public AnonymousClass8() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            BaseShakeView.a(BaseShakeView.this);
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseShakeView$9, reason: invalid class name */
    public class AnonymousClass9 implements Interpolator {
        public AnonymousClass9() {
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f2) {
            if (BaseShakeView.this.f4903l % 3 == 2) {
                return 0.0f;
            }
            return f2;
        }
    }

    public interface a {
        boolean a();
    }

    public BaseShakeView(Context context) {
        super(context);
        this.f4903l = 0;
        this.f4904m = new c() { // from class: com.anythink.core.common.inner.ui.BaseShakeView.1
            @Override // com.anythink.core.common.inner.b.c
            public final boolean a() {
                a aVar;
                if (BaseShakeView.this.hasWindowFocus() && BaseShakeView.this.isShown() && (aVar = BaseShakeView.this.f4902k) != null) {
                    return aVar.a();
                }
                return false;
            }
        };
        a();
    }

    public static /* synthetic */ int a(BaseShakeView baseShakeView) {
        int i2 = baseShakeView.f4903l;
        baseShakeView.f4903l = i2 + 1;
        return i2;
    }

    private void d() {
        com.anythink.core.b.a.a().b(this.f4904m);
    }

    public abstract void a();

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        startShakeIconAnimation();
        c();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f4894c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        d();
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z2) {
        super.onVisibilityAggregated(z2);
        if (z2) {
            c();
        } else {
            d();
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            c();
        } else {
            d();
        }
    }

    public void setShakeSetting(y yVar, int i2) {
        if (yVar != null) {
            this.f4895d = yVar.b();
            this.f4896e = yVar.c();
            this.f4897f = yVar.d();
            this.f4898g = yVar.e();
            this.f4899h = yVar.f();
            this.f4901j = i2;
            if (TextUtils.isEmpty(this.f4896e)) {
                b();
            } else {
                com.anythink.core.common.v.b.c.a().d(new d(e.at, new Runnable() { // from class: com.anythink.core.common.inner.ui.BaseShakeView.5
                    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void run() {
                        /*
                            r6 = this;
                            com.anythink.core.common.inner.ui.BaseShakeView r0 = com.anythink.core.common.inner.ui.BaseShakeView.this     // Catch: java.lang.Throwable -> L1f
                            android.content.res.Resources r0 = r0.getResources()     // Catch: java.lang.Throwable -> L1f
                            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()     // Catch: java.lang.Throwable -> L1f
                            int r0 = r0.widthPixels     // Catch: java.lang.Throwable -> L1f
                            com.anythink.core.common.inner.ui.BaseShakeView r1 = com.anythink.core.common.inner.ui.BaseShakeView.this     // Catch: java.lang.Throwable -> L1f
                            android.content.res.Resources r1 = r1.getResources()     // Catch: java.lang.Throwable -> L1f
                            android.util.DisplayMetrics r1 = r1.getDisplayMetrics()     // Catch: java.lang.Throwable -> L1f
                            int r1 = r1.heightPixels     // Catch: java.lang.Throwable -> L1f
                            int r0 = java.lang.Math.min(r0, r1)     // Catch: java.lang.Throwable -> L1f
                            int r0 = r0 / 2
                            goto L20
                        L1f:
                            r0 = 0
                        L20:
                            com.anythink.core.common.inner.ui.BaseShakeView r1 = com.anythink.core.common.inner.ui.BaseShakeView.this
                            android.content.Context r2 = r1.getContext()
                            com.anythink.core.common.res.b r2 = com.anythink.core.common.res.b.a(r2)
                            com.anythink.core.common.res.e r3 = new com.anythink.core.common.res.e
                            com.anythink.core.common.inner.ui.BaseShakeView r4 = com.anythink.core.common.inner.ui.BaseShakeView.this
                            java.lang.String r4 = r4.f4896e
                            r5 = 3
                            r3.<init>(r5, r4)
                            java.lang.String r4 = r3.f7467h
                            boolean r4 = android.text.TextUtils.isEmpty(r4)
                            if (r4 != 0) goto L5d
                            java.lang.String r4 = r3.f7467h
                            android.graphics.Bitmap r4 = r2.a(r4)
                            if (r4 == 0) goto L4b
                            boolean r5 = r4.isRecycled()
                            if (r5 != 0) goto L4b
                            goto L5e
                        L4b:
                            android.graphics.Bitmap r4 = r2.a(r3, r0, r0)
                            if (r4 == 0) goto L5d
                            boolean r0 = r4.isRecycled()
                            if (r0 != 0) goto L5d
                            java.lang.String r0 = r3.f7467h
                            r2.a(r0, r4)
                            goto L5e
                        L5d:
                            r4 = 0
                        L5e:
                            r1.f4900i = r4
                            com.anythink.core.common.inner.ui.BaseShakeView r0 = com.anythink.core.common.inner.ui.BaseShakeView.this
                            com.anythink.core.common.inner.ui.BaseShakeView.c(r0)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.inner.ui.BaseShakeView.AnonymousClass5.run():void");
                    }
                }));
            }
        }
    }

    public void startShakeIconAnimation() {
        ValueAnimator valueAnimatorOfFloat;
        if (this.f4892a != null) {
            ValueAnimator valueAnimator = this.f4894c;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            int i2 = this.f4895d;
            if (i2 == 1) {
                valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, -25.0f, 0.0f, 25.0f, 0.0f);
                valueAnimatorOfFloat.setDuration(500L);
                valueAnimatorOfFloat.setRepeatCount(-1);
                valueAnimatorOfFloat.addUpdateListener(new AnonymousClass10());
                valueAnimatorOfFloat.addListener(new AnonymousClass11());
                valueAnimatorOfFloat.setInterpolator(new AnonymousClass12());
                this.f4892a.post(new AnonymousClass13());
            } else if (i2 != 2) {
                valueAnimatorOfFloat = ValueAnimator.ofFloat(-10.0f, 10.0f);
                valueAnimatorOfFloat.setDuration(150L);
                valueAnimatorOfFloat.setRepeatMode(2);
                valueAnimatorOfFloat.setRepeatCount(-1);
                valueAnimatorOfFloat.addUpdateListener(new AnonymousClass14());
                valueAnimatorOfFloat.addListener(new AnonymousClass2());
                valueAnimatorOfFloat.setInterpolator(new AnonymousClass3());
                this.f4892a.post(new AnonymousClass4());
            } else {
                int iA = p.a(getContext(), 8.0f);
                float f2 = iA;
                float f3 = -iA;
                valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, f2, f3, f2, f3, iA / 2, r6 / 2, iA / 4, r6 / 4, 0.0f);
                valueAnimatorOfFloat.setDuration(1000L);
                valueAnimatorOfFloat.setRepeatCount(-1);
                valueAnimatorOfFloat.addUpdateListener(new AnonymousClass7());
                valueAnimatorOfFloat.addListener(new AnonymousClass8());
                valueAnimatorOfFloat.setInterpolator(new AnonymousClass9());
            }
            this.f4894c = valueAnimatorOfFloat;
            valueAnimatorOfFloat.start();
        }
    }

    private ValueAnimator a(int i2) {
        if (i2 == 1) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, -25.0f, 0.0f, 25.0f, 0.0f);
            valueAnimatorOfFloat.setDuration(500L);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.addUpdateListener(new AnonymousClass10());
            valueAnimatorOfFloat.addListener(new AnonymousClass11());
            valueAnimatorOfFloat.setInterpolator(new AnonymousClass12());
            this.f4892a.post(new AnonymousClass13());
            return valueAnimatorOfFloat;
        }
        if (i2 != 2) {
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(-10.0f, 10.0f);
            valueAnimatorOfFloat2.setDuration(150L);
            valueAnimatorOfFloat2.setRepeatMode(2);
            valueAnimatorOfFloat2.setRepeatCount(-1);
            valueAnimatorOfFloat2.addUpdateListener(new AnonymousClass14());
            valueAnimatorOfFloat2.addListener(new AnonymousClass2());
            valueAnimatorOfFloat2.setInterpolator(new AnonymousClass3());
            this.f4892a.post(new AnonymousClass4());
            return valueAnimatorOfFloat2;
        }
        int iA = p.a(getContext(), 8.0f);
        float f2 = iA;
        float f3 = -iA;
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, f2, f3, f2, f3, iA / 2, r5 / 2, iA / 4, r5 / 4, 0.0f);
        valueAnimatorOfFloat3.setDuration(1000L);
        valueAnimatorOfFloat3.setRepeatCount(-1);
        valueAnimatorOfFloat3.addUpdateListener(new AnonymousClass7());
        valueAnimatorOfFloat3.addListener(new AnonymousClass8());
        valueAnimatorOfFloat3.setInterpolator(new AnonymousClass9());
        return valueAnimatorOfFloat3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        s.b();
        s.b(new Runnable() { // from class: com.anythink.core.common.inner.ui.BaseShakeView.6
            @Override // java.lang.Runnable
            public final void run() {
                BaseShakeView baseShakeView = BaseShakeView.this;
                ImageView imageView = baseShakeView.f4892a;
                if (imageView != null) {
                    Bitmap bitmap = baseShakeView.f4900i;
                    if (bitmap != null) {
                        imageView.setImageBitmap(bitmap);
                    } else {
                        imageView.setImageResource(p.a(baseShakeView.getContext(), "myoffer_shake_icon", "drawable"));
                    }
                }
                BaseShakeView baseShakeView2 = BaseShakeView.this;
                ImageView imageView2 = baseShakeView2.f4893b;
                if (imageView2 != null) {
                    Bitmap bitmap2 = baseShakeView2.f4900i;
                    if (bitmap2 != null) {
                        imageView2.setImageBitmap(bitmap2);
                    } else {
                        imageView2.setImageResource(p.a(baseShakeView2.getContext(), "myoffer_shake_icon", "drawable"));
                    }
                }
            }
        });
    }

    private void c() {
        com.anythink.core.b.a.a().a(this.f4904m);
    }

    public BaseShakeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4903l = 0;
        this.f4904m = new c() { // from class: com.anythink.core.common.inner.ui.BaseShakeView.1
            @Override // com.anythink.core.common.inner.b.c
            public final boolean a() {
                a aVar;
                if (BaseShakeView.this.hasWindowFocus() && BaseShakeView.this.isShown() && (aVar = BaseShakeView.this.f4902k) != null) {
                    return aVar.a();
                }
                return false;
            }
        };
        a();
    }

    public BaseShakeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f4903l = 0;
        this.f4904m = new c() { // from class: com.anythink.core.common.inner.ui.BaseShakeView.1
            @Override // com.anythink.core.common.inner.b.c
            public final boolean a() {
                a aVar;
                if (BaseShakeView.this.hasWindowFocus() && BaseShakeView.this.isShown() && (aVar = BaseShakeView.this.f4902k) != null) {
                    return aVar.a();
                }
                return false;
            }
        };
        a();
    }

    public BaseShakeView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f4903l = 0;
        this.f4904m = new c() { // from class: com.anythink.core.common.inner.ui.BaseShakeView.1
            @Override // com.anythink.core.common.inner.b.c
            public final boolean a() {
                a aVar;
                if (BaseShakeView.this.hasWindowFocus() && BaseShakeView.this.isShown() && (aVar = BaseShakeView.this.f4902k) != null) {
                    return aVar.a();
                }
                return false;
            }
        };
        a();
    }
}
