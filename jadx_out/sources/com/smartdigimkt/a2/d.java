package com.smartdigimkt.a2;

import android.animation.Animator;
import com.smartdigimkt.sdk.basead.ui.animplayerview.scale.AlbumScaleMainView;
import com.smartdigimkt.y1.g;

/* loaded from: classes5.dex */
public final class d extends g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlbumScaleMainView f39312a;

    public d(AlbumScaleMainView albumScaleMainView) {
        this.f39312a = albumScaleMainView;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f39312a.f43781f.sendEmptyMessageDelayed(100, 500L);
    }
}
