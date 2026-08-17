package com.smartdigimkt.p0;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final int f42380a;

    /* renamed from: b, reason: collision with root package name */
    public int f42381b;

    /* renamed from: c, reason: collision with root package name */
    public int f42382c;

    /* renamed from: d, reason: collision with root package name */
    public long f42383d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f42384e;

    /* renamed from: f, reason: collision with root package name */
    public final com.smartdigimkt.a1.l f42385f;

    /* renamed from: g, reason: collision with root package name */
    public final com.smartdigimkt.a1.l f42386g;

    /* renamed from: h, reason: collision with root package name */
    public int f42387h;

    /* renamed from: i, reason: collision with root package name */
    public int f42388i;

    public d(com.smartdigimkt.a1.l lVar, com.smartdigimkt.a1.l lVar2, boolean z2) {
        this.f42386g = lVar;
        this.f42385f = lVar2;
        this.f42384e = z2;
        lVar2.c(12);
        this.f42380a = lVar2.h();
        lVar.c(12);
        this.f42388i = lVar.h();
        if (!(lVar.a() == 1)) {
            throw new IllegalStateException("first_chunk must be 1");
        }
        this.f42381b = -1;
    }

    public final boolean a() {
        int i2 = this.f42381b + 1;
        this.f42381b = i2;
        if (i2 == this.f42380a) {
            return false;
        }
        this.f42383d = this.f42384e ? this.f42385f.i() : this.f42385f.f();
        if (this.f42381b == this.f42387h) {
            this.f42382c = this.f42386g.h();
            com.smartdigimkt.a1.l lVar = this.f42386g;
            lVar.c(lVar.f39287b + 4);
            int i3 = this.f42388i - 1;
            this.f42388i = i3;
            this.f42387h = i3 > 0 ? this.f42386g.h() - 1 : -1;
        }
        return true;
    }
}
