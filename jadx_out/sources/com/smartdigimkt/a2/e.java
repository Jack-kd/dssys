package com.smartdigimkt.a2;

import android.animation.Animator;
import android.os.Handler;
import com.smartdigimkt.sdk.basead.ui.animplayerview.scale.AlbumScaleMainView;
import com.smartdigimkt.y1.g;

/* loaded from: classes5.dex */
public final class e extends g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlbumScaleMainView f39313a;

    public e(AlbumScaleMainView albumScaleMainView) {
        this.f39313a = albumScaleMainView;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Handler handler = this.f39313a.f43781f;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(100, 500L);
        }
    }
}
