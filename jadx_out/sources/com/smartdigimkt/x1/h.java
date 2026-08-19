package com.smartdigimkt.x1;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes5.dex */
public final class h extends b {

    /* renamed from: e, reason: collision with root package name */
    public float f45079e;

    public h(View view) {
        super(view);
        this.f45079e = 0.95f;
    }

    @Override // com.smartdigimkt.x1.b
    public final ValueAnimator b() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, this.f45079e);
        valueAnimatorOfFloat.setDuration(500L);
        valueAnimatorOfFloat.setRepeatMode(2);
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.addUpdateListener(new g(this));
        return valueAnimatorOfFloat;
    }
}
