package com.smartdigimkt.sdk.api.format.myoffer;

/* loaded from: classes5.dex */
public final class h implements Runnable {
    final /* synthetic */ i this$2;

    public h(i iVar) {
        this.this$2 = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$2.this$1.this$0.mDevListener != null) {
            this.this$2.this$1.this$0.mDevListener.onAdLoadTimeout();
        }
    }
}
