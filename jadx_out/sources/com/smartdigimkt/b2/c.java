package com.smartdigimkt.b2;

import android.animation.Animator;
import com.smartdigimkt.sdk.basead.ui.animplayerview.viewpager.VpMainImgAnimatorView;

/* loaded from: classes5.dex */
public final class c implements Animator.AnimatorListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ VpMainImgAnimatorView f39572a;

    public c(VpMainImgAnimatorView vpMainImgAnimatorView) {
        this.f39572a = vpMainImgAnimatorView;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        VpMainImgAnimatorView vpMainImgAnimatorView = this.f39572a;
        int i2 = VpMainImgAnimatorView.f43789l;
        vpMainImgAnimatorView.b();
        a aVar = this.f39572a.f43797h;
        if (aVar != null) {
            aVar.removeMessages(100);
            this.f39572a.f43797h.sendEmptyMessageDelayed(100, 1500L);
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
