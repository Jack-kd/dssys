package com.smartdigimkt.h2;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.PicVerifyG2CV2View;

/* loaded from: classes5.dex */
public final class t0 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PicVerifyG2CV2View f40532a;

    public t0(PicVerifyG2CV2View picVerifyG2CV2View) {
        this.f40532a = picVerifyG2CV2View;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        PicVerifyG2CV2View picVerifyG2CV2View = this.f40532a;
        if (picVerifyG2CV2View.f43916o != iIntValue) {
            picVerifyG2CV2View.f43916o = iIntValue;
            picVerifyG2CV2View.f43910i.setProgress(iIntValue);
        }
    }
}
