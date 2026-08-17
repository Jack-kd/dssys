package com.smartdigimkt.o0;

import java.util.Arrays;

/* loaded from: classes5.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final int f42207a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f42208b;

    /* renamed from: c, reason: collision with root package name */
    public final int f42209c;

    /* renamed from: d, reason: collision with root package name */
    public final int f42210d;

    public m(int i2, byte[] bArr, int i3, int i4) {
        this.f42207a = i2;
        this.f42208b = bArr;
        this.f42209c = i3;
        this.f42210d = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && m.class == obj.getClass()) {
            m mVar = (m) obj;
            if (this.f42207a == mVar.f42207a && this.f42209c == mVar.f42209c && this.f42210d == mVar.f42210d && Arrays.equals(this.f42208b, mVar.f42208b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.f42208b) + (this.f42207a * 31)) * 31) + this.f42209c) * 31) + this.f42210d;
    }
}
