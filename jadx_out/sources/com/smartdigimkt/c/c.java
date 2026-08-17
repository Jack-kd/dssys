package com.smartdigimkt.c;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.widget.ImageView;
import com.smartdigimkt.china.based.twist.TwistG2CV2View;

/* loaded from: classes5.dex */
public final class c extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TwistG2CV2View f39597a;

    public c(TwistG2CV2View twistG2CV2View) {
        this.f39597a = twistG2CV2View;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        try {
            ImageView imageView = this.f39597a.f39828i;
            if (imageView != null) {
                imageView.setRotation(0.0f);
                this.f39597a.f39828i.setRotationY(0.0f);
            }
            AnimatorSet animatorSet = this.f39597a.f39829j;
            if (animatorSet != null) {
                animatorSet.start();
            }
        } catch (Throwable unused) {
        }
    }
}
