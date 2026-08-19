package com.smartdigimkt.j0;

import androidx.core.location.LocationRequestCompat;

/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f40842a;

    /* renamed from: b, reason: collision with root package name */
    public f0 f40843b;

    /* renamed from: c, reason: collision with root package name */
    public int f40844c;

    /* renamed from: d, reason: collision with root package name */
    public com.smartdigimkt.w0.f0 f40845d;

    /* renamed from: e, reason: collision with root package name */
    public s[] f40846e;

    /* renamed from: f, reason: collision with root package name */
    public long f40847f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f40848g = true;

    /* renamed from: h, reason: collision with root package name */
    public boolean f40849h;

    public a(int i2) {
        this.f40842a = i2;
    }

    public abstract int a(s sVar);

    public void a(int i2, Object obj) {
    }

    public abstract void a(long j2, long j3);

    public abstract void a(long j2, boolean z2);

    public com.smartdigimkt.a1.g c() {
        return null;
    }

    public abstract boolean d();

    public abstract boolean e();

    public abstract void f();

    public void g() {
    }

    public void h() {
    }

    public void i() {
    }

    public int j() {
        return 0;
    }

    public void a(s[] sVarArr, long j2) {
    }

    public final int a(t tVar, com.smartdigimkt.m0.d dVar, boolean z2) {
        int iA = this.f40845d.a(tVar, dVar, z2);
        if (iA == -4) {
            if (dVar.b(4)) {
                this.f40848g = true;
                return this.f40849h ? -4 : -3;
            }
            dVar.f41703d += this.f40847f;
            return iA;
        }
        if (iA == -5) {
            s sVar = tVar.f41012a;
            long j2 = sVar.f40995j;
            if (j2 != LocationRequestCompat.PASSIVE_INTERVAL) {
                tVar.f41012a = new s(sVar.f40986a, sVar.f40990e, sVar.f40991f, sVar.f40988c, sVar.f40987b, sVar.f40992g, sVar.f40996k, sVar.f40997l, sVar.f40998m, sVar.f40999n, sVar.f41000o, sVar.f41002q, sVar.f41001p, sVar.f41003r, sVar.f41004s, sVar.f41005t, sVar.f41006u, sVar.f41007v, sVar.f41008w, sVar.f41009x, sVar.f41010y, sVar.f41011z, j2 + this.f40847f, sVar.f40993h, sVar.f40994i, sVar.f40989d);
            }
        }
        return iA;
    }
}
