package com.smartdigimkt.a0;

/* loaded from: classes5.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f39258a;

    /* renamed from: b, reason: collision with root package name */
    public com.smartdigimkt.i0.l f39259b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f39260c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f39261d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f39262e = false;

    public r(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        com.smartdigimkt.m3.e eVar;
        this.f39258a = cVar;
        this.f39260c = false;
        if (aVar == null || (eVar = aVar.f41644r) == null) {
            return;
        }
        this.f39260c = eVar.f41883P != 2;
    }

    public final synchronized void a() {
        com.smartdigimkt.m3.e eVar;
        if (this.f39259b == null) {
            return;
        }
        if (this.f39260c || !this.f39261d) {
            this.f39261d = true;
            com.smartdigimkt.m3.c cVar = this.f39258a;
            if (cVar == null || !(cVar instanceof com.smartdigimkt.m3.k) || !((com.smartdigimkt.m3.k) cVar).k() || (eVar = this.f39258a.f41832w) == null || eVar.f41858G1 == 2) {
                com.smartdigimkt.z.p.a(9, this.f39258a, this.f39259b);
            }
        }
    }

    public final synchronized void b() {
        com.smartdigimkt.m3.e eVar;
        if (this.f39260c || !this.f39262e) {
            this.f39262e = true;
            com.smartdigimkt.m3.c cVar = this.f39258a;
            if (cVar == null || !(cVar instanceof com.smartdigimkt.m3.k) || !((com.smartdigimkt.m3.k) cVar).k() || (eVar = this.f39258a.f41832w) == null || eVar.f41858G1 == 2) {
                com.smartdigimkt.z.p.a(24, this.f39258a, this.f39259b);
            }
        }
    }
}
