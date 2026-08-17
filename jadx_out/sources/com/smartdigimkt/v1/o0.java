package com.smartdigimkt.v1;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;
import com.smartdigimkt.sdk.basead.ui.FullScreenHeaderPanelView;

/* loaded from: classes5.dex */
public final class o0 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseScreenATView f44563a;

    public o0(BaseScreenATView baseScreenATView) {
        this.f44563a = baseScreenATView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        FullScreenHeaderPanelView fullScreenHeaderPanelView = this.f44563a.f43298p0;
        if (fullScreenHeaderPanelView != null) {
            fullScreenHeaderPanelView.setAlpha(fFloatValue);
        }
    }
}
