package com.smartdigimkt.w;

import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView;

/* loaded from: classes5.dex */
public final class k implements com.smartdigimkt.p1.a {
    final /* synthetic */ SDMMyOfferBannerView this$0;
    final /* synthetic */ boolean val$currentRefreshStatus;

    public k(SDMMyOfferBannerView sDMMyOfferBannerView, boolean z2) {
        this.this$0 = sDMMyOfferBannerView;
        this.val$currentRefreshStatus = z2;
    }

    @Override // com.smartdigimkt.p1.a
    public void onAdClick(com.smartdigimkt.p1.u uVar) {
        if (this.this$0.mInnerBannerListener != null) {
            this.this$0.mInnerBannerListener.onBannerClicked();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onAdClosed() {
        if (this.this$0.mInnerBannerListener != null) {
            this.this$0.mInnerBannerListener.onBannerClose();
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onAdShow(com.smartdigimkt.p1.u uVar) {
        if (this.this$0.mInnerBannerListener != null) {
            this.this$0.mInnerBannerListener.onBannerShow(this.val$currentRefreshStatus);
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onDeeplinkCallback(boolean z2) {
        if (this.this$0.mInnerBannerListener != null) {
            this.this$0.mInnerBannerListener.onDeeplinkCallback(z2);
        }
    }

    @Override // com.smartdigimkt.p1.a
    public void onShowFailed(com.smartdigimkt.i0.f fVar) {
    }
}
