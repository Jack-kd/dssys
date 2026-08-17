package com.smartdigimkt.y3;

import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class r implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.q3.d f45247a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f45248b;

    public r(s sVar, com.smartdigimkt.q3.d dVar) {
        this.f45248b = sVar;
        this.f45247a = dVar;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        String str = this.f45248b.f45250a;
        this.f45247a.getClass();
        com.smartdigimkt.k3.j.a(com.smartdigimkt.k3.d.a(SDKContext.getInstance().d())).a(this.f45247a);
        this.f45248b.f45251b.decrementAndGet();
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        String str2 = this.f45248b.f45250a;
        this.f45247a.getClass();
        this.f45248b.f45251b.decrementAndGet();
    }
}
