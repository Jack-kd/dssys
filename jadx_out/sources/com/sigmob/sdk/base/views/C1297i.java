package com.sigmob.sdk.base.views;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.czhj.sdk.common.utils.Dips;

/* renamed from: com.sigmob.sdk.base.views.i, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1297i extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    private static float f37068a = 0.0f;

    /* renamed from: b, reason: collision with root package name */
    private static final int f37069b = 1700;

    /* renamed from: c, reason: collision with root package name */
    private C1298j f37070c;

    /* renamed from: d, reason: collision with root package name */
    private C1298j f37071d;

    /* renamed from: e, reason: collision with root package name */
    private C1298j f37072e;

    public C1297i(Context context) {
        super(context);
        a();
    }

    private void a() {
        f37068a = Dips.dipsToIntPixels(6.0f, getContext());
        C1298j c1298j = new C1298j(getContext());
        this.f37070c = c1298j;
        addView(c1298j, new ViewGroup.LayoutParams(-1, -1));
        C1298j c1298j2 = new C1298j(getContext());
        this.f37071d = c1298j2;
        addView(c1298j2, new ViewGroup.LayoutParams(-1, -1));
        C1298j c1298j3 = new C1298j(getContext());
        this.f37072e = c1298j3;
        c1298j3.a(true);
        addView(this.f37072e, new ViewGroup.LayoutParams(-1, -1));
        a(this.f37070c, 0);
        a(this.f37071d, MediaPlayer.MEIDA_PLAYER_OPTION_IGNORE_DIRECTLY_BUFFERING);
    }

    public C1297i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public void a(final C1298j c1298j, int i2) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(c1298j, "translationY", 0.0f, Dips.dipsToIntPixels(-30.0f, getContext()));
        objectAnimatorOfFloat.setDuration(1700L);
        long j2 = i2;
        objectAnimatorOfFloat.setStartDelay(j2);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(c1298j, "alpha", 1.0f, 0.1f);
        objectAnimatorOfFloat2.setDuration(1700L);
        objectAnimatorOfFloat2.setStartDelay(j2);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f37068a, Dips.dipsToIntPixels(1.0f, getContext()));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.i.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                c1298j.setLineWidth(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.setDuration(1360L);
        valueAnimatorOfFloat.setStartDelay(j2 + 340);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, valueAnimatorOfFloat);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.sigmob.sdk.base.views.i.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animator.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        animatorSet.start();
    }

    public C1297i(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
