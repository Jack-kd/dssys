package com.smartdigimkt.e5;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public abstract class c implements p {
    private String mRequestId;
    private volatile boolean mHasReturn = false;
    private volatile boolean isAdTimeout = false;
    private final com.smartdigimkt.x3.a timeOutHandler = com.smartdigimkt.x3.g.a().f45120a;
    private final com.smartdigimkt.x3.b timeoutRunnable = new b(this);

    @Override // com.smartdigimkt.e5.p
    public void onAdLoadFail(AdError adError) {
        this.timeOutHandler.a(this.timeoutRunnable);
        if (this.mHasReturn) {
            return;
        }
        this.mHasReturn = true;
        onAdLoadFail(this.mRequestId, adError);
    }

    public abstract void onAdLoadFail(String str, AdError adError);

    @Override // com.smartdigimkt.e5.p
    public void onAdLoaded(Object obj) {
        this.timeOutHandler.a(this.timeoutRunnable);
        if (this.mHasReturn) {
            return;
        }
        this.mHasReturn = true;
        onAdLoaded(this.mRequestId, this.isAdTimeout, obj);
    }

    public abstract void onAdLoaded(String str, boolean z2, Object obj);

    public abstract void onTimeout(String str);

    public void setRequestId(String str) {
        this.mRequestId = str;
    }

    public void startCountDown(long j2) {
        this.timeOutHandler.a(this.timeoutRunnable, j2);
    }
}
