package com.smartdigimkt.w0;

import com.smartdigimkt.j0.m0;
import com.smartdigimkt.j0.n0;

/* loaded from: classes5.dex */
public final class g0 extends n0 {

    /* renamed from: e, reason: collision with root package name */
    public static final Object f44782e = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final long f44783b;

    /* renamed from: c, reason: collision with root package name */
    public final long f44784c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f44785d;

    public g0(long j2, boolean z2, Object obj) {
        this.f44783b = j2;
        this.f44784c = j2;
        this.f44785d = obj;
    }

    @Override // com.smartdigimkt.j0.n0
    public final int a() {
        return 1;
    }

    @Override // com.smartdigimkt.j0.n0
    public final int b() {
        return 1;
    }

    @Override // com.smartdigimkt.j0.n0
    public final m0 a(int i2, m0 m0Var, long j2) {
        if (i2 < 0 || i2 >= 1) {
            throw new IndexOutOfBoundsException();
        }
        long j3 = this.f44784c;
        m0Var.f40940a = null;
        m0Var.f40941b = false;
        m0Var.f40944e = 0L;
        m0Var.f40945f = j3;
        m0Var.f40942c = 0;
        m0Var.f40943d = 0;
        m0Var.f40946g = 0L;
        return m0Var;
    }

    @Override // com.smartdigimkt.j0.n0
    public final com.smartdigimkt.j0.l0 a(int i2, com.smartdigimkt.j0.l0 l0Var, boolean z2) {
        if (i2 >= 0 && i2 < 1) {
            Object obj = z2 ? f44782e : null;
            long j2 = this.f44783b;
            l0Var.getClass();
            com.smartdigimkt.x0.b bVar = com.smartdigimkt.x0.b.f45054d;
            l0Var.f40932a = obj;
            l0Var.f40933b = 0;
            l0Var.f40934c = j2;
            l0Var.f40935d = 0L;
            l0Var.f40936e = bVar;
            return l0Var;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // com.smartdigimkt.j0.n0
    public final int a(Object obj) {
        return f44782e.equals(obj) ? 0 : -1;
    }
}
