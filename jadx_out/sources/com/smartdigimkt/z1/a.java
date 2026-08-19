package com.smartdigimkt.z1;

import android.animation.Animator;
import android.os.Handler;
import com.smartdigimkt.sdk.basead.ui.animplayerview.redpacket.RedPacketAnimatorView;
import com.smartdigimkt.y1.g;

/* loaded from: classes5.dex */
public final class a extends g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RedPacketAnimatorView f45430a;

    public a(RedPacketAnimatorView redPacketAnimatorView) {
        this.f45430a = redPacketAnimatorView;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Handler handler = this.f45430a.f43740g;
        if (handler != null) {
            handler.removeMessages(100);
            this.f45430a.f43740g.sendEmptyMessageDelayed(100, 500L);
        }
    }
}
