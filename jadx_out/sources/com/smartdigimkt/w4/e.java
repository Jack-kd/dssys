package com.smartdigimkt.w4;

/* loaded from: classes5.dex */
public final class e extends d {

    /* renamed from: b, reason: collision with root package name */
    public boolean f44972b;

    public e(int i2, boolean z2) {
        this.f44970a = i2;
        this.f44972b = z2;
    }

    @Override // com.smartdigimkt.w4.d
    public final byte a() {
        return (byte) 1;
    }

    @Override // com.smartdigimkt.w4.d
    public final boolean a(d dVar) {
        return dVar.a() == 1 && ((e) dVar).f44972b == this.f44972b;
    }
}
