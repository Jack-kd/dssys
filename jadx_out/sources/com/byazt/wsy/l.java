package com.byazt.wsy;

import com.byazt.uid.q;
import com.byazt.ymw.u;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 1801, 34})
/* loaded from: classes3.dex */
public class l extends hp {
    public AtomicInteger hp;

    public l(int i2, int i3, long j2, TimeUnit timeUnit, ThreadFactory threadFactory) {
        super(i2, i3, j2, timeUnit, new SynchronousQueue(), threadFactory);
        this.hp = new AtomicInteger(0);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void afterExecute(Runnable runnable, Throwable th) {
        Runnable runnablePoll;
        super.afterExecute(runnable, th);
        BlockingQueue<Runnable> queue = q.f26242l.q().getQueue();
        if (queue.size() == 0) {
            return;
        }
        int maximumPoolSize = getMaximumPoolSize();
        if (this.hp.get() >= Math.max(getCorePoolSize(), maximumPoolSize / 4)) {
            return;
        }
        try {
            this.hp.getAndIncrement();
            int activeCount = getActiveCount();
            while (activeCount < maximumPoolSize / 2 && !isShutdown() && !isTerminated() && !isTerminating() && (runnablePoll = queue.poll()) != null) {
                if (runnablePoll instanceof com.byazt.jv.jx) {
                    com.byazt.jv.jx jxVar = (com.byazt.jv.jx) runnablePoll;
                    jxVar.hp(l());
                    jxVar.l();
                }
                runnablePoll.run();
                activeCount = getActiveCount();
            }
        } finally {
            this.hp.getAndDecrement();
        }
    }

    @Override // com.byazt.wsy.hp, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (runnable instanceof jx) {
            super.execute(runnable);
            return;
        }
        if (hp(runnable)) {
            return;
        }
        if (!hp()) {
            super.execute(runnable);
            return;
        }
        if (runnable instanceof com.byazt.jv.jx) {
            ((com.byazt.jv.jx) runnable).hp(false);
        } else {
            runnable = new jx(runnable);
        }
        q.f26242l.q().execute(runnable);
    }

    @Override // com.byazt.wsy.hp
    public void hp(Runnable runnable, OutOfMemoryError outOfMemoryError) {
        super.hp(runnable, outOfMemoryError);
        if (runnable != null) {
            if (runnable instanceof com.byazt.jv.jx) {
                ((com.byazt.jv.jx) runnable).hp(false);
            } else {
                runnable = new jx(runnable);
            }
            q.f26242l.q().execute(runnable);
        }
        try {
            allowCoreThreadTimeOut(false);
        } catch (Exception e2) {
            u.hp("BigThreadPool", "oom", e2);
        }
    }

    @Override // com.byazt.wsy.hp
    public int l() {
        return 1;
    }

    @Override // com.byazt.wsy.hp
    public boolean hp() {
        return getActiveCount() >= getMaximumPoolSize();
    }

    private boolean hp(Runnable runnable) {
        com.byazt.jv.jx jxVar;
        if (!j.jx()) {
            return false;
        }
        if (runnable instanceof com.byazt.jv.jx) {
            jxVar = (com.byazt.jv.jx) runnable;
            if (!jxVar.jx()) {
                return false;
            }
        } else {
            jxVar = new jx(runnable);
        }
        com.byazt.jv.jx.hp.incrementAndGet();
        jxVar.hp(false);
        q.f26242l.q().execute(jxVar);
        return true;
    }
}
