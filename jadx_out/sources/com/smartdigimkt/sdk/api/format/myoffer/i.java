package com.smartdigimkt.sdk.api.format.myoffer;

import com.smartdigimkt.e5.s;
import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class i extends com.smartdigimkt.e5.c {
    final /* synthetic */ j this$1;

    public i(j jVar) {
        this.this$1 = jVar;
    }

    @Override // com.smartdigimkt.e5.c
    public void onAdLoadFail(String str, AdError adError) {
        if (adError != null) {
            adError.getErrorInfo();
        }
        synchronized (((s) this.this$1.this$0).mLock) {
            this.this$1.this$0.isLoading = false;
        }
        com.smartdigimkt.b4.e.a().a(new g(this, adError));
    }

    @Override // com.smartdigimkt.e5.c
    public void onTimeout(String str) {
        com.smartdigimkt.b4.e.a().a(new h(this));
    }

    @Override // com.smartdigimkt.e5.c
    public void onAdLoaded(String str, boolean z2, com.smartdigimkt.r1.d dVar) {
        synchronized (((s) this.this$1.this$0).mLock) {
            this.this$1.this$0.isLoading = false;
            ((s) this.this$1.this$0).mCacheAd = dVar;
        }
        com.smartdigimkt.b4.e.a().a(new f(this, z2));
    }
}
