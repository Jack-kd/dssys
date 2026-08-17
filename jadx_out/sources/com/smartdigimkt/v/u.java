package com.smartdigimkt.v;

/* loaded from: classes5.dex */
public final class u implements Runnable {
    final /* synthetic */ w this$1;

    public u(w wVar) {
        this.this$1 = wVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$1.this$0.mDevListener != null) {
            this.this$1.this$0.mDevListener.onAdLoaded();
        }
    }
}
