package com.smartdigimkt.e2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.SecondEndCardView;

/* loaded from: classes5.dex */
public final class p implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SecondEndCardView f40065a;

    public p(SecondEndCardView secondEndCardView) {
        this.f40065a = secondEndCardView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.r2.m mVar = this.f40065a.f43834g;
        if (mVar != null) {
            mVar.a(15, 36);
        }
    }
}
