package com.smartdigimkt.w0;

/* loaded from: classes5.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final int f44847a;

    /* renamed from: b, reason: collision with root package name */
    public final int f44848b;

    /* renamed from: c, reason: collision with root package name */
    public final int f44849c;

    /* renamed from: d, reason: collision with root package name */
    public final long f44850d;

    public m(int i2) {
        this(i2, -1, -1, -1L);
    }

    public final m a(int i2) {
        return this.f44847a == i2 ? this : new m(i2, this.f44848b, this.f44849c, this.f44850d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && m.class == obj.getClass()) {
            m mVar = (m) obj;
            if (this.f44847a == mVar.f44847a && this.f44848b == mVar.f44848b && this.f44849c == mVar.f44849c && this.f44850d == mVar.f44850d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.f44847a + 527) * 31) + this.f44848b) * 31) + this.f44849c) * 31) + ((int) this.f44850d);
    }

    public m(int i2, int i3, int i4, long j2) {
        this.f44847a = i2;
        this.f44848b = i3;
        this.f44849c = i4;
        this.f44850d = j2;
    }

    public final boolean a() {
        return this.f44848b != -1;
    }
}
