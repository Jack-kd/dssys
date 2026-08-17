package H1;

import java.util.concurrent.TimeUnit;
import kotlinx.coroutines.internal.C;
import kotlinx.coroutines.internal.E;

/* loaded from: classes5.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public static final String f136a = C.e("kotlinx.coroutines.scheduler.default.name", "DefaultDispatcher");

    /* renamed from: b, reason: collision with root package name */
    public static final long f137b = E.f("kotlinx.coroutines.scheduler.resolution.ns", 100000, 0, 0, 12, null);

    /* renamed from: c, reason: collision with root package name */
    public static final int f138c = E.e("kotlinx.coroutines.scheduler.core.pool.size", E1.f.b(C.a(), 2), 1, 0, 8, null);

    /* renamed from: d, reason: collision with root package name */
    public static final int f139d = E.e("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4, null);

    /* renamed from: e, reason: collision with root package name */
    public static final long f140e = TimeUnit.SECONDS.toNanos(E.f("kotlinx.coroutines.scheduler.keep.alive.sec", 60, 0, 0, 12, null));

    /* renamed from: f, reason: collision with root package name */
    public static f f141f = d.f127a;

    public static final g b(Runnable runnable, long j2, boolean z2) {
        return new h(runnable, j2, z2);
    }

    public static final String c(boolean z2) {
        return z2 ? "Blocking" : "Non-blocking";
    }
}
