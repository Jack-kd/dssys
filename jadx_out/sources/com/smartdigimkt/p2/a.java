package com.smartdigimkt.p2;

import android.animation.ValueAnimator;

/* loaded from: classes5.dex */
public final class a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f42584a;

    public a(b bVar) {
        this.f42584a = bVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        try {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.f42584a.f42585a.setScaleX(fFloatValue);
            this.f42584a.f42585a.setScaleY(fFloatValue);
        } catch (Throwable unused) {
            this.f42584a.f42585a.setScaleX(3.0f);
            this.f42584a.f42585a.setScaleY(3.0f);
        }
    }
}
