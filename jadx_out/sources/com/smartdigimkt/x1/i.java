package com.smartdigimkt.x1;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.sigmob.sdk.base.common.C1244a;

/* loaded from: classes5.dex */
public final class i extends b {
    public i(View view) {
        super(view);
    }

    @Override // com.smartdigimkt.x1.b
    public final ValueAnimator b() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f45059a, C1244a.f35650B, 0.0f, 4.0f, 0.0f, -4.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setRepeatMode(1);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        return objectAnimatorOfFloat;
    }
}
