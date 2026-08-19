package com.smartdigimkt.h2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.FingerG2CV2View;

/* loaded from: classes5.dex */
public final class i implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FingerG2CV2View f40499a;

    public i(FingerG2CV2View fingerG2CV2View) {
        this.f40499a = fingerG2CV2View;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.k2.e eVar = this.f40499a.f43840e;
        if (eVar != null) {
            eVar.a(11, 20);
        }
    }
}
