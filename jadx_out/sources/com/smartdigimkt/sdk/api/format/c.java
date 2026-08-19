package com.smartdigimkt.sdk.api.format;

import com.baidu.mobads.sdk.internal.cb;
import com.smartdigimkt.e5.p;
import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class c implements p {
    final /* synthetic */ SDMBannerView this$0;

    public c(SDMBannerView sDMBannerView) {
        this.this$0 = sDMBannerView;
    }

    @Override // com.smartdigimkt.e5.p
    public void onAdLoadFail(AdError adError) {
        this.this$0.onAdStatus("request_result", "fail", adError);
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
    public void onAdLoaded(com.smartdigimkt.j1.f fVar) {
        synchronized (this.this$0.mLock) {
            try {
                this.this$0.isLoading = false;
                if (fVar instanceof com.smartdigimkt.j1.a) {
                    SDMBannerView sDMBannerView = this.this$0;
                    if (sDMBannerView.mIsRefresh) {
                        sDMBannerView.mRefreshCacheAd = (com.smartdigimkt.j1.a) fVar;
                    } else {
                        sDMBannerView.mCacheAd = (com.smartdigimkt.j1.a) fVar;
                    }
                }
                this.this$0.onAdStatus("request_result", cb.f11292o);
            } catch (Throwable th) {
                throw th;
            }
        }
        SDMBannerView sDMBannerView2 = this.this$0;
        sDMBannerView2.isShowCall = true;
        if (sDMBannerView2.mIsRefresh) {
            return;
        }
        com.smartdigimkt.b4.e.a().a(new a(this));
    }
}
