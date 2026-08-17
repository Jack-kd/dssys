package com.smartdigimkt.h2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.QuestionDialogG2CV2View;

/* loaded from: classes5.dex */
public final class a1 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ QuestionDialogG2CV2View f40459a;

    public a1(QuestionDialogG2CV2View questionDialogG2CV2View) {
        this.f40459a = questionDialogG2CV2View;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.smartdigimkt.k2.e eVar = this.f40459a.f43840e;
        if (eVar != null) {
            eVar.a(11, 17);
        }
    }
}
