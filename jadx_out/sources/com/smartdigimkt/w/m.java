package com.smartdigimkt.w;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class m implements Runnable {
    final /* synthetic */ n this$1;
    final /* synthetic */ AdError val$adError;

    public m(n nVar, AdError adError) {
        this.this$1 = nVar;
        this.val$adError = adError;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$1.this$0.mDevListener != null) {
            this.this$1.this$0.mDevListener.onAdLoadFail(this.val$adError);
        }
    }
}
