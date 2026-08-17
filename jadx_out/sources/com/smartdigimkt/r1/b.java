package com.smartdigimkt.r1;

import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.e0.q {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.p1.f f42941a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f42942b;

    public b(d dVar, com.smartdigimkt.i5.j jVar) {
        this.f42942b = dVar;
        this.f42941a = jVar;
    }

    @Override // com.smartdigimkt.e0.q
    public final void a() {
        com.smartdigimkt.i3.b bVarE = SDKContext.getInstance().e();
        if (bVarE != null && bVarE.a()) {
            d dVar = this.f42942b;
            bVarE.fillDataFetchStatus(dVar.f42945a, dVar.f42949e, dVar.f42946b);
        }
        com.smartdigimkt.p1.f fVar = this.f42941a;
        if (fVar != null) {
            fVar.b();
        }
    }

    @Override // com.smartdigimkt.e0.q
    public final void a(com.smartdigimkt.i0.f fVar) {
        com.smartdigimkt.p1.f fVar2 = this.f42941a;
        if (fVar2 != null) {
            fVar2.a(fVar);
        }
    }
}
