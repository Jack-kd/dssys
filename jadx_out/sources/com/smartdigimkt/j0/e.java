package com.smartdigimkt.j0;

/* loaded from: classes5.dex */
public final class e implements com.smartdigimkt.a1.g {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.a1.n f40866a = new com.smartdigimkt.a1.n();

    /* renamed from: b, reason: collision with root package name */
    public final d f40867b;

    /* renamed from: c, reason: collision with root package name */
    public a f40868c;

    /* renamed from: d, reason: collision with root package name */
    public com.smartdigimkt.a1.g f40869d;

    public e(d dVar) {
        this.f40867b = dVar;
    }

    @Override // com.smartdigimkt.a1.g
    public final a0 a(a0 a0Var) {
        com.smartdigimkt.a1.g gVar = this.f40869d;
        if (gVar != null) {
            a0Var = gVar.a(a0Var);
        }
        this.f40866a.a(a0Var);
        ((p) this.f40867b).a(a0Var);
        return a0Var;
    }

    @Override // com.smartdigimkt.a1.g
    public final long b() {
        a aVar = this.f40868c;
        return (aVar == null || aVar.d() || (!this.f40868c.e() && this.f40868c.f40848g)) ? this.f40866a.b() : this.f40869d.b();
    }

    @Override // com.smartdigimkt.a1.g
    public final a0 a() {
        com.smartdigimkt.a1.g gVar = this.f40869d;
        return gVar != null ? gVar.a() : this.f40866a.f39297e;
    }
}
