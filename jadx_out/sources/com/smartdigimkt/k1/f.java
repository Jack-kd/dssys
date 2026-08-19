package com.smartdigimkt.k1;

import com.smartdigimkt.e0.q;

/* loaded from: classes5.dex */
public final class f implements q {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.l3.a f41272a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f41273b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.b f41274c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ h f41275d;

    public f(h hVar, com.smartdigimkt.l3.a aVar, g gVar, com.smartdigimkt.m3.b bVar) {
        this.f41275d = hVar;
        this.f41272a = aVar;
        this.f41273b = gVar;
        this.f41274c = bVar;
    }

    @Override // com.smartdigimkt.e0.q
    public final void a() {
        this.f41275d.f41278b.put(this.f41272a.f41627a + this.f41272a.f41635i, Boolean.FALSE);
        g gVar = this.f41273b;
        if (gVar != null) {
            gVar.b(this.f41274c);
        }
    }

    @Override // com.smartdigimkt.e0.q
    public final void a(com.smartdigimkt.i0.f fVar) {
        this.f41275d.f41278b.put(this.f41272a.f41627a + this.f41272a.f41635i, Boolean.FALSE);
        g gVar = this.f41273b;
        if (gVar != null) {
            gVar.a(this.f41274c, fVar);
        }
    }
}
