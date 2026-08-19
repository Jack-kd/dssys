package com.smartdigimkt.e2;

import android.animation.ValueAnimator;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.RedPacketPage;

/* loaded from: classes5.dex */
public final class e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f40052a;

    public e(i iVar) {
        this.f40052a = iVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        RedPacketPage redPacketPage = this.f40052a.f40057a;
        if (redPacketPage.f43820m == null || iIntValue >= redPacketPage.f43825r.size()) {
            return;
        }
        RedPacketPage redPacketPage2 = this.f40052a.f40057a;
        redPacketPage2.f43820m.setImageResource(((Integer) redPacketPage2.f43825r.get(iIntValue)).intValue());
    }
}
