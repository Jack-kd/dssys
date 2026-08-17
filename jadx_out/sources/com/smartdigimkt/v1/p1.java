package com.smartdigimkt.v1;

import android.view.animation.Interpolator;
import com.smartdigimkt.sdk.basead.ui.BaseShakeView;

/* loaded from: classes5.dex */
public final class p1 implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseShakeView f44571a;

    public p1(BaseShakeView baseShakeView) {
        this.f44571a = baseShakeView;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f2) {
        if (this.f44571a.f43318c % 3 == 2) {
            return 0.0f;
        }
        return f2;
    }
}
