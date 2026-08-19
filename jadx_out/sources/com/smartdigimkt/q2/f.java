package com.smartdigimkt.q2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.specialnote.BaseSpecialNoteView;

/* loaded from: classes5.dex */
public final class f extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ValueAnimator f42720a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BaseSpecialNoteView f42721b;

    public f(BaseSpecialNoteView baseSpecialNoteView, ValueAnimator valueAnimator) {
        this.f42721b = baseSpecialNoteView;
        this.f42720a = valueAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.f42721b.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        super.onAnimationStart(animator);
        this.f42721b.setAlpha(((Float) this.f42720a.getAnimatedValue()).floatValue());
        this.f42721b.setVisibility(0);
    }
}
