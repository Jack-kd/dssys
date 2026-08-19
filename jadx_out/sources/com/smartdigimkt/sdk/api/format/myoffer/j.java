package com.smartdigimkt.sdk.api.format.myoffer;

import android.content.Context;
import com.smartdigimkt.e5.q;
import com.smartdigimkt.e5.r;
import com.smartdigimkt.sdk.api.SDMAdRequest;

/* loaded from: classes5.dex */
public final class j implements Runnable {
    final /* synthetic */ SDMMyOfferSplashAd this$0;
    final /* synthetic */ SDMAdRequest val$adRequest;

    public j(SDMMyOfferSplashAd sDMMyOfferSplashAd, SDMAdRequest sDMAdRequest) {
        this.this$0 = sDMMyOfferSplashAd;
        this.val$adRequest = sDMAdRequest;
    }

    @Override // java.lang.Runnable
    public void run() {
        long j2 = this.this$0.mFetchAdTimeout;
        if (j2 <= 0) {
            j2 = 5000;
        }
        i iVar = new i(this);
        iVar.startCountDown(j2);
        r rVar = this.this$0.mSdmAdLoadManager;
        Context context = this.this$0.mContext;
        SDMAdRequest sDMAdRequest = this.val$adRequest;
        rVar.getClass();
        com.smartdigimkt.b4.e.a().c(new q(rVar, context, 0, sDMAdRequest, iVar));
    }
}
