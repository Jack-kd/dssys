package com.smartdigimkt.m2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView;

/* loaded from: classes5.dex */
public final class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CountDownSkipIncentiveTaskView f41759a;

    public e(CountDownSkipIncentiveTaskView countDownSkipIncentiveTaskView) {
        this.f41759a = countDownSkipIncentiveTaskView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        this.f41759a.b(view);
    }
}
