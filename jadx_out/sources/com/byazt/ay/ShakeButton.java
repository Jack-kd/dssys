package com.byazt.ay;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.animation.LinearInterpolator;
import android.widget.Button;

@com.byazt.kj.hp(hp = {0, 1, 525, 2110})
/* loaded from: classes2.dex */
public class ShakeButton extends Button {
    public ValueAnimator hp;

    public ShakeButton(Context context) {
        super(context);
    }

    private void hp() {
        ValueAnimator valueAnimator = this.hp;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.hp.removeAllListeners();
            this.hp.removeAllUpdateListeners();
            this.hp = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.hp = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(1300L);
        this.hp.setInterpolator(new LinearInterpolator());
        this.hp.setRepeatCount(-1);
        this.hp.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.ay.ShakeButton.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                float animatedFraction = valueAnimator2.getAnimatedFraction();
                ShakeButton.this.setRotation((float) ((1.0f - animatedFraction) * 6.0f * Math.cos(animatedFraction * 10.0f * 3.141592653589793d)));
            }
        });
        this.hp.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.ay.ShakeButton.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                super.onAnimationEnd(animator);
                ShakeButton.this.setRotation(6.0f);
            }
        });
        this.hp.start();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        hp();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.hp;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.hp.removeAllListeners();
            this.hp.removeAllUpdateListeners();
            this.hp = null;
        }
    }
}
