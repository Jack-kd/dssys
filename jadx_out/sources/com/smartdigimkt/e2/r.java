package com.smartdigimkt.e2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.SecondEndCardView;

/* loaded from: classes5.dex */
public final class r implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SecondEndCardView f40067a;

    public r(SecondEndCardView secondEndCardView) {
        this.f40067a = secondEndCardView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.r2.m mVar = this.f40067a.f43834g;
        if (mVar != null) {
            mVar.a(15, 38);
        }
    }
}
