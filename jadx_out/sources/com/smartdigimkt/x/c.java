package com.smartdigimkt.x;

import android.content.Context;
import com.smartdigimkt.sdk.api.IExHandlerBaseAd;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class c implements IExHandlerBaseAd {

    /* renamed from: b, reason: collision with root package name */
    public static volatile c f45022b;

    /* renamed from: a, reason: collision with root package name */
    public final IExHandlerBaseAd f45023a;

    public c() {
        com.smartdigimkt.i3.b bVarE = SDKContext.getInstance().e();
        if (bVarE != null) {
            this.f45023a = bVarE.getBaseAdHandler();
        }
    }

    public static c a() {
        if (f45022b == null) {
            synchronized (c.class) {
                try {
                    if (f45022b == null) {
                        f45022b = new c();
                    }
                } finally {
                }
            }
        }
        return f45022b;
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public final void addDataFetchListener(IExHandlerBaseAd.DataFetchListener dataFetchListener) {
        IExHandlerBaseAd iExHandlerBaseAd = this.f45023a;
        if (iExHandlerBaseAd == null || dataFetchListener == null) {
            return;
        }
        iExHandlerBaseAd.addDataFetchListener(dataFetchListener);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public final void addDataFetchListenerV2(IExHandlerBaseAd.DataFetchListener dataFetchListener) {
        IExHandlerBaseAd iExHandlerBaseAd = this.f45023a;
        if (iExHandlerBaseAd == null || dataFetchListener == null) {
            return;
        }
        iExHandlerBaseAd.addDataFetchListenerV2(dataFetchListener);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public final void onAdxAdDestroy(Context context) {
        IExHandlerBaseAd iExHandlerBaseAd = this.f45023a;
        if (iExHandlerBaseAd != null) {
            iExHandlerBaseAd.onAdxAdDestroy(context);
        }
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public final void pause(com.smartdigimkt.m3.c cVar) {
        IExHandlerBaseAd iExHandlerBaseAd = this.f45023a;
        if (iExHandlerBaseAd == null || cVar == null) {
            return;
        }
        iExHandlerBaseAd.pause(cVar);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public final void removeDataFetchListener(IExHandlerBaseAd.DataFetchListener dataFetchListener) {
        IExHandlerBaseAd iExHandlerBaseAd = this.f45023a;
        if (iExHandlerBaseAd == null || dataFetchListener == null) {
            return;
        }
        iExHandlerBaseAd.removeDataFetchListener(dataFetchListener);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public final void removeDataFetchListenerV2(IExHandlerBaseAd.DataFetchListener dataFetchListener) {
        IExHandlerBaseAd iExHandlerBaseAd = this.f45023a;
        if (iExHandlerBaseAd == null || dataFetchListener == null) {
            return;
        }
        iExHandlerBaseAd.removeDataFetchListenerV2(dataFetchListener);
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd
    public final void updateOfferInfoWithDataInfo(com.smartdigimkt.m3.c cVar) {
        IExHandlerBaseAd iExHandlerBaseAd = this.f45023a;
        if (iExHandlerBaseAd == null || cVar == null) {
            return;
        }
        iExHandlerBaseAd.updateOfferInfoWithDataInfo(cVar);
    }
}
