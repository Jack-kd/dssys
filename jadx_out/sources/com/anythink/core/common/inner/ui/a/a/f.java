package com.anythink.core.common.inner.ui.a.a;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.sigmob.sdk.base.common.C1244a;

/* loaded from: classes2.dex */
public final class f extends a {
    public f(View view) {
        super(view);
    }

    @Override // com.anythink.core.common.inner.ui.a.a.a
    public final ValueAnimator e() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f5080a, C1244a.f35650B, 0.0f, 4.0f, 0.0f, -4.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setRepeatMode(1);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        return objectAnimatorOfFloat;
    }
}
