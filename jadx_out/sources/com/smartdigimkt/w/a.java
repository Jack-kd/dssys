package com.smartdigimkt.w;

/* loaded from: classes5.dex */
public final class a implements Runnable {
    final /* synthetic */ e this$1;

    public a(e eVar) {
        this.this$1 = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$1.this$0.mDevListener != null) {
            this.this$1.this$0.mDevListener.onAdClick();
        }
    }
}
