package com.smartdigimkt.m3;

/* loaded from: classes5.dex */
public abstract /* synthetic */ class h {
    public static /* synthetic */ long a(int i2) {
        if (i2 == 1) {
            return 1001L;
        }
        if (i2 == 2) {
            return 1002L;
        }
        if (i2 == 3) {
            return 1003L;
        }
        if (i2 == 4) {
            return 1004L;
        }
        throw null;
    }

    public static boolean a(d dVar) {
        if (!p.f42139a || dVar == null) {
            return false;
        }
        return a(3, dVar) || a(4, dVar);
    }

    public static final boolean a(int i2, long j2) {
        return a(i2) == j2;
    }

    public static boolean a(long j2) {
        return a(3, j2) || a(4, j2);
    }

    public static long a(long j2, c cVar, com.smartdigimkt.l3.a aVar) {
        if (j2 <= 0) {
            return 0L;
        }
        if (a(1, j2) || a(2, j2)) {
            if ((aVar != null && aVar.f41636j == 67) || aVar == null || aVar.f41628b != 4 || !(cVar instanceof k)) {
                return 0L;
            }
            int i2 = ((k) cVar).f42046g0;
            if (i2 != 1 && i2 != 3) {
                return 0L;
            }
        }
        return j2;
    }

    public static final boolean a(int i2, d dVar) {
        return dVar != null && dVar.f41836a == a(i2);
    }
}
