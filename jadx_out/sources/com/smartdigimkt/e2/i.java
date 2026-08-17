package com.smartdigimkt.e2;

import android.animation.ValueAnimator;
import android.view.View;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.RedPacketPage;

/* loaded from: classes5.dex */
public final class i implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RedPacketPage f40057a;

    public i(RedPacketPage redPacketPage) {
        this.f40057a = redPacketPage;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.r2.m mVar = this.f40057a.f43827t;
        if (mVar != null) {
            mVar.a(14, 27);
        }
        this.f40057a.stopAnimation();
        RedPacketPage redPacketPage = this.f40057a;
        if (redPacketPage.f43826s == 1) {
            redPacketPage.f43817j.setVisibility(8);
            this.f40057a.f43820m.setVisibility(0);
            RedPacketPage redPacketPage2 = this.f40057a;
            redPacketPage2.f43823p = ValueAnimator.ofInt(0, redPacketPage2.f43825r.size() - 1);
            this.f40057a.f43823p.setDuration(r5.f43825r.size() * 80);
            this.f40057a.f43823p.setRepeatCount(1);
            this.f40057a.f43823p.addUpdateListener(new e(this));
            this.f40057a.f43823p.addListener(new h(this));
            this.f40057a.f43823p.start();
        }
    }
}
