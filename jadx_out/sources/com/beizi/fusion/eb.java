package com.beizi.fusion;

import java.util.concurrent.RunnableScheduledFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public abstract class eb {

    /* renamed from: a, reason: collision with root package name */
    protected final int f13707a = 0;

    /* renamed from: b, reason: collision with root package name */
    private final Runnable f13708b;

    /* renamed from: c, reason: collision with root package name */
    private RunnableScheduledFuture f13709c;

    public eb(Runnable runnable) {
        this.f13708b = runnable;
    }

    public final void a(long j2, long j3, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorServiceB = b();
        if (scheduledExecutorServiceB != null) {
            a(scheduledExecutorServiceB.scheduleWithFixedDelay(this.f13708b, j2, j3, timeUnit));
        }
    }

    public abstract ScheduledExecutorService b();

    public final void c() {
        if (this.f13709c != null) {
            ScheduledExecutorService scheduledExecutorServiceB = b();
            if (scheduledExecutorServiceB instanceof ScheduledThreadPoolExecutor) {
                ((ScheduledThreadPoolExecutor) scheduledExecutorServiceB).remove(this.f13709c);
                this.f13709c = null;
            }
        }
    }

    public Runnable a() {
        return this.f13708b;
    }

    private void a(ScheduledFuture scheduledFuture) {
        if (scheduledFuture instanceof RunnableScheduledFuture) {
            try {
                this.f13709c = (RunnableScheduledFuture) scheduledFuture;
            } catch (Throwable th) {
                rm.a(th);
                this.f13709c = null;
            }
        }
    }
}
