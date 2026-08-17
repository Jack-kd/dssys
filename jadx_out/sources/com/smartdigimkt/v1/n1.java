package com.smartdigimkt.v1;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.BaseShakeView;

/* loaded from: classes5.dex */
public final class n1 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseShakeView f44554a;

    public n1(BaseShakeView baseShakeView) {
        this.f44554a = baseShakeView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f44554a.f43316a.setTranslationX(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
