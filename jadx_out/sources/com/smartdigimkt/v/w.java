package com.smartdigimkt.v;

import com.baidu.mobads.sdk.internal.cb;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.format.SDMRewardedVideoAd;

/* loaded from: classes5.dex */
public final class w implements com.smartdigimkt.e5.p {
    final /* synthetic */ SDMRewardedVideoAd this$0;

    public w(SDMRewardedVideoAd sDMRewardedVideoAd) {
        this.this$0 = sDMRewardedVideoAd;
    }

    @Override // com.smartdigimkt.e5.p
    public void onAdLoadFail(AdError adError) {
        this.this$0.printAdStatusLog("request_result", "fail", adError != null ? adError.getErrorInfo() : "", adError);
        synchronized (((com.smartdigimkt.e5.o) this.this$0).mLock) {
            this.this$0.isLoading = false;
        }
        com.smartdigimkt.b4.e.a().a(new v(this, adError));
    }

    @Override // com.smartdigimkt.e5.p
    public void onAdLoaded(com.smartdigimkt.j1.f fVar) {
        synchronized (((com.smartdigimkt.e5.o) this.this$0).mLock) {
            this.this$0.isLoading = false;
            ((com.smartdigimkt.e5.o) this.this$0).mCacheAd = fVar;
        }
        this.this$0.printAdStatusLog("request_result", cb.f11292o, "");
        com.smartdigimkt.b4.e.a().a(new u(this));
    }
}
