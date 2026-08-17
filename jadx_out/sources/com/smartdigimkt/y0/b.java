package com.smartdigimkt.y0;

import com.smartdigimkt.j0.s;

/* loaded from: classes5.dex */
public final class b implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final d f45123a;

    /* renamed from: b, reason: collision with root package name */
    public final int f45124b;

    /* renamed from: c, reason: collision with root package name */
    public final int f45125c;

    /* renamed from: d, reason: collision with root package name */
    public final int f45126d;

    /* renamed from: e, reason: collision with root package name */
    public final int f45127e;

    /* renamed from: f, reason: collision with root package name */
    public final int f45128f;

    /* renamed from: g, reason: collision with root package name */
    public final int f45129g;

    public b(s sVar, d dVar, int i2) {
        this.f45123a = dVar;
        this.f45124b = g.a(i2, false) ? 1 : 0;
        this.f45125c = g.a(sVar, dVar.f45133c) ? 1 : 0;
        this.f45126d = (sVar.f41009x & 1) != 0 ? 1 : 0;
        this.f45127e = sVar.f41004s;
        this.f45128f = sVar.f41005t;
        this.f45129g = sVar.f40987b;
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(b bVar) {
        int i2 = this.f45124b;
        int i3 = bVar.f45124b;
        if (i2 != i3) {
            return g.a(i2, i3);
        }
        int i4 = this.f45125c;
        int i5 = bVar.f45125c;
        if (i4 != i5) {
            return g.a(i4, i5);
        }
        int i6 = this.f45126d;
        int i7 = bVar.f45126d;
        if (i6 != i7) {
            return g.a(i6, i7);
        }
        if (this.f45123a.f45144n) {
            return g.a(bVar.f45129g, this.f45129g);
        }
        int i8 = i2 != 1 ? -1 : 1;
        int i9 = this.f45127e;
        int i10 = bVar.f45127e;
        if (i9 != i10) {
            return g.a(i9, i10) * i8;
        }
        int i11 = this.f45128f;
        int i12 = bVar.f45128f;
        return i11 != i12 ? g.a(i11, i12) * i8 : g.a(this.f45129g, bVar.f45129g) * i8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && b.class == obj.getClass()) {
            b bVar = (b) obj;
            if (this.f45124b == bVar.f45124b && this.f45125c == bVar.f45125c && this.f45126d == bVar.f45126d && this.f45127e == bVar.f45127e && this.f45128f == bVar.f45128f && this.f45129g == bVar.f45129g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((((((this.f45124b * 31) + this.f45125c) * 31) + this.f45126d) * 31) + this.f45127e) * 31) + this.f45128f) * 31) + this.f45129g;
    }
}
