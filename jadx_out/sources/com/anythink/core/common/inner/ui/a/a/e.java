package com.anythink.core.common.inner.ui.a.a;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes2.dex */
public final class e extends a {

    /* renamed from: e, reason: collision with root package name */
    private float f5101e;

    public e(View view) {
        super(view);
        this.f5101e = 0.95f;
    }

    @Override // com.anythink.core.common.inner.ui.a.a.a
    public final ValueAnimator e() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, this.f5101e);
        valueAnimatorOfFloat.setDuration(500L);
        valueAnimatorOfFloat.setRepeatMode(2);
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.anythink.core.common.inner.ui.a.a.e.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                View view = e.this.f5080a;
                if (view == null || view.getVisibility() != 0) {
                    return;
                }
                e.this.f5080a.setScaleX(fFloatValue);
                e.this.f5080a.setScaleY(fFloatValue);
            }
        });
        return valueAnimatorOfFloat;
    }

    public final void g() {
        this.f5101e = 0.85f;
    }
}
