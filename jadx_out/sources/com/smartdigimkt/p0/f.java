package com.smartdigimkt.p0;

/* loaded from: classes5.dex */
public final class f implements e {

    /* renamed from: a, reason: collision with root package name */
    public final int f42389a;

    /* renamed from: b, reason: collision with root package name */
    public final int f42390b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.a1.l f42391c;

    public f(b bVar) {
        com.smartdigimkt.a1.l lVar = bVar.f42286P0;
        this.f42391c = lVar;
        lVar.c(12);
        this.f42389a = lVar.h();
        this.f42390b = lVar.h();
    }

    @Override // com.smartdigimkt.p0.e
    public final boolean a() {
        return this.f42389a != 0;
    }

    @Override // com.smartdigimkt.p0.e
    public final int b() {
        return this.f42390b;
    }

    @Override // com.smartdigimkt.p0.e
    public final int c() {
        int i2 = this.f42389a;
        return i2 == 0 ? this.f42391c.h() : i2;
    }
}
