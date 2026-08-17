package com.smartdigimkt.v1;

import android.view.animation.Interpolator;
import com.smartdigimkt.sdk.basead.ui.BaseShakeView;

/* loaded from: classes5.dex */
public final class s1 implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseShakeView f44604a;

    public s1(BaseShakeView baseShakeView) {
        this.f44604a = baseShakeView;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f2) {
        if (this.f44604a.f43318c % 3 == 2) {
            return 0.0f;
        }
        return f2;
    }
}
