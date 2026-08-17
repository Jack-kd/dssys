package com.smartdigimkt.v;

import com.baidu.mobads.sdk.internal.cb;
import com.smartdigimkt.sdk.api.format.SDMBannerView;

/* loaded from: classes5.dex */
public final class e implements com.smartdigimkt.e5.i {
    final /* synthetic */ SDMBannerView this$0;

    public e(SDMBannerView sDMBannerView) {
        this.this$0 = sDMBannerView;
    }

    @Override // com.smartdigimkt.e5.i
    public void onBannerClicked() {
        this.this$0.onAdStatus("click", cb.f11292o);
        com.smartdigimkt.b4.e.a().a(new a(this));
    }

    @Override // com.smartdigimkt.e5.i
    public void onBannerClose() {
        this.this$0.onAdStatus("close", cb.f11292o);
        com.smartdigimkt.b4.e.a().a(new c(this));
    }

    @Override // com.smartdigimkt.e5.i
    public void onBannerShow(boolean z2) {
        this.this$0.onAdStatus("impression", cb.f11292o);
        com.smartdigimkt.b4.e.a().a(new b(this));
    }

    @Override // com.smartdigimkt.e5.i
    public void onDeeplinkCallback(boolean z2) {
        this.this$0.onAdStatus("deeplink", z2 ? cb.f11292o : "fail");
        com.smartdigimkt.b4.e.a().a(new d(this, z2));
    }
}
