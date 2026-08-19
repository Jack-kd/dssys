package com.smartdigimkt.h2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.JumpConfirmG2CV2View;

/* loaded from: classes5.dex */
public final class i0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JumpConfirmG2CV2View f40500a;

    public i0(JumpConfirmG2CV2View jumpConfirmG2CV2View) {
        this.f40500a = jumpConfirmG2CV2View;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.k2.e eVar = this.f40500a.f43840e;
        if (eVar != null) {
            eVar.a(11, 19);
        }
    }
}
