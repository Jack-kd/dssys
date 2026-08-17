package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.RewardExitConfirmDialogActivity;

/* loaded from: classes5.dex */
public final class s4 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RewardExitConfirmDialogActivity f44610a;

    public s4(RewardExitConfirmDialogActivity rewardExitConfirmDialogActivity) {
        this.f44610a = rewardExitConfirmDialogActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f44610a.finish();
        Runnable runnable = RewardExitConfirmDialogActivity.f43562b;
        if (runnable != null) {
            runnable.run();
        }
    }
}
