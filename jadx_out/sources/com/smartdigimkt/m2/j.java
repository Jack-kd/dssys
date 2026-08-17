package com.smartdigimkt.m2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView;

/* loaded from: classes5.dex */
public final class j implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CountDownSkipIncentiveTaskView f41764a;

    public j(CountDownSkipIncentiveTaskView countDownSkipIncentiveTaskView) {
        this.f41764a = countDownSkipIncentiveTaskView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f41764a.f();
    }
}
