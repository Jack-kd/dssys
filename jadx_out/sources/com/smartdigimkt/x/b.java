package com.smartdigimkt.x;

import com.smartdigimkt.sdk.api.IExHandlerBaseAd;

/* loaded from: classes5.dex */
public abstract class b implements IExHandlerBaseAd.DataFetchListener {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f45021a;

    public b(com.smartdigimkt.m3.c cVar) {
        this.f45021a = cVar;
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd.DataFetchListener
    public final com.smartdigimkt.m3.c getBaseAdContent() {
        return this.f45021a;
    }
}
