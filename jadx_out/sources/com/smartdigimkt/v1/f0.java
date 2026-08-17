package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.BaseMediaATView;

/* loaded from: classes5.dex */
public final class f0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseMediaATView f44467a;

    public f0(BaseMediaATView baseMediaATView) {
        this.f44467a = baseMediaATView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.p1.a aVar;
        com.smartdigimkt.m1.r rVar = this.f44467a.f43253d;
        if (rVar == null || (aVar = ((com.smartdigimkt.m1.p) rVar).f41739b.f41747e) == null) {
            return;
        }
        aVar.onAdClosed();
    }
}
