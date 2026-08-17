package com.smartdigimkt.v1;

import android.animation.ValueAnimator;
import android.os.Looper;
import com.smartdigimkt.sdk.basead.ui.SpreadAnimLayout;

/* loaded from: classes5.dex */
public final class m6 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SpreadAnimLayout f44547a;

    public m6(SpreadAnimLayout spreadAnimLayout) {
        this.f44547a = spreadAnimLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        SpreadAnimLayout spreadAnimLayout = this.f44547a;
        n6 n6Var = spreadAnimLayout.f43655c;
        n6Var.f44561b = (int) ((1.0f - fFloatValue) * 255.0f);
        n6Var.f44560a.set(spreadAnimLayout.f43656d);
        float f2 = -((int) (spreadAnimLayout.f43658f * fFloatValue));
        this.f44547a.f43655c.f44560a.inset(f2, f2);
        if (Looper.getMainLooper() == Looper.myLooper()) {
            this.f44547a.invalidate();
        } else {
            this.f44547a.postInvalidate();
        }
    }
}
