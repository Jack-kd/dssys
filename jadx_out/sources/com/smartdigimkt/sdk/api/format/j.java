package com.smartdigimkt.sdk.api.format;

import android.content.Context;
import com.smartdigimkt.e5.m;
import com.smartdigimkt.e5.n;
import com.smartdigimkt.sdk.api.SDMAdRequest;

/* loaded from: classes5.dex */
public final class j implements Runnable {
    final /* synthetic */ SDMSplashAd this$0;
    final /* synthetic */ SDMAdRequest val$adRequest;

    public j(SDMSplashAd sDMSplashAd, SDMAdRequest sDMAdRequest) {
        this.this$0 = sDMSplashAd;
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
        n nVar = this.this$0.mSdmAdLoadManager;
        Context context = this.this$0.mContext;
        SDMAdRequest sDMAdRequest = this.val$adRequest;
        nVar.getClass();
        com.smartdigimkt.b4.e.a().c(new m(nVar, context, 0, sDMAdRequest, iVar));
    }
}
