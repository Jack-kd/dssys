package com.smartdigimkt.w;

import com.anythink.core.api.ErrorCode;
import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferNative;

/* loaded from: classes5.dex */
public final class t implements Runnable {
    final /* synthetic */ SDMMyOfferNative this$0;

    public t(SDMMyOfferNative sDMMyOfferNative) {
        this.this$0 = sDMMyOfferNative;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDevListener != null) {
            this.this$0.mDevListener.onAdLoadFail(com.smartdigimkt.k4.b.a(ErrorCode.placementIdError, ""));
        }
    }
}
