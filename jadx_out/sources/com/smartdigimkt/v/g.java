package com.smartdigimkt.v;

import com.anythink.core.api.ErrorCode;
import com.smartdigimkt.sdk.api.format.SDMBannerView;

/* loaded from: classes5.dex */
public final class g implements Runnable {
    final /* synthetic */ SDMBannerView this$0;

    public g(SDMBannerView sDMBannerView) {
        this.this$0 = sDMBannerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdLoadFail(com.smartdigimkt.k4.b.a(ErrorCode.placementIdError, ""));
        }
    }
}
