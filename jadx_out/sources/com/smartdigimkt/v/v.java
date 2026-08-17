package com.smartdigimkt.v;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class v implements Runnable {
    final /* synthetic */ w this$1;
    final /* synthetic */ AdError val$adError;

    public v(w wVar, AdError adError) {
        this.this$1 = wVar;
        this.val$adError = adError;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$1.this$0.mDevListener != null) {
            this.this$1.this$0.mDevListener.onAdLoadFail(this.val$adError);
        }
    }
}
