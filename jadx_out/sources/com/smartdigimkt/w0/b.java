package com.smartdigimkt.w0;

import androidx.core.location.LocationRequestCompat;

/* loaded from: classes5.dex */
public final class b implements l, k {

    /* renamed from: a, reason: collision with root package name */
    public final l f44728a;

    /* renamed from: b, reason: collision with root package name */
    public k f44729b;

    /* renamed from: c, reason: collision with root package name */
    public a[] f44730c = new a[0];

    /* renamed from: d, reason: collision with root package name */
    public long f44731d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final long f44732e;

    public b(i iVar, long j2) {
        this.f44728a = iVar;
        this.f44732e = j2;
    }

    @Override // com.smartdigimkt.w0.l
    public final void a(k kVar, long j2) {
        this.f44729b = kVar;
        this.f44728a.a(this, j2);
    }

    @Override // com.smartdigimkt.w0.l
    public final void b(long j2) {
        this.f44728a.b(j2);
    }

    @Override // com.smartdigimkt.w0.l
    public final boolean c(long j2) {
        return this.f44728a.c(j2);
    }

    @Override // com.smartdigimkt.w0.l
    public final void d(long j2) {
        this.f44728a.d(j2);
    }

    @Override // com.smartdigimkt.w0.l
    public final void e() {
        this.f44728a.e();
    }

