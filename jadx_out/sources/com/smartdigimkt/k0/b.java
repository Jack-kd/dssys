package com.smartdigimkt.k0;

import com.smartdigimkt.w0.m;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final int f41247a;

    /* renamed from: b, reason: collision with root package name */
    public final m f41248b;

    public b(int i2, m mVar) {
        this.f41247a = i2;
        this.f41248b = mVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && b.class == obj.getClass()) {
            b bVar = (b) obj;
            if (this.f41247a == bVar.f41247a && this.f41248b.equals(bVar.f41248b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f41248b.hashCode() + (this.f41247a * 31);
    }
}
