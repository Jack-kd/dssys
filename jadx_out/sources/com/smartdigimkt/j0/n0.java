package com.smartdigimkt.j0;

import android.util.Pair;

/* loaded from: classes5.dex */
public abstract class n0 {

    /* renamed from: a, reason: collision with root package name */
    public static final k0 f40951a = new k0();

    public abstract int a();

    public abstract int a(Object obj);

    public abstract l0 a(int i2, l0 l0Var, boolean z2);

    public final m0 a(int i2, m0 m0Var) {
        return a(i2, m0Var, 0L);
    }

    public abstract m0 a(int i2, m0 m0Var, long j2);

    public abstract int b();

    public final boolean c() {
        return b() == 0;
    }

    public final Pair a(m0 m0Var, l0 l0Var, int i2, long j2, long j3) {
        int iB = b();
        if (i2 < 0 || i2 >= iB) {
            throw new IndexOutOfBoundsException();
        }
        a(i2, m0Var, j3);
        if (j2 == -9223372036854775807L) {
            j2 = m0Var.f40944e;
            if (j2 == -9223372036854775807L) {
                return null;
            }
        }
        int i3 = m0Var.f40942c;
        long j4 = m0Var.f40946g + j2;
        long j5 = a(i3, l0Var, false).f40934c;
        while (j5 != -9223372036854775807L && j4 >= j5 && i3 < m0Var.f40943d) {
            j4 -= j5;
            i3++;
            j5 = a(i3, l0Var, false).f40934c;
        }
        return Pair.create(Integer.valueOf(i3), Long.valueOf(j4));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(int r5, com.smartdigimkt.j0.l0 r6, com.smartdigimkt.j0.m0 r7, int r8, boolean r9) {
        /*
            r4 = this;
            r9 = 0
            com.smartdigimkt.j0.l0 r6 = r4.a(r5, r6, r9)
            int r6 = r6.f40933b
            r0 = 0
            com.smartdigimkt.j0.m0 r2 = r4.a(r6, r7, r0)
            int r2 = r2.f40943d
            r3 = 1
            if (r2 != r5) goto L55
            r5 = -1
            if (r8 == 0) goto L38
            if (r8 == r3) goto L4b
            r2 = 2
            if (r8 != r2) goto L32
            boolean r8 = r4.c()
            if (r8 == 0) goto L22
            r8 = r5
            goto L27
        L22:
            int r8 = r4.b()
            int r8 = r8 - r3
        L27:
            if (r6 != r8) goto L49
            boolean r6 = r4.c()
            if (r6 == 0) goto L30
            r9 = r5
        L30:
            r6 = r9
            goto L4b
        L32:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            r5.<init>()
            throw r5
        L38:
            boolean r8 = r4.c()
            if (r8 == 0) goto L40
            r8 = r5
            goto L45
        L40:
            int r8 = r4.b()
            int r8 = r8 - r3
        L45:
            if (r6 != r8) goto L49
            r6 = r5
            goto L4b
        L49:
            int r6 = r6 + 1
        L4b:
            if (r6 != r5) goto L4e
            return r5
        L4e:
            com.smartdigimkt.j0.m0 r5 = r4.a(r6, r7, r0)
            int r5 = r5.f40942c
            return r5
        L55:
            int r5 = r5 + r3
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.j0.n0.a(int, com.smartdigimkt.j0.l0, com.smartdigimkt.j0.m0, int, boolean):int");
    }
}
