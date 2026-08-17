package com.beizi.fusion;

import android.animation.Animator;

/* loaded from: classes2.dex */
public class ph implements Animator.AnimatorListener {

    /* renamed from: a, reason: collision with root package name */
    private Animator f15648a;

    public ph(Animator animator) {
        this.f15648a = animator;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f15648a = null;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        Animator animator2 = this.f15648a;
        if (animator2 != null) {
            animator2.start();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }
}
