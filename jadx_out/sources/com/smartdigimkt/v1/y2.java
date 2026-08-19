package com.smartdigimkt.v1;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.GuideToClickView;
import com.smartdigimkt.sdk.basead.ui.WaveAnimImageView;

/* loaded from: classes5.dex */
public final class y2 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WaveAnimImageView f44655a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ GuideToClickView f44656b;

    public y2(GuideToClickView guideToClickView, WaveAnimImageView waveAnimImageView) {
        this.f44656b = guideToClickView;
        this.f44655a = waveAnimImageView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float f2;
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (fFloatValue > 0.71428573f) {
            this.f44655a.setVisibility(4);
            return;
        }
        float f3 = fFloatValue / 0.71428573f;
        GuideToClickView guideToClickView = this.f44656b;
        float f4 = guideToClickView.f43446i;
        float f5 = ((guideToClickView.f43447j - f4) * f3) + f4;
        float f6 = ((guideToClickView.f43445h - f4) * f3) + guideToClickView.f43444g;
        double d2 = f3;
        if (d2 < 0.2d) {
            f2 = (float) (((1.0d - ((f3 * 1.0f) / 0.2d)) * (guideToClickView.f43443f - r1)) + guideToClickView.f43442e);
        } else {
            f2 = (float) (((((d2 - 0.2d) * 1.0d) / 0.8d) * (guideToClickView.f43443f - r14)) + guideToClickView.f43442e);
        }
        try {
            if (guideToClickView.getVisibility() == 0) {
                this.f44655a.setWaveAnimParams(new q6(f5, f6, f2));
                if (this.f44655a.getVisibility() != 0) {
                    this.f44655a.setVisibility(0);
                }
            }
        } catch (Throwable unused) {
        }
    }
}
