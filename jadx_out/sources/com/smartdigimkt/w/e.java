package com.smartdigimkt.w;

import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView;

/* loaded from: classes5.dex */
public final class e implements com.smartdigimkt.e5.i {
    final /* synthetic */ SDMMyOfferBannerView this$0;

    public e(SDMMyOfferBannerView sDMMyOfferBannerView) {
        this.this$0 = sDMMyOfferBannerView;
    }

    @Override // com.smartdigimkt.e5.i
    public void onBannerClicked() {
        com.smartdigimkt.b4.e.a().a(new a(this));
    }

    @Override // com.smartdigimkt.e5.i
    public void onBannerClose() {
        com.smartdigimkt.b4.e.a().a(new c(this));
    }

    @Override // com.smartdigimkt.e5.i
    public void onBannerShow(boolean z2) {
        com.smartdigimkt.b4.e.a().a(new b(this));
    }

    @Override // com.smartdigimkt.e5.i
    public void onDeeplinkCallback(boolean z2) {
        com.smartdigimkt.b4.e.a().a(new d(this, z2));
    }
}
