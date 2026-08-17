package com.smartdigimkt.v;

import com.smartdigimkt.sdk.api.format.SDMBannerView;

/* loaded from: classes5.dex */
public final class f implements Runnable {
    final /* synthetic */ SDMBannerView this$0;

    public f(SDMBannerView sDMBannerView) {
        this.this$0 = sDMBannerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdLoadFail(com.smartdigimkt.k4.b.a("10001", "Please call setPlacementId(placementId) first."));
        }
    }
}