    @Override // com.smartdigimkt.w0.l
    public final long b() {
        long jB = this.f44728a.b();
        if (jB != Long.MIN_VALUE) {
            long j2 = this.f44732e;
            if (j2 == Long.MIN_VALUE || jB < j2) {
                return jB;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.smartdigimkt.w0.l
    public final long c() {
        long j2 = this.f44731d;
        if (j2 != -9223372036854775807L) {
            this.f44731d = -9223372036854775807L;
            long jC = c();
            return jC != -9223372036854775807L ? jC : j2;
        }
        long jC2 = this.f44728a.c();
        if (jC2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (jC2 < 0) {
            throw new IllegalStateException();
        }
        long j3 = this.f44732e;
        if (j3 == Long.MIN_VALUE || jC2 <= j3) {
            return jC2;
        }
        throw new IllegalStateException();
    }

    @Override // com.smartdigimkt.w0.l
    public final long d() {
        long jD = this.f44728a.d();
        if (jD != Long.MIN_VALUE) {
            long j2 = this.f44732e;
            if (j2 == Long.MIN_VALUE || jD < j2) {
                return jD;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.smartdigimkt.w0.l
    public final k0 a() {
        return this.f44728a.a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0044, code lost:
    
        if (r10 > r13) goto L18;
     */
    @Override // com.smartdigimkt.w0.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.smartdigimkt.y0.h[] r10, boolean[] r11, com.smartdigimkt.w0.f0[] r12, boolean[] r13, long r14) {
        /*
            r9 = this;
            int r0 = r12.length
            com.smartdigimkt.w0.a[] r0 = new com.smartdigimkt.w0.a[r0]
            r9.f44730c = r0
            int r0 = r12.length
            com.smartdigimkt.w0.f0[] r4 = new com.smartdigimkt.w0.f0[r0]
            r0 = 0
            r1 = r0
        La:
            int r2 = r12.length
            r8 = 0
            if (r1 >= r2) goto L1f
            com.smartdigimkt.w0.a[] r2 = r9.f44730c
            r3 = r12[r1]
            com.smartdigimkt.w0.a r3 = (com.smartdigimkt.w0.a) r3
            r2[r1] = r3
            if (r3 == 0) goto L1a
            com.smartdigimkt.w0.f0 r8 = r3.f44722a
        L1a:
            r4[r1] = r8
            int r1 = r1 + 1
            goto La
        L1f:
            com.smartdigimkt.w0.l r1 = r9.f44728a
            r2 = r10
            r3 = r11
            r5 = r13
            r6 = r14
            long r10 = r1.a(r2, r3, r4, r5, r6)
            r13 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r9.f44731d = r13
            int r13 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r13 == 0) goto L4d
            r13 = 0
            int r13 = (r10 > r13 ? 1 : (r10 == r13 ? 0 : -1))
            if (r13 < 0) goto L47
            long r13 = r9.f44732e
            r1 = -9223372036854775808
            int r15 = (r13 > r1 ? 1 : (r13 == r1 ? 0 : -1))
            if (r15 == 0) goto L4d
            int r13 = (r10 > r13 ? 1 : (r10 == r13 ? 0 : -1))
            if (r13 > 0) goto L47
            goto L4d
        L47:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            r10.<init>()
            throw r10
        L4d:
            int r13 = r12.length
            if (r0 >= r13) goto L77
            r13 = r4[r0]
            if (r13 != 0) goto L59
            com.smartdigimkt.w0.a[] r13 = r9.f44730c
            r13[r0] = r8
            goto L6e
        L59:
            r14 = r12[r0]
            if (r14 == 0) goto L65
            com.smartdigimkt.w0.a[] r14 = r9.f44730c
            r14 = r14[r0]
            com.smartdigimkt.w0.f0 r14 = r14.f44722a
            if (r14 == r13) goto L6e
        L65:
            com.smartdigimkt.w0.a[] r14 = r9.f44730c
            com.smartdigimkt.w0.a r15 = new com.smartdigimkt.w0.a
            r15.<init>(r9, r13)
            r14[r0] = r15
        L6e:
            com.smartdigimkt.w0.a[] r13 = r9.f44730c
            r13 = r13[r0]
            r12[r0] = r13
            int r0 = r0 + 1
            goto L4d
        L77:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.w0.b.a(com.smartdigimkt.y0.h[], boolean[], com.smartdigimkt.w0.f0[], boolean[], long):long");
    }

    @Override // com.smartdigimkt.w0.k
    public final void b(l lVar) {
        this.f44729b.b(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        if (r0 > r6) goto L17;
     */
    @Override // com.smartdigimkt.w0.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(long r6) {
        /*
            r5 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5.f44731d = r0
            com.smartdigimkt.w0.a[] r0 = r5.f44730c
            int r1 = r0.length
            r2 = 0
            r3 = r2
        Lc:
            if (r3 >= r1) goto L17
            r4 = r0[r3]
            if (r4 == 0) goto L14
            r4.f44723b = r2
        L14:
            int r3 = r3 + 1
            goto Lc
        L17:
            com.smartdigimkt.w0.l r0 = r5.f44728a
            long r0 = r0.a(r6)
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 == 0) goto L3a
            r6 = 0
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 < 0) goto L34
            long r6 = r5.f44732e
            r2 = -9223372036854775808
            int r2 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r2 == 0) goto L3a
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 > 0) goto L34
            goto L3a
        L34:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            r6.<init>()
            throw r6
        L3a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.w0.b.a(long):long");
    }

    @Override // com.smartdigimkt.w0.k
    public final void a(l lVar) {
        this.f44729b.a(this);
    }

    @Override // com.smartdigimkt.w0.l
    public final long a(long j2, com.smartdigimkt.j0.g0 g0Var) {
        if (j2 == 0) {
            return 0L;
        }
        long j3 = g0Var.f40884a;
        int i2 = com.smartdigimkt.a1.t.f39303a;
        long jMax = Math.max(0L, Math.min(j3, j2));
        long j4 = g0Var.f40885b;
        long j5 = this.f44732e;
        long jMax2 = Math.max(0L, Math.min(j4, j5 == Long.MIN_VALUE ? LocationRequestCompat.PASSIVE_INTERVAL : j5 - j2));
        if (jMax != g0Var.f40884a || jMax2 != g0Var.f40885b) {
            g0Var = new com.smartdigimkt.j0.g0(jMax, jMax2);
        }
        return this.f44728a.a(j2, g0Var);
    }
}
