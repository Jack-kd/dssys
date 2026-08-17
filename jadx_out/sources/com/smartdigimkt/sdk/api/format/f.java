package com.smartdigimkt.sdk.api.format;

/* loaded from: classes5.dex */
public final class f implements Runnable {
    final /* synthetic */ i this$2;
    final /* synthetic */ boolean val$isTimeout;

    public f(i iVar, boolean z2) {
        this.this$2 = iVar;
        this.val$isTimeout = z2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$2.this$1.this$0.mDevListener != null) {
            this.this$2.this$1.this$0.mDevListener.onAdLoaded(this.val$isTimeout);
        }
    }
}
