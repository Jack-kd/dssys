package com.smartdigimkt.v;

import com.smartdigimkt.sdk.api.format.SDMBannerView;

/* loaded from: classes5.dex */
public final class h implements Runnable {
    final /* synthetic */ SDMBannerView this$0;

    public h(SDMBannerView sDMBannerView) {
        this.this$0 = sDMBannerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdLoaded();
        }
    }
}
