package com.smartdigimkt.e2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.RedPacketPage;

/* loaded from: classes5.dex */
public final class g extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f40055a;

    public g(h hVar) {
        this.f40055a = hVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        RelativeLayout relativeLayout = this.f40055a.f40056a.f40057a.f43808a;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        RelativeLayout relativeLayout2 = this.f40055a.f40056a.f40057a.f43809b;
        if (relativeLayout2 != null) {
            relativeLayout2.setAlpha(1.0f);
            this.f40055a.f40056a.f40057a.f43809b.setVisibility(0);
        }
        RedPacketPage redPacketPage = this.f40055a.f40056a.f40057a;
        TextView textView = redPacketPage.f43821n;
        if (textView == null) {
            return;
        }
        com.smartdigimkt.x1.h hVar = redPacketPage.f43822o;
        if (hVar != null) {
            hVar.stop();
        }
        com.smartdigimkt.x1.h hVar2 = new com.smartdigimkt.x1.h(textView);
        redPacketPage.f43822o = hVar2;
        hVar2.f45079e = 0.85f;
        hVar2.start();
    }
}
