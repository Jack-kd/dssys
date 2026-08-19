package com.smartdigimkt.m2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView;

/* loaded from: classes5.dex */
public final class i implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CountDownSkipIncentiveTaskView f41763a;

    public i(CountDownSkipIncentiveTaskView countDownSkipIncentiveTaskView) {
        this.f41763a = countDownSkipIncentiveTaskView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f41763a.f();
    }
}
