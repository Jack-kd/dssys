package com.smartdigimkt.w;

import com.anythink.core.api.ErrorCode;
import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView;

/* loaded from: classes5.dex */
public final class g implements Runnable {
    final /* synthetic */ SDMMyOfferBannerView this$0;

    public g(SDMMyOfferBannerView sDMMyOfferBannerView) {
        this.this$0 = sDMMyOfferBannerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdLoadFail(com.smartdigimkt.k4.b.a(ErrorCode.placementIdError, ""));
        }
    }
}
