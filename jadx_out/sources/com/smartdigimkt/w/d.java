package com.smartdigimkt.w;

/* loaded from: classes5.dex */
public final class d implements Runnable {
    final /* synthetic */ e this$1;
    final /* synthetic */ boolean val$isSuccess;

    public d(e eVar, boolean z2) {
        this.this$1 = eVar;
        this.val$isSuccess = z2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$1.this$0.mDevListener != null) {
            this.this$1.this$0.mDevListener.onDeeplinkCallback(this.val$isSuccess);
        }
    }
}
