package com.smartdigimkt.j0;

import androidx.core.view.PointerIconCompat;
import java.util.UUID;

/* loaded from: classes5.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final int f40855a;

    /* renamed from: b, reason: collision with root package name */
    public static final UUID f40856b;

    static {
        f40855a = com.smartdigimkt.a1.t.f39303a < 23 ? PointerIconCompat.TYPE_GRAB : 6396;
        f40856b = new UUID(0L, 0L);
        new UUID(1186680826959645954L, -5988876978535335093L);
        new UUID(-2129748144642739255L, 8654423357094679310L);
        new UUID(-1301668207276963122L, -6645017420763422227L);
        new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    public static long a(long j2) {
        return (j2 == -9223372036854775807L || j2 == Long.MIN_VALUE) ? j2 : j2 * 1000;
    }

    public static long b(long j2) {
        return (j2 == -9223372036854775807L || j2 == Long.MIN_VALUE) ? j2 : j2 / 1000;
    }
}
