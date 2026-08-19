package com.kwad.sdk.core.threads.a;

import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public final class b extends ThreadPoolExecutor implements c, AutoCloseable {
    public static volatile boolean aYQ = false;
    private final ConcurrentHashMap<Runnable, Long> aYR;
    private long aYS;
    private int aYT;

    public b(int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory) {
        super(i2, i3, j2, timeUnit, blockingQueue, threadFactory);
        this.aYR = new ConcurrentHashMap<>();
        this.aYS = 0L;
        this.aYT = 0;
    }

    @Override // com.kwad.sdk.core.threads.a.c
    public final long Ou() {
        return this.aYS;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public final void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        if (aYQ && this.aYR.containsKey(runnable) && this.aYR.get(runnable) != null) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.aYR.get(runnable).longValue();
            if (jElapsedRealtime >= 0 && jElapsedRealtime < com.anythink.core.common.g.c.f3507a) {
                long j2 = this.aYS;
                int i2 = this.aYT;
                this.aYS = ((j2 * i2) + jElapsedRealtime) / (i2 + 1);
                this.aYT = i2 + 1;
            }
            this.aYR.remove(runnable);
        }
    }

    @Override // java.lang.AutoCloseable
    public /* synthetic */ void close() throws InterruptedException {
        androidx.core.content.res.b.a(this);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (aYQ) {
            this.aYR.put(runnable, Long.valueOf(SystemClock.elapsedRealtime()));
        }
        super.execute(runnable);
    }

    public b(int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i2, i3, j2, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
        this.aYR = new ConcurrentHashMap<>();
        this.aYS = 0L;
        this.aYT = 0;
    }
}
