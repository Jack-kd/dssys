package com.smartdigimkt.m2;

import android.view.animation.Animation;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.QAIncentiveTaskView;

/* loaded from: classes5.dex */
public final class l implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f41766a;

    public l(m mVar) {
        this.f41766a = mVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        QAIncentiveTaskView qAIncentiveTaskView = this.f41766a.f41767a;
        ((com.smartdigimkt.k2.n) qAIncentiveTaskView.f43981b).a(qAIncentiveTaskView.f44000j);
        ((com.smartdigimkt.k2.n) this.f41766a.f41767a.f43981b).a();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
