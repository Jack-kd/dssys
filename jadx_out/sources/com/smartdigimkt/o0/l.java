package com.smartdigimkt.o0;

/* loaded from: classes5.dex */
public final class l {

    /* renamed from: c, reason: collision with root package name */
    public static final l f42204c = new l(0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final long f42205a;

    /* renamed from: b, reason: collision with root package name */
    public final long f42206b;

    public l(long j2, long j3) {
        this.f42205a = j2;
        this.f42206b = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && l.class == obj.getClass()) {
            l lVar = (l) obj;
            if (this.f42205a == lVar.f42205a && this.f42206b == lVar.f42206b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f42205a) * 31) + ((int) this.f42206b);
    }

    public final String toString() {
        return "[timeUs=" + this.f42205a + ", position=" + this.f42206b + "]";
    }
}
