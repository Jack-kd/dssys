package com.smartdigimkt.x1;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes5.dex */
public final class e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f45065a;

    public e(f fVar) {
        this.f45065a = fVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        View view = this.f45065a.f45059a;
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        f fVar = this.f45065a;
        if (fVar.f45071j == null && fVar.f45069h == null) {
            return;
        }
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        f fVar2 = this.f45065a;
        fVar2.f45076o = (int) (((fVar2.f45077p * 2) + fVar2.f45061c + fVar2.f45075n) * fFloatValue);
        fVar2.f45059a.postInvalidate();
    }
}
