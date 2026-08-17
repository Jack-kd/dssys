package com.smartdigimkt.d4;

import com.smartdigimkt.sdk.api.ISDMAdManager;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.z4.m;
import java.util.Map;

/* loaded from: classes5.dex */
public final class b implements SDMSDK.InitCallBack {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f39893a;

    public b(c cVar) {
        this.f39893a = cVar;
    }

    @Override // com.smartdigimkt.sdk.api.SDMSDK.InitCallBack
    public final void fail(String str) {
        com.smartdigimkt.b4.e.a().c(new f(this.f39893a.f39897d, ""));
    }

    @Override // com.smartdigimkt.sdk.api.SDMSDK.InitCallBack
    public final void success() {
        this.f39893a.f39894a.k();
        c cVar = this.f39893a;
        String str = cVar.f39895b;
        Map map = cVar.f39896c;
        ISDMAdManager.S2SBidTokenCallback s2SBidTokenCallback = cVar.f39897d;
        com.smartdigimkt.z4.d.c().e();
        com.smartdigimkt.a5.e eVarA = m.a().a(str);
        com.smartdigimkt.j4.a aVar = new com.smartdigimkt.j4.a(str);
        aVar.f41118b = eVarA;
        aVar.f41119c = new d(str, map, s2SBidTokenCallback);
        com.smartdigimkt.b4.e.a().c(new e(new com.smartdigimkt.j4.b(aVar)));
    }
}
