package com.smartdigimkt.v;

import com.anythink.core.api.ErrorCode;
import com.smartdigimkt.sdk.api.format.SDMSplashAd;

/* loaded from: classes5.dex */
public final class a0 implements Runnable {
    final /* synthetic */ SDMSplashAd this$0;

    public a0(SDMSplashAd sDMSplashAd) {
        this.this$0 = sDMSplashAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdLoadFail(com.smartdigimkt.k4.b.a(ErrorCode.placementIdError, ""));
        }
    }
}
