package com.smartdigimkt.w;

import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferInterstitialAd;

/* loaded from: classes5.dex */
public final class n implements com.smartdigimkt.e5.p {
    final /* synthetic */ SDMMyOfferInterstitialAd this$0;

    public n(SDMMyOfferInterstitialAd sDMMyOfferInterstitialAd) {
        this.this$0 = sDMMyOfferInterstitialAd;
    }

    @Override // com.smartdigimkt.e5.p
    public void onAdLoadFail(AdError adError) {
        if (adError != null) {
            adError.getErrorInfo();
        }
        synchronized (((com.smartdigimkt.e5.s) this.this$0).mLock) {
            this.this$0.isLoading = false;
        }
        com.smartdigimkt.b4.e.a().a(new m(this, adError));
    }

    @Override // com.smartdigimkt.e5.p
    public void onAdLoaded(com.smartdigimkt.r1.d dVar) {
        synchronized (((com.smartdigimkt.e5.s) this.this$0).mLock) {
            this.this$0.isLoading = false;
            ((com.smartdigimkt.e5.s) this.this$0).mCacheAd = dVar;
        }
        com.smartdigimkt.b4.e.a().a(new l(this));
    }
}
