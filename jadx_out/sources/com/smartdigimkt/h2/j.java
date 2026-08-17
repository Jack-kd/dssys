package com.smartdigimkt.h2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.FingerNewG2CV2View;

/* loaded from: classes5.dex */
public final class j implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FingerNewG2CV2View f40501a;

    public j(FingerNewG2CV2View fingerNewG2CV2View) {
        this.f40501a = fingerNewG2CV2View;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.k2.e eVar = this.f40501a.f43840e;
        if (eVar != null) {
            eVar.a(11, 47);
        }
    }
}
