package com.beizi.fusion;

import android.animation.Animator;
import android.animation.ValueAnimator;

/* loaded from: classes2.dex */
public abstract class hn {

    /* renamed from: a, reason: collision with root package name */
    private final ValueAnimator f14360a;

    public class a implements Animator.AnimatorListener {
        public a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            hn.this.a(animator);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            hn.this.b(animator);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            hn.this.c(animator);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            hn.this.d(animator);
        }
    }

    public hn(int i2, int i3, long j2) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i2, i3);
        this.f14360a = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(j2);
        a();
    }

    public void a(Animator animator) {
    }

    public void b(Animator animator) {
    }

    public void c(Animator animator) {
    }

    public void d(Animator animator) {
    }

    public void a(ValueAnimator valueAnimator) {
    }

    public void b() {
        ValueAnimator valueAnimator = this.f14360a;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.f14360a.pause();
    }

    public void c() {
        ValueAnimator valueAnimator = this.f14360a;
        if (valueAnimator == null || valueAnimator.isRunning()) {
            return;
        }
        this.f14360a.start();
    }

    private void a() {
        this.f14360a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.beizi.fusion.J
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f12539a.a(valueAnimator);
            }
        });
        this.f14360a.addListener(new a());
    }

    public void a(int i2, int i3) {
        ValueAnimator valueAnimator = this.f14360a;
        if (valueAnimator != null) {
            valueAnimator.setRepeatCount(i2);
            this.f14360a.setRepeatMode(i3);
        }
    }
}
