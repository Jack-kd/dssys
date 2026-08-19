package com.smartdigimkt.j0;

/* loaded from: classes5.dex */
public final class a0 {

    /* renamed from: e, reason: collision with root package name */
    public static final a0 f40850e = new a0(1.0f, 1.0f, false);

    /* renamed from: a, reason: collision with root package name */
    public final float f40851a;

    /* renamed from: b, reason: collision with root package name */
    public final float f40852b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f40853c;

    /* renamed from: d, reason: collision with root package name */
    public final int f40854d;

    public a0(float f2, float f3, boolean z2) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException();
        }
        if (f3 <= 0.0f) {
            throw new IllegalArgumentException();
        }
        this.f40851a = f2;
        this.f40852b = f3;
        this.f40853c = z2;
        this.f40854d = Math.round(f2 * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && a0.class == obj.getClass()) {
            a0 a0Var = (a0) obj;
            if (this.f40851a == a0Var.f40851a && this.f40852b == a0Var.f40852b && this.f40853c == a0Var.f40853c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f40852b) + ((Float.floatToRawIntBits(this.f40851a) + 527) * 31)) * 31) + (this.f40853c ? 1 : 0);
    }
}
