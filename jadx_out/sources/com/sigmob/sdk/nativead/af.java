package com.sigmob.sdk.nativead;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;

/* loaded from: classes4.dex */
public class af {

    /* renamed from: a, reason: collision with root package name */
    private ViewGroup f38366a;

    /* renamed from: b, reason: collision with root package name */
    private ae f38367b;

    /* renamed from: c, reason: collision with root package name */
    private ae f38368c;

    /* renamed from: d, reason: collision with root package name */
    private long f38369d;

    public af(ViewGroup viewGroup, ae aeVar, ae aeVar2, long j2) {
        this.f38366a = viewGroup;
        this.f38367b = aeVar;
        this.f38368c = aeVar2;
        this.f38369d = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        ViewGroup.LayoutParams layoutParams = this.f38366a.getLayoutParams();
        layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.f38366a.setLayoutParams(layoutParams);
    }

    public void a() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f38366a, "x", this.f38367b.a(), this.f38368c.a());
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f38366a, "y", this.f38367b.b(), this.f38368c.b());
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.f38367b.c(), this.f38368c.c());
        ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(this.f38367b.d(), this.f38368c.d());
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.nativead.E
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f38274a.b(valueAnimator);
            }
        });
        valueAnimatorOfInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.nativead.F
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f38275a.a(valueAnimator);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, valueAnimatorOfInt, valueAnimatorOfInt2);
        animatorSet.setDuration(this.f38369d);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        ViewGroup.LayoutParams layoutParams = this.f38366a.getLayoutParams();
        layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.f38366a.setLayoutParams(layoutParams);
    }
}
