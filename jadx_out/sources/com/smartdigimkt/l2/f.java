package com.smartdigimkt.l2;

import android.animation.Animator;
import com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BubbleDropAnimView;

/* loaded from: classes5.dex */
public final class f implements Animator.AnimatorListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BubbleDropAnimView f41626a;

    public f(BubbleDropAnimView bubbleDropAnimView) {
        this.f41626a = bubbleDropAnimView;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f41626a.f43976f = true;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
