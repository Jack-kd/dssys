package com.smartdigimkt.h2;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.PicVerifyG2CV2View;

/* loaded from: classes5.dex */
public final class s0 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PicVerifyG2CV2View f40530a;

    public s0(PicVerifyG2CV2View picVerifyG2CV2View) {
        this.f40530a = picVerifyG2CV2View;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f40530a.f43910i.setProgress(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
