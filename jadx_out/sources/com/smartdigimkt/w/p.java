package com.smartdigimkt.w;

import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferInterstitialAd;

/* loaded from: classes5.dex */
public final class p implements com.smartdigimkt.p1.a, com.smartdigimkt.p1.g {
    final /* synthetic */ SDMMyOfferInterstitialAd this$0;

    public p(SDMMyOfferInterstitialAd sDMMyOfferInterstitialAd) {
        this.this$0 = sDMMyOfferInterstitialAd;
    }

    @Override // com.smartdigimkt.p1.a
    public void onAdClick(com.smartdigimkt.p1.u uVar) {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdClick();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onAdClosed() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdClose();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onAdShow(com.smartdigimkt.p1.u uVar) {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdShow();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onDeeplinkCallback(boolean z2) {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onDeeplinkCallback(z2);
        }
    }

    @Override // com.smartdigimkt.p1.g
    public void onRewarded() {
    }

    @Override // com.smartdigimkt.p1.a
    public void onShowFailed(com.smartdigimkt.i0.f fVar) {
        String str = fVar != null ? fVar.f40652b : "";
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdShowFail(com.smartdigimkt.k4.b.a("20002", str));
        }
    }

    @Override // com.smartdigimkt.p1.g
    public void onVideoAdPlayEnd() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdVideoEnd();
        }
    }

    @Override // com.smartdigimkt.p1.g
    public void onVideoAdPlayStart() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdVideoStart();
        }
    }
}
