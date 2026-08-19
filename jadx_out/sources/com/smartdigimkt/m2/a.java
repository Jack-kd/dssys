package com.smartdigimkt.m2;

import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.BaseIncentiveTaskView;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseIncentiveTaskView f41756a;

    public a(BaseIncentiveTaskView baseIncentiveTaskView) {
        this.f41756a = baseIncentiveTaskView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = this.f41756a.f43981b;
        if (cVar != null) {
            ((com.smartdigimkt.k2.n) cVar).a();
        }
    }
}
