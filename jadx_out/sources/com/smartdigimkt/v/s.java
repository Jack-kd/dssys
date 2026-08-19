package com.smartdigimkt.v;

import com.baidu.mobads.sdk.internal.cb;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.format.SDMNative;

/* loaded from: classes5.dex */
public final class s implements com.smartdigimkt.e5.p {
    final /* synthetic */ SDMNative this$0;

    public s(SDMNative sDMNative) {
        this.this$0 = sDMNative;
    }

    @Override // com.smartdigimkt.e5.p
    public void onAdLoadFail(AdError adError) {
        this.this$0.printAdStatusLog("request_result", "fail", adError != null ? adError.getErrorInfo() : "", adError);
        synchronized (((com.smartdigimkt.e5.o) this.this$0).mLock) {
            this.this$0.isLoading = false;
        }
        com.smartdigimkt.b4.e.a().a(new r(this, adError));
    }

    @Override // com.smartdigimkt.e5.p
    public void onAdLoaded(com.smartdigimkt.j1.f fVar) {
        this.this$0.printAdStatusLog("request_result", cb.f11292o, "");
        synchronized (((com.smartdigimkt.e5.o) this.this$0).mLock) {
            this.this$0.isLoading = false;
        }
        com.smartdigimkt.b4.e.a().a(new q(this, fVar));
    }
}
