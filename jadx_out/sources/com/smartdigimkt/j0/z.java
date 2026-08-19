package com.smartdigimkt.j0;

/* loaded from: classes5.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public final n0 f41047a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f41048b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.w0.m f41049c;

    /* renamed from: d, reason: collision with root package name */
    public final long f41050d;

    /* renamed from: e, reason: collision with root package name */
    public final long f41051e;

    /* renamed from: f, reason: collision with root package name */
    public final int f41052f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f41053g;

    /* renamed from: h, reason: collision with root package name */
    public final com.smartdigimkt.w0.k0 f41054h;

    /* renamed from: i, reason: collision with root package name */
    public final com.smartdigimkt.y0.m f41055i;

    /* renamed from: j, reason: collision with root package name */
    public volatile long f41056j;

    /* renamed from: k, reason: collision with root package name */
    public volatile long f41057k;

    public z(long j2, com.smartdigimkt.y0.m mVar) {
        this(n0.f40951a, null, new com.smartdigimkt.w0.m(0), j2, -9223372036854775807L, 1, false, com.smartdigimkt.w0.k0.f44843d, mVar);
    }

    public final z a(com.smartdigimkt.w0.m mVar, long j2, long j3) {
        return new z(this.f41047a, this.f41048b, mVar, j2, mVar.a() ? j3 : -9223372036854775807L, this.f41052f, this.f41053g, this.f41054h, this.f41055i);
    }

    public z(n0 n0Var, Object obj, com.smartdigimkt.w0.m mVar, long j2, long j3, int i2, boolean z2, com.smartdigimkt.w0.k0 k0Var, com.smartdigimkt.y0.m mVar2) {
        this.f41047a = n0Var;
        this.f41048b = obj;
        this.f41049c = mVar;
        this.f41050d = j2;
        this.f41051e = j3;
        this.f41056j = j2;
        this.f41057k = j2;
        this.f41052f = i2;
        this.f41053g = z2;
        this.f41054h = k0Var;
        this.f41055i = mVar2;
    }
}
