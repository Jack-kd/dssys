package com.kwad.components.core.t;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.annotation.Nullable;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.sigmob.sdk.base.common.C1244a;

/* loaded from: classes4.dex */
public final class x {
    public static Animator a(View view, @Nullable Interpolator interpolator, long j2, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        Interpolator interpolatorCreate = interpolator == null ? PathInterpolatorCompat.create(0.22f, 0.59f, 0.36f, 1.0f) : interpolator;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(300L);
        ObjectAnimator duration = ObjectAnimator.ofFloat(view, C1244a.f35650B, 0.0f, f2).setDuration(j2);
        float f3 = -f2;
        long j3 = j2 * 2;
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(view, C1244a.f35650B, f2, f3).setDuration(j3);
        duration2.setInterpolator(interpolatorCreate);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(view, C1244a.f35650B, f3, f2).setDuration(j3);
        ObjectAnimator duration4 = ObjectAnimator.ofFloat(view, C1244a.f35650B, f2, f3).setDuration(j3);
        duration4.setInterpolator(interpolatorCreate);
        animatorSet.playSequentially(objectAnimatorOfFloat, duration, duration2, duration3, duration4, ObjectAnimator.ofFloat(view, C1244a.f35650B, f3, 0.0f).setDuration(j2));
        return animatorSet;
    }

    public static ValueAnimator b(final View view, int i2, final int i3) {
        n(view, i2);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i2, i3);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.components.core.t.x.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                x.n(view, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.kwad.components.core.t.x.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                x.n(view, i3);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                x.n(view, i3);
            }
        });
        return valueAnimatorOfInt;
    }

    public static ValueAnimator c(final View view, int i2, int i3) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i2, i3);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.components.core.t.x.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setTranslationY(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        return valueAnimatorOfInt;
    }

    public static ValueAnimator h(final View view, final boolean z2) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(z2 ? 0.0f : 1.0f, z2 ? 1.0f : 0.0f);
        valueAnimatorOfFloat.setInterpolator(PathInterpolatorCompat.create(0.45f, 0.0f, 0.6f, 1.0f));
        valueAnimatorOfFloat.setDuration(300L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.components.core.t.x.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.kwad.components.core.t.x.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (z2) {
                    return;
                }
                view.setAlpha(0.0f);
                view.setVisibility(8);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                if (z2) {
                    view.setAlpha(0.0f);
                    view.setVisibility(0);
                }
            }
        });
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n(View view, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i2;
        view.setLayoutParams(layoutParams);
    }

    public static Animator a(View view, @Nullable Interpolator interpolator, float f2, float f3) {
        if (view == null) {
            return null;
        }
        Interpolator interpolatorCreate = PathInterpolatorCompat.create(0.0f, 0.0f, 0.58f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", f2, f3);
        objectAnimatorOfFloat.setDuration(300L);
        objectAnimatorOfFloat.setInterpolator(interpolatorCreate);
        return objectAnimatorOfFloat;
    }
}
