package com.smartdigimkt.v1;

import android.animation.ValueAnimator;
import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView;
import com.smartdigimkt.sdk.basead.ui.SplashEndCardView;

/* loaded from: classes5.dex */
public final class b1 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f44431a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BaseSdkSplashATView f44432b;

    public b1(BaseSdkSplashATView baseSdkSplashATView, View view) {
        this.f44432b = baseSdkSplashATView;
        this.f44431a = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        SplashEndCardView splashEndCardView = this.f44432b.f43313i0;
        if (splashEndCardView != null) {
            splashEndCardView.setAlpha(fFloatValue);
        }
        View view = this.f44431a;
        if (view != null) {
            view.setAlpha((float) (1.0d - ((fFloatValue - 0.2d) * 1.25d)));
        }
    }
}
