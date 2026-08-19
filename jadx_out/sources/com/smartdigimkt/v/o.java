package com.smartdigimkt.v;

import com.anythink.core.api.ErrorCode;
import com.smartdigimkt.sdk.api.format.SDMInterstitialAd;

/* loaded from: classes5.dex */
public final class o implements Runnable {
    final /* synthetic */ SDMInterstitialAd this$0;

    public o(SDMInterstitialAd sDMInterstitialAd) {
        this.this$0 = sDMInterstitialAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdLoadFail(com.smartdigimkt.k4.b.a(ErrorCode.placementIdError, ""));
        }
    }
}
