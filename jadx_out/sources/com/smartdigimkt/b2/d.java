package com.smartdigimkt.b2;

import android.animation.Animator;
import android.view.View;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.viewpager.VpMainImgAnimatorView;

/* loaded from: classes5.dex */
public final class d implements Animator.AnimatorListener {

    /* renamed from: a, reason: collision with root package name */
    public final View f39573a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ VpMainImgAnimatorView f39574b;

    public d(VpMainImgAnimatorView vpMainImgAnimatorView, WrapRoundImageView wrapRoundImageView) {
        this.f39574b = vpMainImgAnimatorView;
        this.f39573a = wrapRoundImageView;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        View view = this.f39573a;
        if (view == null || view.getTranslationX() >= 0.0f) {
            return;
        }
        this.f39573a.setTranslationX(this.f39574b.f43796g);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
