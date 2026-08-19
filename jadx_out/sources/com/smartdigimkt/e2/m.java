package com.smartdigimkt.e2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.RedPacketPage;

/* loaded from: classes5.dex */
public final class m implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RedPacketPage f40061a;

    public m(RedPacketPage redPacketPage) {
        this.f40061a = redPacketPage;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.r2.m mVar = this.f40061a.f43827t;
        if (mVar != null) {
            mVar.a(14, 31);
        }
    }
}
