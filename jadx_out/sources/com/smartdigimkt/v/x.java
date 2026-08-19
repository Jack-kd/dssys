package com.smartdigimkt.v;

import com.anythink.core.api.ErrorCode;
import com.smartdigimkt.sdk.api.format.SDMRewardedVideoAd;

/* loaded from: classes5.dex */
public final class x implements Runnable {
    final /* synthetic */ SDMRewardedVideoAd this$0;

    public x(SDMRewardedVideoAd sDMRewardedVideoAd) {
        this.this$0 = sDMRewardedVideoAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdLoadFail(com.smartdigimkt.k4.b.a(ErrorCode.placementIdError, ""));
        }
    }
}
