package com.smartdigimkt.w;

import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferRewardedVideoAd;

/* loaded from: classes5.dex */
public final class y implements com.smartdigimkt.p1.a, com.smartdigimkt.p1.g {
    final /* synthetic */ SDMMyOfferRewardedVideoAd this$0;

    public y(SDMMyOfferRewardedVideoAd sDMMyOfferRewardedVideoAd) {
        this.this$0 = sDMMyOfferRewardedVideoAd;
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
            this.this$0.mDevListener.onAdPlayStart();
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
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdReward();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onShowFailed(com.smartdigimkt.i0.f fVar) {
        String str = fVar != null ? fVar.f40652b : "";
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdPlayFailed(com.smartdigimkt.k4.b.a("20002", str));
        }
    }

    @Override // com.smartdigimkt.p1.g
    public void onVideoAdPlayEnd() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdPlayEnd();
        }
    }

    @Override // com.smartdigimkt.p1.g
    public void onVideoAdPlayStart() {
    }
}
