package com.smartdigimkt.w4;

/* loaded from: classes5.dex */
public final class i extends d {

    /* renamed from: b, reason: collision with root package name */
    public long f44978b;

    public i(int i2, long j2) {
        this.f44970a = i2;
        this.f44978b = j2;
    }

    @Override // com.smartdigimkt.w4.d
    public final byte a() {
        return (byte) 4;
    }

    @Override // com.smartdigimkt.w4.d
    public final boolean a(d dVar) {
        return dVar.a() == 4 && ((i) dVar).f44978b == this.f44978b;
    }
}
