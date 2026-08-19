package com.smartdigimkt.w4;

import java.util.Arrays;

/* loaded from: classes5.dex */
public final class c extends l {
    public c(int i2, int i3, Object obj, int i4, boolean z2) {
        super(i2, i3, obj, i4, z2);
    }

    @Override // com.smartdigimkt.w4.d
    public final byte a() {
        return (byte) 7;
    }

    @Override // com.smartdigimkt.w4.d
    public final boolean a(d dVar) {
        if (dVar.a() != 7) {
            return false;
        }
        Object obj = ((c) dVar).f44979b;
        Object obj2 = this.f44979b;
        if (obj2 == obj) {
            return true;
        }
        if (obj2 != null && obj != null) {
            if (obj2 instanceof String) {
                return obj2.equals(obj);
            }
            if ((obj2 instanceof byte[]) && (obj instanceof byte[])) {
                return Arrays.equals((byte[]) obj2, (byte[]) obj);
            }
        }
        return false;
    }
}
