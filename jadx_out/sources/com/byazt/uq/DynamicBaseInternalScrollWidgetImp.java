package com.byazt.uq;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.byazt.nw.s;

@com.byazt.kj.hp(hp = {0, 1, 85, 1884})
/* loaded from: classes3.dex */
public class DynamicBaseInternalScrollWidgetImp extends DynamicBaseWidgetImp implements w {
    public ObjectAnimator hp;

    /* renamed from: l, reason: collision with root package name */
    public ObjectAnimator f26291l;

    /* renamed from: n, reason: collision with root package name */
    public boolean f26292n;
    public Runnable ns;
    public int sz;

    public DynamicBaseInternalScrollWidgetImp(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        this.sz = 0;
        this.f26292n = false;
        this.ns = new Runnable() { // from class: com.byazt.uq.DynamicBaseInternalScrollWidgetImp.1
            @Override // java.lang.Runnable
            public void run() {
                DynamicBaseInternalScrollWidgetImp.this.q();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        final View childAt;
        final View childAt2 = getChildAt(this.sz);
        int i2 = this.sz;
        if (i2 == 0) {
            this.f26292n = false;
        }
        if (i2 + 1 >= getChildCount() || ((ViewGroup) getChildAt(this.sz + 1)).getChildCount() <= 0) {
            this.f26292n = true;
            childAt = getChildAt(this.sz - 1);
            this.hp = ObjectAnimator.ofFloat(childAt2, "translationX", 0.0f, (this.eb + getChildAt(this.sz).getWidth()) / 2);
        } else {
            childAt = getChildAt(this.sz + 1);
            this.hp = ObjectAnimator.ofFloat(childAt2, "translationX", 0.0f, (-(this.eb + getChildAt(this.sz).getWidth())) / 2);
        }
        this.hp.setInterpolator(new LinearInterpolator());
        this.hp.addListener(new Animator.AnimatorListener() { // from class: com.byazt.uq.DynamicBaseInternalScrollWidgetImp.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                childAt2.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        if (this.f26292n) {
            this.f26291l = ObjectAnimator.ofFloat(childAt, "translationX", (-(this.eb + childAt.getWidth())) / 2, 0.0f);
        } else {
            this.f26291l = ObjectAnimator.ofFloat(childAt, "translationX", (this.eb + childAt.getWidth()) / 2, 0.0f);
        }
        this.f26291l.setInterpolator(new LinearInterpolator());
        this.f26291l.addListener(new Animator.AnimatorListener() { // from class: com.byazt.uq.DynamicBaseInternalScrollWidgetImp.3
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
                childAt.setVisibility(0);
            }
        });
        this.hp.setDuration(500L);
        this.f26291l.setDuration(500L);
        this.hp.start();
        this.f26291l.start();
        if (this.f26292n) {
            this.sz--;
        } else {
            this.sz++;
        }
        postDelayed(this.ns, 2000L);
    }

    @Override // com.byazt.uq.DynamicBaseWidget, com.byazt.uq.w
    public void l() {
        removeCallbacks(this.ns);
        ObjectAnimator objectAnimator = this.hp;
        if (objectAnimator != null) {
            objectAnimator.removeAllUpdateListeners();
            this.hp.cancel();
        }
        ObjectAnimator objectAnimator2 = this.f26291l;
        if (objectAnimator2 != null) {
            objectAnimator2.removeAllUpdateListeners();
            this.f26291l.cancel();
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
        postDelayed(this.ns, 2500L);
    }
}
