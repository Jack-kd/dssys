package com.byazt.uq;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.byazt.nw.s;

@com.byazt.kj.hp(hp = {0, 1, 85, 2389})
/* loaded from: classes3.dex */
public class DynamicVerticalScrollWidgetImp extends DynamicBaseWidgetImp implements w {
    public ObjectAnimator hp;

    /* renamed from: l, reason: collision with root package name */
    public ObjectAnimator f26342l;

    /* renamed from: n, reason: collision with root package name */
    public boolean f26343n;
    public Runnable ns;
    public int sz;

    public DynamicVerticalScrollWidgetImp(Context context, DynamicRootView dynamicRootView, s sVar) {
        super(context, dynamicRootView, sVar);
        this.sz = 0;
        this.f26343n = false;
        this.ns = new Runnable() { // from class: com.byazt.uq.DynamicVerticalScrollWidgetImp.1
            @Override // java.lang.Runnable
            public void run() {
                DynamicVerticalScrollWidgetImp.this.q();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        final View childAt;
        final View childAt2 = getChildAt(this.sz);
        int i2 = this.sz;
        if (i2 == 0) {
            this.f26343n = false;
        }
        boolean z2 = i2 + 1 >= getChildCount() || ((ViewGroup) getChildAt(this.sz + 1)).getChildCount() <= 0;
        if (this.zy.e().w().hp() || !z2) {
            View childAt3 = z2 ? getChildAt((this.sz + 2) % getChildCount()) : getChildAt((this.sz + 1) % getChildCount());
            this.hp = ObjectAnimator.ofFloat(childAt2, "translationY", 0.0f, (-(this.f26307s + getChildAt(this.sz).getHeight())) / 2);
            if (z2) {
                this.sz++;
            }
            childAt = childAt3;
        } else {
            this.f26343n = true;
            childAt = getChildAt(this.sz - 1);
            this.hp = ObjectAnimator.ofFloat(childAt2, "translationY", 0.0f, (this.f26307s + getChildAt(this.sz).getHeight()) / 2);
        }
        this.hp.setInterpolator(new LinearInterpolator());
        this.hp.addListener(new Animator.AnimatorListener() { // from class: com.byazt.uq.DynamicVerticalScrollWidgetImp.2
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
        if (this.f26343n) {
            this.f26342l = ObjectAnimator.ofFloat(childAt, "translationY", (-(this.f26307s + childAt.getHeight())) / 2, 0.0f);
        } else {
            this.f26342l = ObjectAnimator.ofFloat(childAt, "translationY", (this.f26307s + childAt.getHeight()) / 2, 0.0f);
        }
        this.f26342l.setInterpolator(new LinearInterpolator());
        this.f26342l.addListener(new Animator.AnimatorListener() { // from class: com.byazt.uq.DynamicVerticalScrollWidgetImp.3
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
        this.f26342l.setDuration(500L);
        this.hp.start();
        this.f26342l.start();
        if (this.f26343n) {
            this.sz--;
        } else {
            int i3 = this.sz + 1;
            this.sz = i3;
            this.sz = i3 % getChildCount();
        }
        postDelayed(this.ns, 3000L);
    }

    @Override // com.byazt.uq.DynamicBaseWidget, com.byazt.uq.w
    public void l() {
        removeCallbacks(this.ns);
        ObjectAnimator objectAnimator = this.hp;
        if (objectAnimator != null) {
            objectAnimator.removeAllUpdateListeners();
            this.hp.cancel();
        }
        ObjectAnimator objectAnimator2 = this.f26342l;
        if (objectAnimator2 != null) {
            objectAnimator2.removeAllUpdateListeners();
            this.f26342l.cancel();
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
