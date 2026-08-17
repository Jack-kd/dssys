package com.smartdigimkt.v;

import com.smartdigimkt.sdk.api.format.SDMSplashAd;

/* loaded from: classes5.dex */
public final class b0 implements Runnable {
    final /* synthetic */ SDMSplashAd this$0;

    public b0(SDMSplashAd sDMSplashAd) {
        this.this$0 = sDMSplashAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdLoaded(false);
        }
    }
}
