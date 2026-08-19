package com.smartdigimkt.w;

/* loaded from: classes5.dex */
public final class l implements Runnable {
    final /* synthetic */ n this$1;

    public l(n nVar) {
        this.this$1 = nVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$1.this$0.mDevListener != null) {
            this.this$1.this$0.mDevListener.onAdLoaded();
        }
    }
}
