package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.BaseATView;

/* loaded from: classes5.dex */
public final class x extends com.smartdigimkt.x.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f44644b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BaseATView f44645c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(BaseATView baseATView, com.smartdigimkt.m3.c cVar, com.smartdigimkt.m3.c cVar2) {
        super(cVar);
        this.f44645c = baseATView;
        this.f44644b = cVar2;
    }

    @Override // com.smartdigimkt.sdk.api.IExHandlerBaseAd.DataFetchListener
    public final void onStatusChanged(int i2, String str) {
        if (i2 != 2) {
            return;
        }
        String str2 = this.f44645c.f43215a;
        com.smartdigimkt.m3.c cVar = this.f44644b;
        String str3 = cVar.f41822m;
        int i3 = cVar.f41824o;
        this.f44645c.a(131);
    }
}
