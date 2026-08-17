package com.smartdigimkt.j0;

import androidx.core.location.LocationRequestCompat;

/* loaded from: classes5.dex */
public final class g0 {

    /* renamed from: c, reason: collision with root package name */
    public static final g0 f40882c;

    /* renamed from: d, reason: collision with root package name */
    public static final g0 f40883d;

    /* renamed from: a, reason: collision with root package name */
    public final long f40884a;

    /* renamed from: b, reason: collision with root package name */
    public final long f40885b;

    static {
        g0 g0Var = new g0(0L, 0L);
        f40882c = g0Var;
        new g0(LocationRequestCompat.PASSIVE_INTERVAL, LocationRequestCompat.PASSIVE_INTERVAL);
        new g0(LocationRequestCompat.PASSIVE_INTERVAL, 0L);
        new g0(0L, LocationRequestCompat.PASSIVE_INTERVAL);
        f40883d = g0Var;
    }

    public g0(long j2, long j3) {
        if (j2 < 0) {
            throw new IllegalArgumentException();
        }
        if (j3 < 0) {
            throw new IllegalArgumentException();
        }
        this.f40884a = j2;
        this.f40885b = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && g0.class == obj.getClass()) {
            g0 g0Var = (g0) obj;
            if (this.f40884a == g0Var.f40884a && this.f40885b == g0Var.f40885b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f40884a) * 31) + ((int) this.f40885b);
    }
}
