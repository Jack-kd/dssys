package com.smartdigimkt.w4;

/* loaded from: classes5.dex */
public final class h extends d {

    /* renamed from: b, reason: collision with root package name */
    public int f44977b;

    public h(int i2, int i3) {
        this.f44970a = i2;
        this.f44977b = i3;
    }

    @Override // com.smartdigimkt.w4.d
    public final byte a() {
        return (byte) 2;
    }

    @Override // com.smartdigimkt.w4.d
    public final boolean a(d dVar) {
        return dVar.a() == 2 && ((h) dVar).f44977b == this.f44977b;
    }
}
