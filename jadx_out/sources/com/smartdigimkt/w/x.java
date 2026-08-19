package com.smartdigimkt.w;

import com.anythink.core.api.ErrorCode;
import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferRewardedVideoAd;

/* loaded from: classes5.dex */
public final class x implements Runnable {
    final /* synthetic */ SDMMyOfferRewardedVideoAd this$0;

    public x(SDMMyOfferRewardedVideoAd sDMMyOfferRewardedVideoAd) {
        this.this$0 = sDMMyOfferRewardedVideoAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdLoadFail(com.smartdigimkt.k4.b.a(ErrorCode.placementIdError, ""));
        }
    }
}
