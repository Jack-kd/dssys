package com.smartdigimkt.v1;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.BaseShakeView;

/* loaded from: classes5.dex */
public final class u1 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseShakeView f44622a;

    public u1(BaseShakeView baseShakeView) {
        this.f44622a = baseShakeView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f44622a.f43316a.setRotation(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
