package com.smartdigimkt.h2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.FullOrientationG2CV2View;

/* loaded from: classes5.dex */
public final class l extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullOrientationG2CV2View f40505a;

    public l(FullOrientationG2CV2View fullOrientationG2CV2View) {
        this.f40505a = fullOrientationG2CV2View;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        super.onAnimationRepeat(animator);
        this.f40505a.f43864i++;
    }
}
