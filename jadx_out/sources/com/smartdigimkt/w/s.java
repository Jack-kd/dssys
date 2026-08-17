package com.smartdigimkt.w;

import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferNative;

/* loaded from: classes5.dex */
public final class s implements com.smartdigimkt.e5.p {
    final /* synthetic */ SDMMyOfferNative this$0;

    public s(SDMMyOfferNative sDMMyOfferNative) {
        this.this$0 = sDMMyOfferNative;
    }

    @Override // com.smartdigimkt.e5.p
    public void onAdLoadFail(AdError adError) {
        synchronized (((com.smartdigimkt.e5.s) this.this$0).mLock) {
            this.this$0.isLoading = false;
        }
        com.smartdigimkt.b4.e.a().a(new r(this, adError));
    }

    @Override // com.smartdigimkt.e5.p
    public void onAdLoaded(com.smartdigimkt.r1.d dVar) {
        synchronized (((com.smartdigimkt.e5.s) this.this$0).mLock) {
            this.this$0.isLoading = false;
        }
        com.smartdigimkt.b4.e.a().a(new q(this, dVar));
    }
}
