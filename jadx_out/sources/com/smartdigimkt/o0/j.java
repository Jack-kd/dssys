package com.smartdigimkt.o0;

/* loaded from: classes5.dex */
public final class j implements k {

    /* renamed from: a, reason: collision with root package name */
    public final long f42202a;

    /* renamed from: b, reason: collision with root package name */
    public final i f42203b;

    public j(long j2, long j3) {
        this.f42202a = j2;
        l lVar = j3 == 0 ? l.f42204c : new l(0L, j3);
        this.f42203b = new i(lVar, lVar);
    }

    @Override // com.smartdigimkt.o0.k
    public final boolean a() {
        return false;
    }

    @Override // com.smartdigimkt.o0.k
    public final long b() {
        return this.f42202a;
    }

    @Override // com.smartdigimkt.o0.k
    public final i a(long j2) {
        return this.f42203b;
    }
}
