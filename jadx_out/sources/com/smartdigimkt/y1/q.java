package com.smartdigimkt.y1;

import android.view.animation.Animation;
import com.smartdigimkt.sdk.basead.ui.animplayerview.WebLandpagePlayerView;
import com.smartdigimkt.sdk.basead.ui.web.BaseWebView;

/* loaded from: classes5.dex */
public final class q implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebLandpagePlayerView f45186a;

    public q(WebLandpagePlayerView webLandpagePlayerView) {
        this.f45186a = webLandpagePlayerView;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        BaseWebView baseWebView = this.f45186a.f43720F;
        if (baseWebView != null) {
            baseWebView.setVisibility(0);
        }
    }
}
