package com.smartdigimkt.k2;

import android.animation.ValueAnimator;

/* loaded from: classes5.dex */
public final class t implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f41352a;

    public t(v vVar) {
        this.f41352a = vVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (this.f41352a.f41354a.f41358j != null) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            y yVar = this.f41352a.f41354a;
            if (yVar.f41357i != null && yVar.f41358j.getParent() == null) {
                this.f41352a.f41354a.f41357i.setAlpha(fFloatValue);
            }
            if (this.f41352a.f41354a.f41358j.getParent() != null) {
                this.f41352a.f41354a.f41358j.setAlpha(fFloatValue);
            }
        }
    }
}
