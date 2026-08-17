package com.smartdigimkt.i5;

import com.smartdigimkt.sdk.api.SDMSDK;

/* loaded from: classes5.dex */
public final class o implements SDMSDK.InitCallBack {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f40765a;

    public o(p pVar) {
        this.f40765a = pVar;
    }

    @Override // com.smartdigimkt.sdk.api.SDMSDK.InitCallBack
    public final void fail(String str) {
        this.f40765a.f40767b.a(com.smartdigimkt.k4.b.a("10010", str));
        p pVar = this.f40765a;
        pVar.f40768c.d(pVar.f40767b);
    }

    @Override // com.smartdigimkt.sdk.api.SDMSDK.InitCallBack
    public final void success() {
        this.f40765a.f40766a.k();
        p pVar = this.f40765a;
        pVar.f40768c.a(pVar.f40767b);
    }
}
