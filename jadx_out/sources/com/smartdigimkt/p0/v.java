package com.smartdigimkt.p0;

/* loaded from: classes5.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final s f42540a;

    /* renamed from: b, reason: collision with root package name */
    public final int f42541b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f42542c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f42543d;

    /* renamed from: e, reason: collision with root package name */
    public final int f42544e;

    /* renamed from: f, reason: collision with root package name */
    public final long[] f42545f;

    /* renamed from: g, reason: collision with root package name */
    public final int[] f42546g;

    /* renamed from: h, reason: collision with root package name */
    public final long f42547h;

    public v(s sVar, long[] jArr, int[] iArr, int i2, long[] jArr2, int[] iArr2, long j2) {
        if (iArr.length != jArr2.length) {
            throw new IllegalArgumentException();
        }
        if (jArr.length != jArr2.length) {
            throw new IllegalArgumentException();
        }
        if (iArr2.length != jArr2.length) {
            throw new IllegalArgumentException();
        }
        this.f42540a = sVar;
        this.f42542c = jArr;
        this.f42543d = iArr;
        this.f42544e = i2;
        this.f42545f = jArr2;
        this.f42546g = iArr2;
        this.f42547h = j2;
        this.f42541b = jArr.length;
    }

    public final int a(long j2) {
        for (int iA = com.smartdigimkt.a1.t.a(this.f42545f, j2, true, false); iA < this.f42545f.length; iA++) {
            if ((this.f42546g[iA] & 1) != 0) {
                return iA;
            }
        }
        return -1;
    }
}
