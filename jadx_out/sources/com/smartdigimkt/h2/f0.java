package com.smartdigimkt.h2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.HintTextG2CV2View;

/* loaded from: classes5.dex */
public final class f0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ HintTextG2CV2View f40497a;

    public f0(HintTextG2CV2View hintTextG2CV2View) {
        this.f40497a = hintTextG2CV2View;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.k2.e eVar = this.f40497a.f43840e;
        if (eVar != null) {
            eVar.a(11, 18);
        }
    }
}
