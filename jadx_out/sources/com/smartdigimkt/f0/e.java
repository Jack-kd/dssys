package com.smartdigimkt.f0;

import android.animation.ValueAnimator;

/* loaded from: classes5.dex */
public final class e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f40184a;

    public e(f fVar) {
        this.f40184a = fVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float duration = ((valueAnimator.getDuration() * 2) - valueAnimator.getCurrentPlayTime()) / (valueAnimator.getDuration() * 2.0f);
        double dPow = Math.pow(duration, 2.0d) * Math.sin(Math.toRadians(((Float) valueAnimator.getAnimatedValue()).floatValue()));
        this.f40184a.f40185a.setTranslationY(-((float) (r7.f40186b.f40195i * dPow)));
    }
}
