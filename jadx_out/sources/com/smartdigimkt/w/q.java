package com.smartdigimkt.w;

/* loaded from: classes5.dex */
public final class q implements Runnable {
    final /* synthetic */ s this$1;
    final /* synthetic */ com.smartdigimkt.r1.d val$ownBaseAd;

    public q(s sVar, com.smartdigimkt.r1.d dVar) {
        this.this$1 = sVar;
        this.val$ownBaseAd = dVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!(this.val$ownBaseAd instanceof com.smartdigimkt.r1.m)) {
            if (this.this$1.this$0.mDevListener != null) {
                this.this$1.this$0.mDevListener.onAdLoadFail(com.smartdigimkt.k4.b.a(com.anythink.core.common.inner.b.b.f4587d, "Ad is loaded but not match type."));
            }
        } else if (this.this$1.this$0.mDevListener != null) {
            this.this$1.this$0.mNativeAdImp = new com.smartdigimkt.e5.u((com.smartdigimkt.r1.m) this.val$ownBaseAd);
            this.this$1.this$0.mDevListener.onAdLoaded(this.this$1.this$0.mNativeAdImp);
        }
    }
}
