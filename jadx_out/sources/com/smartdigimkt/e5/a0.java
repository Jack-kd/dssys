package com.smartdigimkt.e5;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class a0 implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.f5.a f40077a;

    public a0(com.smartdigimkt.f5.a aVar) {
        this.f40077a = aVar;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        c0.a(this.f40077a);
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        this.f40077a.f40283i = adError.getCode();
        this.f40077a.f40284j = adError.getMessage();
        c0.a(this.f40077a);
    }
}
