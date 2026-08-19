package com.smartdigimkt.e2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.widget.RelativeLayout;

/* loaded from: classes5.dex */
public final class h extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f40056a;

    public h(i iVar) {
        this.f40056a = iVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        int y2 = (int) this.f40056a.f40057a.f43808a.getY();
        this.f40056a.f40057a.f43824q = ValueAnimator.ofInt(0, y2);
        this.f40056a.f40057a.f43824q.setDuration(300L);
        this.f40056a.f40057a.f43824q.addUpdateListener(new f(this, y2));
        this.f40056a.f40057a.f43824q.addListener(new g(this));
        RelativeLayout relativeLayout = this.f40056a.f40057a.f43809b;
        if (relativeLayout != null) {
            relativeLayout.setAlpha(0.0f);
            this.f40056a.f40057a.f43809b.setVisibility(0);
        }
        this.f40056a.f40057a.f43824q.start();
        this.f40056a.f40057a.f43820m.setVisibility(8);
    }
}
