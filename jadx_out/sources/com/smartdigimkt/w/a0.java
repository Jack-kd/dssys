package com.smartdigimkt.w;

import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferSplashAd;

/* loaded from: classes5.dex */
public final class a0 implements Runnable {
    final /* synthetic */ SDMMyOfferSplashAd this$0;

    public a0(SDMMyOfferSplashAd sDMMyOfferSplashAd) {
        this.this$0 = sDMMyOfferSplashAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdLoaded(false);
        }
    }
}
