package kotlinx.coroutines;

import androidx.core.location.LocationRequestCompat;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import kotlinx.coroutines.AbstractC1634e0;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes5.dex */
public final class P extends AbstractC1634e0 implements Runnable {

    @Nullable
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* renamed from: h, reason: collision with root package name */
    public static final P f51525h;

    /* renamed from: i, reason: collision with root package name */
    public static final long f51526i;

    static {
        Long l2;
        P p2 = new P();
        f51525h = p2;
        AbstractC1632d0.E(p2, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l2 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l2 = 1000L;
        }
        f51526i = timeUnit.toNanos(l2.longValue());
    }

    @Override // kotlinx.coroutines.AbstractC1636f0
    public Thread L() {
        Thread thread = _thread;
        return thread == null ? g0() : thread;
    }

    @Override // kotlinx.coroutines.AbstractC1636f0
    public void M(long j2, AbstractC1634e0.c cVar) {
        k0();
    }

    @Override // kotlinx.coroutines.AbstractC1634e0
    public void R(Runnable runnable) {
        if (h0()) {
            k0();
        }
        super.R(runnable);
    }

    @Override // kotlinx.coroutines.AbstractC1634e0, kotlinx.coroutines.T
    public Z f(long j2, Runnable runnable, kotlin.coroutines.i iVar) {
        return c0(j2, runnable);
    }

    public final synchronized void f0() {
        if (i0()) {
            debugStatus = 3;
            Z();
            kotlin.jvm.internal.j.c(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    public final synchronized Thread g0() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
            _thread = thread;
            thread.setContextClassLoader(f51525h.getClass().getClassLoader());
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    public final boolean h0() {
        return debugStatus == 4;
    }

    public final boolean i0() {
        int i2 = debugStatus;
        return i2 == 2 || i2 == 3;
    }

    public final synchronized boolean j0() {
        if (i0()) {
            return false;
        }
        debugStatus = 1;
        kotlin.jvm.internal.j.c(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return true;
    }

    public final void k0() {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zX;
        O0.f51523a.d(this);
        AbstractC1629c.a();
        try {
            if (!j0()) {
                if (zX) {
                    return;
                } else {
                    return;
                }
            }
            long j2 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long jI = I();
                if (jI == LocationRequestCompat.PASSIVE_INTERVAL) {
                    AbstractC1629c.a();
                    long jNanoTime = System.nanoTime();
                    if (j2 == LocationRequestCompat.PASSIVE_INTERVAL) {
                        j2 = f51526i + jNanoTime;
                    }
                    long j3 = j2 - jNanoTime;
                    if (j3 <= 0) {
                        _thread = null;
                        f0();
                        AbstractC1629c.a();
                        if (X()) {
                            return;
                        }
                        L();
                        return;
                    }
                    jI = E1.f.e(jI, j3);
                } else {
                    j2 = Long.MAX_VALUE;
                }
                if (jI > 0) {
                    if (i0()) {
                        _thread = null;
                        f0();
                        AbstractC1629c.a();
                        if (X()) {
                            return;
                        }
                        L();
                        return;
                    }
                    AbstractC1629c.a();
                    LockSupport.parkNanos(this, jI);
                }
            }
        } finally {
            _thread = null;
            f0();
            AbstractC1629c.a();
            if (!X()) {
                L();
            }
        }
    }

    @Override // kotlinx.coroutines.AbstractC1634e0, kotlinx.coroutines.AbstractC1632d0
    public void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    @Override // kotlinx.coroutines.H
    public String toString() {
        return "DefaultExecutor";
    }
}
