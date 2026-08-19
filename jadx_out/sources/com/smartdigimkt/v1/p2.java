package com.smartdigimkt.v1;

import android.view.View;
import android.view.animation.Animation;
import com.smartdigimkt.sdk.basead.ui.FullScreenATView;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;

/* loaded from: classes5.dex */
public final class p2 implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f44572a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FullScreenATView f44573b;

    public p2(FullScreenATView fullScreenATView, BasePlayerView basePlayerView) {
        this.f44573b = fullScreenATView;
        this.f44572a = basePlayerView;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        View view = this.f44572a;
        if (view != null) {
            view.post(new o2(this));
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
