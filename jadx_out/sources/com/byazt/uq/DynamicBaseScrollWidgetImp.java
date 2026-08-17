package com.byazt.uq;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.byazt.nw.s;

@com.byazt.kj.hp(hp = {0, 1, 85, 2000})
/* loaded from: classes3.dex */
public class DynamicBaseScrollWidgetImp extends DynamicBaseWidgetImp implements w {
    public ObjectAnimator hp;

    /* renamed from: l, reason: collision with root package name */
    public ObjectAnimator f26295l;

    /* renamed from: n, reason: collision with root package name */
    public Runnable f26296n;
    public int sz;

    public DynamicBaseScrollWidgetImp(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        this.sz = 0;
        this.f26296n = new Runnable() { // from class: com.byazt.uq.DynamicBaseScrollWidgetImp.1
            @Override // java.lang.Runnable
            public void run() {
                DynamicBaseScrollWidgetImp.this.q();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        final View childAt = getChildAt(this.sz);
        final View childAt2 = getChildAt((this.sz + 1) % getChildCount());
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(childAt, "translationY", 0.0f, (-(this.f26307s + getChildAt(this.sz).getHeight())) / 2);
        this.hp = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.hp.addListener(new Animator.AnimatorListener() { // from class: com.byazt.uq.DynamicBaseScrollWidgetImp.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                childAt.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(childAt2, "translationY", (this.f26307s + childAt2.getHeight()) / 2, 0.0f);
        this.f26295l = objectAnimatorOfFloat2;
        objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        this.f26295l.addListener(new Animator.AnimatorListener() { // from class: com.byazt.uq.DynamicBaseScrollWidgetImp.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                childAt2.setVisibility(0);
            }
        });
        this.hp.setDuration(500L);
        this.f26295l.setDuration(500L);
        this.hp.start();
        this.f26295l.start();
        int i2 = this.sz + 1;
        this.sz = i2;
        this.sz = i2 % getChildCount();
        postDelayed(this.f26296n, 2000L);
    }

    @Override // com.byazt.uq.DynamicBaseWidget, com.byazt.uq.w
    public void l() {
        removeCallbacks(this.f26296n);
        ObjectAnimator objectAnimator = this.hp;
        if (objectAnimator != null) {
            objectAnimator.removeAllUpdateListeners();
            this.hp.cancel();
        }
        ObjectAnimator objectAnimator2 = this.f26295l;
        if (objectAnimator2 != null) {
            objectAnimator2.removeAllUpdateListeners();
            this.f26295l.cancel();
        }
        super.l();
    }

    @Override // com.byazt.uq.DynamicBaseWidgetImp, com.byazt.uq.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            layoutParams.topMargin = (this.f26307s - layoutParams.height) / 2;
            childAt.setLayoutParams(layoutParams);
            if (i2 != 0) {
                childAt.setVisibility(8);
            }
        }
        postDelayed(this.f26296n, 2500L);
    }
}
