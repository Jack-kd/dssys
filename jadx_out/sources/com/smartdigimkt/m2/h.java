package com.smartdigimkt.m2;

import android.widget.TextView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView;

/* loaded from: classes5.dex */
public final class h extends com.smartdigimkt.z3.b {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ CountDownSkipIncentiveTaskView f41762f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(CountDownSkipIncentiveTaskView countDownSkipIncentiveTaskView, long j2) {
        super(j2);
        this.f41762f = countDownSkipIncentiveTaskView;
    }

    @Override // com.smartdigimkt.z3.b
    public final void a(long j2) {
        CountDownSkipIncentiveTaskView countDownSkipIncentiveTaskView = this.f41762f;
        TextView textView = countDownSkipIncentiveTaskView.f43986g;
        if (textView != null) {
            textView.setText(countDownSkipIncentiveTaskView.a(j2));
        }
    }

    @Override // com.smartdigimkt.z3.b
    public final void a() {
        if (this.f41762f.i()) {
            this.f41762f.showTaskCompletedManualClaimUi();
            return;
        }
        CountDownSkipIncentiveTaskView countDownSkipIncentiveTaskView = this.f41762f;
        if (!countDownSkipIncentiveTaskView.f43990k) {
            countDownSkipIncentiveTaskView.f43990k = true;
        } else {
            countDownSkipIncentiveTaskView.showTaskCompletedManualClaimUi();
        }
    }
}
