package com.smartdigimkt.w0;

/* loaded from: classes5.dex */
public final class a implements f0 {

    /* renamed from: a, reason: collision with root package name */
    public final f0 f44722a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f44723b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f44724c;

    public a(b bVar, f0 f0Var) {
        this.f44724c = bVar;
        this.f44722a = f0Var;
    }

    @Override // com.smartdigimkt.w0.f0
    public final boolean a() {
        return this.f44724c.f44731d == -9223372036854775807L && this.f44722a.a();
    }

    @Override // com.smartdigimkt.w0.f0
    public final void b() {
        this.f44722a.b();
    }

    @Override // com.smartdigimkt.w0.f0
    public final int a(com.smartdigimkt.j0.t tVar, com.smartdigimkt.m0.d dVar, boolean z2) {
        if (this.f44724c.f44731d != -9223372036854775807L) {
            return -3;
        }
        if (this.f44723b) {
            dVar.f41700a = 4;
            return -4;
        }
        int iA = this.f44722a.a(tVar, dVar, z2);
        if (iA == -5) {
            com.smartdigimkt.j0.s sVar = tVar.f41012a;
            if (sVar.f41007v == 0 && sVar.f41008w == 0) {
                return -5;
            }
            this.f44724c.getClass();
            tVar.f41012a = new com.smartdigimkt.j0.s(sVar.f40986a, sVar.f40990e, sVar.f40991f, sVar.f40988c, sVar.f40987b, sVar.f40992g, sVar.f40996k, sVar.f40997l, sVar.f40998m, sVar.f40999n, sVar.f41000o, sVar.f41002q, sVar.f41001p, sVar.f41003r, sVar.f41004s, sVar.f41005t, sVar.f41006u, sVar.f41007v, this.f44724c.f44732e != Long.MIN_VALUE ? 0 : sVar.f41008w, sVar.f41009x, sVar.f41010y, sVar.f41011z, sVar.f40995j, sVar.f40993h, sVar.f40994i, sVar.f40989d);
            return -5;
        }
        b bVar = this.f44724c;
        long j2 = bVar.f44732e;
        if (j2 == Long.MIN_VALUE || ((iA != -4 || dVar.f41703d < j2) && !(iA == -3 && bVar.d() == Long.MIN_VALUE))) {
            return iA;
        }
        dVar.a();
        dVar.f41700a = 4;
        this.f44723b = true;
        return -4;
    }

    @Override // com.smartdigimkt.w0.f0
    public final int a(long j2) {
        if (this.f44724c.f44731d != -9223372036854775807L) {
            return -3;
        }
        return this.f44722a.a(j2);
    }
}
