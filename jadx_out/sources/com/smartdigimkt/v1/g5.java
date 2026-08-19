package com.smartdigimkt.v1;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.SimpleGuideToClickView;
import com.smartdigimkt.sdk.basead.ui.WaveAnimImageView;

/* loaded from: classes5.dex */
public final class g5 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WaveAnimImageView f44483a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SimpleGuideToClickView f44484b;

    public g5(SimpleGuideToClickView simpleGuideToClickView, WaveAnimImageView waveAnimImageView) {
        this.f44484b = simpleGuideToClickView;
        this.f44483a = waveAnimImageView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float f2;
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (fFloatValue > 0.71428573f) {
            this.f44483a.setVisibility(4);
            return;
        }
        float f3 = fFloatValue / 0.71428573f;
        SimpleGuideToClickView simpleGuideToClickView = this.f44484b;
        float f4 = simpleGuideToClickView.f43600h;
        float f5 = ((simpleGuideToClickView.f43601i - f4) * f3) + f4;
        float f6 = ((simpleGuideToClickView.f43599g - f4) * f3) + simpleGuideToClickView.f43598f;
        double d2 = f3;
        if (d2 < 0.2d) {
            f2 = (float) (((1.0d - ((f3 * 1.0f) / 0.2d)) * (simpleGuideToClickView.f43597e - r1)) + simpleGuideToClickView.f43596d);
        } else {
            f2 = (float) (((((d2 - 0.2d) * 1.0d) / 0.8d) * (simpleGuideToClickView.f43597e - r14)) + simpleGuideToClickView.f43596d);
        }
        try {
            if (simpleGuideToClickView.getVisibility() == 0) {
                this.f44483a.setWaveAnimParams(new q6(f5, f6, f2));
                if (this.f44483a.getVisibility() != 0) {
                    this.f44483a.setVisibility(0);
                }
            }
        } catch (Throwable unused) {
        }
    }
}
