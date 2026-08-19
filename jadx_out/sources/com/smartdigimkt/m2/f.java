package com.smartdigimkt.m2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView;

/* loaded from: classes5.dex */
public final class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CountDownSkipIncentiveTaskView f41760a;

    public f(CountDownSkipIncentiveTaskView countDownSkipIncentiveTaskView) {
        this.f41760a = countDownSkipIncentiveTaskView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        c cVar = this.f41760a.f43981b;
        if (cVar != null) {
            ((com.smartdigimkt.k2.n) cVar).a();
        }
    }
}
