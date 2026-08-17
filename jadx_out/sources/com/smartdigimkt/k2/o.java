package com.smartdigimkt.k2;

import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView;

/* loaded from: classes5.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CountDownSkipIncentiveTaskView f41323a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f41324b;

    public o(p pVar, CountDownSkipIncentiveTaskView countDownSkipIncentiveTaskView) {
        this.f41324b = pVar;
        this.f41323a = countDownSkipIncentiveTaskView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseIncentiveTaskView baseIncentiveTaskView = this.f41324b.f41326j;
        CountDownSkipIncentiveTaskView countDownSkipIncentiveTaskView = this.f41323a;
        if (baseIncentiveTaskView == countDownSkipIncentiveTaskView) {
            countDownSkipIncentiveTaskView.showTaskCompletedManualClaimUi();
        }
    }
}
