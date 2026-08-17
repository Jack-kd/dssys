package com.smartdigimkt.m2;

import android.view.View;
import android.widget.Toast;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.QAIncentiveTaskView;

/* loaded from: classes5.dex */
public final class n implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ QAIncentiveTaskView f41768a;

    public n(QAIncentiveTaskView qAIncentiveTaskView) {
        this.f41768a = qAIncentiveTaskView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Toast.makeText(this.f41768a.getContext().getApplicationContext(), com.smartdigimkt.c5.k.a(this.f41768a.getContext(), "myoffer_inctask_qa_toast_wrong", "string"), 1).show();
        c cVar = this.f41768a.f43981b;
        if (cVar != null) {
            com.smartdigimkt.k2.n nVar = (com.smartdigimkt.k2.n) cVar;
            nVar.f41322a.f41331o = 2;
            nVar.a();
        }
    }
}
