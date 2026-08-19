package com.byazt.wsy;

import androidx.core.content.res.b;
import com.byazt.uid.q;
import com.byazt.ymw.u;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1801, 28})
/* loaded from: classes3.dex */
public abstract class hp extends ThreadPoolExecutor implements AutoCloseable {
    public hp(int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory) {
        this(i2, i3, j2, timeUnit, blockingQueue, threadFactory, com.byazt.shx.hp.hp);
    }

    @Override // java.lang.AutoCloseable
    public /* synthetic */ void close() throws InterruptedException {
        b.a(this);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        hp(runnable);
    }

    public boolean hp() {
        return false;
    }

    public int l() {
        return 0;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void setCorePoolSize(int i2) {
        try {
            super.setCorePoolSize(i2);
        } catch (Exception e2) {
            e2.getMessage();
        } catch (OutOfMemoryError e3) {
            hp(null, e3);
        }
    }

    public hp(int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i2, i3, j2, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
    }

    private void hp(Runnable runnable) {
        try {
            com.byazt.jv.jx jxVar = runnable instanceof com.byazt.jv.jx ? (com.byazt.jv.jx) runnable : new com.byazt.jv.jx(runnable);
            jxVar.l();
            q qVar = q.f26242l;
            if (qVar.k() && (getCorePoolSize() <= getActiveCount() || getQueue().size() > 0)) {
                jxVar.hp(3);
                qVar.jl().submit(jxVar);
                return;
            }
            jxVar.hp(l());
            super.execute(jxVar);
        } catch (InternalError e2) {
            u.hp("BaseThreadPool", "InternalError", e2);
        } catch (OutOfMemoryError e3) {
            if (q.f26242l.l()) {
                q.f26241j = false;
            }
            hp(runnable, e3);
        }
    }

    public void hp(Runnable runnable, OutOfMemoryError outOfMemoryError) {
        com.byazt.jv.jx.f21702l = true;
    }
}
