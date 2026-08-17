package com.smartdigimkt.v1;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.SinglePictureBottomSlideSplashATView;

/* loaded from: classes5.dex */
public final class s5 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SinglePictureBottomSlideSplashATView f44611a;

    public s5(SinglePictureBottomSlideSplashATView singlePictureBottomSlideSplashATView) {
        this.f44611a = singlePictureBottomSlideSplashATView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        SinglePictureBottomSlideSplashATView singlePictureBottomSlideSplashATView = this.f44611a;
        if (singlePictureBottomSlideSplashATView.f43635o0 == null || iIntValue >= singlePictureBottomSlideSplashATView.f43639s0.size()) {
            return;
        }
        SinglePictureBottomSlideSplashATView singlePictureBottomSlideSplashATView2 = this.f44611a;
        singlePictureBottomSlideSplashATView2.f43635o0.setImageResource(((Integer) singlePictureBottomSlideSplashATView2.f43639s0.get(iIntValue)).intValue());
    }
}
