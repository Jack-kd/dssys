package com.smartdigimkt.sdk.api.format.myoffer;

import com.smartdigimkt.e5.p;
import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class c implements p {
    final /* synthetic */ SDMMyOfferBannerView this$0;

    public c(SDMMyOfferBannerView sDMMyOfferBannerView) {
        this.this$0 = sDMMyOfferBannerView;
    }

    @Override // com.smartdigimkt.e5.p
    public void onAdLoadFail(AdError adError) {
        synchronized (this.this$0.mLock) {
            this.this$0.isLoading = false;
        }
        if (this.this$0.mIsRefresh) {
            return;
        }
        com.smartdigimkt.b4.e.a().a(new b(this, adError));
        if (this.this$0.mSdmAdLoadManager == null || !this.this$0.isInView() || this.this$0.mBannerRefreshTimer.f40087e) {
            return;
        }
        this.this$0.mBannerRefreshTimer.b();
    }

    @Override // com.smartdigimkt.e5.p
    public void onAdLoaded(com.smartdigimkt.r1.d dVar) {
        synchronized (this.this$0.mLock) {
            try {
                this.this$0.isLoading = false;
                if (dVar instanceof com.smartdigimkt.r1.a) {
                    this.this$0.mCacheAd = (com.smartdigimkt.r1.a) dVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        SDMMyOfferBannerView sDMMyOfferBannerView = this.this$0;
        sDMMyOfferBannerView.isShowCall = true;
        if (sDMMyOfferBannerView.mIsRefresh) {
            return;
        }
        com.smartdigimkt.b4.e.a().a(new a(this));
    }
}
