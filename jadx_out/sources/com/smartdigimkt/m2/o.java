package com.smartdigimkt.m2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.QAIncentiveTaskView;

/* loaded from: classes5.dex */
public final class o implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ QAIncentiveTaskView f41769a;

    public o(QAIncentiveTaskView qAIncentiveTaskView) {
        this.f41769a = qAIncentiveTaskView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        c cVar = this.f41769a.f43981b;
        if (cVar != null) {
            ((com.smartdigimkt.k2.n) cVar).a();
        }
    }
}
