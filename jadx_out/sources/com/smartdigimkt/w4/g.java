package com.smartdigimkt.w4;

/* loaded from: classes5.dex */
public final class g extends d {

    /* renamed from: b, reason: collision with root package name */
    public float f44976b;

    public g(int i2, float f2) {
        this.f44970a = i2;
        this.f44976b = f2;
    }

    @Override // com.smartdigimkt.w4.d
    public final byte a() {
        return (byte) 3;
    }

    @Override // com.smartdigimkt.w4.d
    public final boolean a(d dVar) {
        return dVar.a() == 3 && ((g) dVar).f44976b == this.f44976b;
    }
}
