package com.smartdigimkt.h2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.SwipeG2CV2View;

/* loaded from: classes5.dex */
public final class d1 extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwipeG2CV2View f40474a;

    public d1(SwipeG2CV2View swipeG2CV2View) {
        this.f40474a = swipeG2CV2View;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        SwipeG2CV2View.a(this.f40474a);
    }
}
