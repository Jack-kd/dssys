package com.anythink.splashad.a;

import com.anythink.core.api.AdError;

/* loaded from: classes2.dex */
public abstract class b implements com.anythink.core.common.d.a {
    private String mRequestId;
    private volatile boolean mHasReturn = false;
    private volatile boolean isAdTimeout = false;
    private final com.anythink.core.common.t.a timeOutHandler = com.anythink.core.common.t.c.a();
    private final com.anythink.core.common.v.b.d timeoutRunnable = new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.dv, new Runnable() { // from class: com.anythink.splashad.a.b.1
        @Override // java.lang.Runnable
        public final void run() {
            if (b.this.mHasReturn) {
                return;
            }
            b.this.isAdTimeout = true;
            b bVar = b.this;
            bVar.onTimeout(bVar.mRequestId);
        }
    });

    @Override // com.anythink.core.common.d.a
    public void onAdLoadFail(AdError adError) {
        this.timeOutHandler.a(this.timeoutRunnable);
        if (this.mHasReturn) {
            return;
        }
        this.mHasReturn = true;
        onNoAdError(this.mRequestId, adError);
    }

    @Override // com.anythink.core.common.d.a
    public void onAdLoaded() {
        this.timeOutHandler.a(this.timeoutRunnable);
        if (this.mHasReturn) {
            return;
        }
        this.mHasReturn = true;
        onAdLoaded(this.mRequestId, this.isAdTimeout);
    }

    public abstract void onAdLoaded(String str, boolean z2);

    public abstract void onNoAdError(String str, AdError adError);

    public abstract void onTimeout(String str);

    public void setRequestId(String str) {
        this.mRequestId = str;
    }

    public void startCountDown(int i2) {
        this.timeOutHandler.a(this.timeoutRunnable, i2);
    }
}
