package com.smartdigimkt.w;

import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferRewardedVideoAd;

/* loaded from: classes5.dex */
public final class w implements com.smartdigimkt.e5.p {
    final /* synthetic */ SDMMyOfferRewardedVideoAd this$0;

    public w(SDMMyOfferRewardedVideoAd sDMMyOfferRewardedVideoAd) {
        this.this$0 = sDMMyOfferRewardedVideoAd;
    }

    @Override // com.smartdigimkt.e5.p
    public void onAdLoadFail(AdError adError) {
        synchronized (((com.smartdigimkt.e5.s) this.this$0).mLock) {
            this.this$0.isLoading = false;
        }
        com.smartdigimkt.b4.e.a().a(new v(this, adError));
    }

    @Override // com.smartdigimkt.e5.p
    public void onAdLoaded(com.smartdigimkt.r1.d dVar) {
        synchronized (((com.smartdigimkt.e5.s) this.this$0).mLock) {
            this.this$0.isLoading = false;
            ((com.smartdigimkt.e5.s) this.this$0).mCacheAd = dVar;
        }
        com.smartdigimkt.b4.e.a().a(new u(this));
    }
}
