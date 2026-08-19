package com.smartdigimkt.v1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.smartdigimkt.sdk.basead.ui.BaseShakeView;

/* loaded from: classes5.dex */
public final class h1 extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseShakeView f44488a;

    public h1(BaseShakeView baseShakeView) {
        this.f44488a = baseShakeView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        super.onAnimationRepeat(animator);
        this.f44488a.f43318c++;
    }
}
