package com.smartdigimkt.w;

import com.anythink.core.api.ErrorCode;
import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferInterstitialAd;

/* loaded from: classes5.dex */
public final class o implements Runnable {
    final /* synthetic */ SDMMyOfferInterstitialAd this$0;

    public o(SDMMyOfferInterstitialAd sDMMyOfferInterstitialAd) {
        this.this$0 = sDMMyOfferInterstitialAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdLoadFail(com.smartdigimkt.k4.b.a(ErrorCode.placementIdError, ""));
        }
    }
}
