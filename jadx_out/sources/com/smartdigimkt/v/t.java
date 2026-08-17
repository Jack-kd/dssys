package com.smartdigimkt.v;

import com.anythink.core.api.ErrorCode;
import com.smartdigimkt.sdk.api.format.SDMNative;

/* loaded from: classes5.dex */
public final class t implements Runnable {
    final /* synthetic */ SDMNative this$0;

    public t(SDMNative sDMNative) {
        this.this$0 = sDMNative;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdLoadFail(com.smartdigimkt.k4.b.a(ErrorCode.placementIdError, ""));
        }
    }
}
