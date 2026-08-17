package com.smartdigimkt.sdk.api.format;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class g implements Runnable {
    final /* synthetic */ i this$2;
    final /* synthetic */ AdError val$adError;

    public g(i iVar, AdError adError) {
        this.this$2 = iVar;
        this.val$adError = adError;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$2.this$1.this$0.mDevListener != null) {
            this.this$2.this$1.this$0.mDevListener.onAdLoadFail(this.val$adError);
        }
    }
}
