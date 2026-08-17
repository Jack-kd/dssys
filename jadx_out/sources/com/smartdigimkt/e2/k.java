package com.smartdigimkt.e2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.RedPacketPage;

/* loaded from: classes5.dex */
public final class k implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RedPacketPage f40059a;

    public k(RedPacketPage redPacketPage) {
        this.f40059a = redPacketPage;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.r2.m mVar = this.f40059a.f43827t;
        if (mVar != null) {
            mVar.a(14, 29);
        }
    }
}
