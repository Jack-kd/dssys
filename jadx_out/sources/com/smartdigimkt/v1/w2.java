package com.smartdigimkt.v1;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.GuideToClickV2View;
import com.smartdigimkt.sdk.basead.ui.WaveAnimImageView;

/* loaded from: classes5.dex */
public final class w2 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WaveAnimImageView f44637a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ GuideToClickV2View f44638b;

    public w2(GuideToClickV2View guideToClickV2View, WaveAnimImageView waveAnimImageView) {
        this.f44638b = guideToClickV2View;
        this.f44637a = waveAnimImageView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float f2;
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (fFloatValue > 0.71428573f) {
            this.f44637a.setVisibility(4);
            return;
        }
        float f3 = fFloatValue / 0.71428573f;
        GuideToClickV2View guideToClickV2View = this.f44638b;
        float f4 = guideToClickV2View.f43433i;
        float f5 = ((guideToClickV2View.f43434j - f4) * f3) + f4;
        float f6 = ((guideToClickV2View.f43432h - f4) * f3) + guideToClickV2View.f43431g;
        double d2 = f3;
        if (d2 < 0.2d) {
            f2 = (float) (((1.0d - ((f3 * 1.0f) / 0.2d)) * (guideToClickV2View.f43430f - r1)) + guideToClickV2View.f43429e);
        } else {
            f2 = (float) (((((d2 - 0.2d) * 1.0d) / 0.8d) * (guideToClickV2View.f43430f - r14)) + guideToClickV2View.f43429e);
        }
        try {
            if (guideToClickV2View.getVisibility() == 0) {
                this.f44637a.setWaveAnimParams(new q6(f5, f6, f2));
                if (this.f44637a.getVisibility() != 0) {
                    this.f44637a.setVisibility(0);
                }
            }
        } catch (Throwable unused) {
        }
    }
}
