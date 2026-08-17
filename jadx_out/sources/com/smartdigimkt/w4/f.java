package com.smartdigimkt.w4;

/* loaded from: classes5.dex */
public final class f extends d {

    /* renamed from: b, reason: collision with root package name */
    public double f44975b;

    public f(int i2, double d2) {
        this.f44970a = i2;
        this.f44975b = d2;
    }

    @Override // com.smartdigimkt.w4.d
    public final byte a() {
        return (byte) 5;
    }

    @Override // com.smartdigimkt.w4.d
    public final boolean a(d dVar) {
        return dVar.a() == 5 && ((f) dVar).f44975b == this.f44975b;
    }
}
