package com.smartdigimkt.e2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.component.emdcardimprove.RPSecondEndCardView;

/* loaded from: classes5.dex */
public final class b implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RPSecondEndCardView f40049a;

    public b(RPSecondEndCardView rPSecondEndCardView) {
        this.f40049a = rPSecondEndCardView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.r2.m mVar = this.f40049a.f43834g;
        if (mVar != null) {
            mVar.a(15, 34);
        }
    }
}
