package com.smartdigimkt.x1;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes5.dex */
public final class g implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f45078a;

    public g(h hVar) {
        this.f45078a = hVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f45078a.f45059a;
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        this.f45078a.f45059a.setScaleX(fFloatValue);
        this.f45078a.f45059a.setScaleY(fFloatValue);
    }
}
