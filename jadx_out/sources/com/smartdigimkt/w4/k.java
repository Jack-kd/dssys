package com.smartdigimkt.w4;

import java.util.Objects;

/* loaded from: classes5.dex */
public final class k extends l {
    public k(int i2, int i3, String str, int i4, boolean z2) {
        super(i2, i3, str, i4, z2);
    }

    @Override // com.smartdigimkt.w4.d
    public final byte a() {
        return (byte) 6;
    }

    @Override // com.smartdigimkt.w4.d
    public final boolean a(d dVar) {
        if (dVar.a() != 6) {
            return false;
        }
        k kVar = (k) dVar;
        return kVar.f44982e == this.f44982e && Objects.equals(kVar.f44979b, this.f44979b);
    }
}
