package com.smartdigimkt.sdk.api.format;

import com.baidu.mobads.sdk.internal.cb;
import com.smartdigimkt.e5.o;
import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class i extends com.smartdigimkt.e5.c {
    final /* synthetic */ j this$1;

    public i(j jVar) {
        this.this$1 = jVar;
    }

    @Override // com.smartdigimkt.e5.c
    public void onAdLoadFail(String str, AdError adError) {
        this.this$1.this$0.printAdStatusLog("request_result", "fail", adError != null ? adError.getErrorInfo() : "", adError);
        synchronized (((o) this.this$1.this$0).mLock) {
            this.this$1.this$0.isLoading = false;
        }
        com.smartdigimkt.b4.e.a().a(new g(this, adError));
    }

    @Override // com.smartdigimkt.e5.c
    public void onTimeout(String str) {
        this.this$1.this$0.printAdStatusLog("request_result", "timeout", "");
        com.smartdigimkt.b4.e.a().a(new h(this));
    }

    @Override // com.smartdigimkt.e5.c
    public void onAdLoaded(String str, boolean z2, com.smartdigimkt.j1.f fVar) {
        synchronized (((o) this.this$1.this$0).mLock) {
            this.this$1.this$0.isLoading = false;
            ((o) this.this$1.this$0).mCacheAd = fVar;
        }
        this.this$1.this$0.printAdStatusLog("request_result", cb.f11292o, "");
        com.smartdigimkt.b4.e.a().a(new f(this, z2));
    }
}
