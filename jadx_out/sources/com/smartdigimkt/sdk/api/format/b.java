package com.smartdigimkt.sdk.api.format;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class b implements Runnable {
    final /* synthetic */ c this$1;
    final /* synthetic */ AdError val$adError;

    public b(c cVar, AdError adError) {
        this.this$1 = cVar;
        this.val$adError = adError;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$1.this$0.mDevListener == null || !this.this$1.this$0.canRenderBanner) {
            return;
        }
        SDMBannerView sDMBannerView = this.this$1.this$0;
        if (sDMBannerView.mIsRefresh) {
            return;
        }
        sDMBannerView.mDevListener.onAdLoadFail(this.val$adError);
    }
}
