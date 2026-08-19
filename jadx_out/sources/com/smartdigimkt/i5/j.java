package com.smartdigimkt.i5;

/* loaded from: classes5.dex */
public final class j implements com.smartdigimkt.p1.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.r1.d f40760a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.g5.a f40761b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k f40762c;

    public j(k kVar, com.smartdigimkt.r1.d dVar, com.smartdigimkt.g5.a aVar) {
        this.f40762c = kVar;
        this.f40760a = dVar;
        this.f40761b = aVar;
    }

    @Override // com.smartdigimkt.p1.f
    public final void a() {
    }

    @Override // com.smartdigimkt.p1.f
    public final void b() {
        if (!this.f40760a.d()) {
            this.f40761b.a(com.smartdigimkt.k4.b.a(com.anythink.core.common.inner.b.b.f4587d, "load fill but ad not ready."));
            this.f40762c.d(this.f40761b);
            return;
        }
        com.smartdigimkt.g5.d dVar = new com.smartdigimkt.g5.d();
        dVar.f40419a = this.f40760a;
        com.smartdigimkt.g5.a aVar = this.f40761b;
        aVar.f40411r = dVar;
        this.f40762c.e(aVar);
    }

    @Override // com.smartdigimkt.p1.f
    public final void a(com.smartdigimkt.i0.f fVar) {
        if (fVar != null) {
            this.f40761b.a(com.smartdigimkt.k4.b.a("10010", fVar.a()));
        } else {
            this.f40761b.a(com.smartdigimkt.k4.b.a("10010", "The ad load failed."));
        }
        this.f40762c.d(this.f40761b);
    }
}
