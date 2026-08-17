package com.smartdigimkt.h2;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.FullOrientationG2CV2View;

/* loaded from: classes5.dex */
public final class k implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullOrientationG2CV2View f40503a;

    public k(FullOrientationG2CV2View fullOrientationG2CV2View) {
        this.f40503a = fullOrientationG2CV2View;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (this.f40503a.f43866k != null) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            FullOrientationG2CV2View fullOrientationG2CV2View = this.f40503a;
            int i2 = fullOrientationG2CV2View.f43864i % 4;
            if (i2 == 1) {
                fullOrientationG2CV2View.f43866k.setTranslationY(fFloatValue);
                return;
            }
            if (i2 == 2) {
                fullOrientationG2CV2View.f43866k.setTranslationX(-fFloatValue);
            } else if (i2 != 3) {
                fullOrientationG2CV2View.f43866k.setTranslationY(-fFloatValue);
            } else {
                fullOrientationG2CV2View.f43866k.setTranslationX(fFloatValue);
            }
        }
    }
}
