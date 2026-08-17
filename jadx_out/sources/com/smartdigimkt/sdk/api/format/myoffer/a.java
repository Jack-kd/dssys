package com.smartdigimkt.sdk.api.format.myoffer;

/* loaded from: classes5.dex */
public final class a implements Runnable {
    final /* synthetic */ c this$1;

    public a(c cVar) {
        this.this$1 = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$1.this$0.mDevListener != null) {
            this.this$1.this$0.mDevListener.onAdLoaded();
        }
        this.this$1.this$0.controlShow();
    }
}
