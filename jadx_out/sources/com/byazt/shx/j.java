package com.byazt.shx;

import com.byazt.uid.q;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1272, 38})
/* loaded from: classes3.dex */
public class j extends hp {
    public j(int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory) {
        super(i2, i3, j2, timeUnit, new com.byazt.jv.hp(blockingQueue), new com.byazt.jv.j(threadFactory, 2));
        hp();
    }

    private void hp() {
        if (q.f26242l.w()) {
            if (!allowsCoreThreadTimeOut()) {
                setKeepAliveTime(hp(20L), TimeUnit.SECONDS);
                try {
                    super.allowCoreThreadTimeOut(true);
                } catch (Throwable unused) {
                }
            }
            com.byazt.uid.jx.hp.hp(this);
        }
    }

    private ExecutorService l() {
        com.byazt.uid.jx jxVar = com.byazt.uid.jx.hp;
        return jxVar.hp("PThreadPoolExecutor", jxVar.hp(getQueue()));
    }

    @Override // com.byazt.shx.hp, java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public void allowCoreThreadTimeOut(boolean z2) {
    }

    @Override // com.byazt.shx.hp, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor, com.byazt.uid.hp
    public void execute(Runnable runnable) {
        if (!q.f26242l.w()) {
            super.execute(runnable);
            return;
        }
        try {
            super.execute(runnable);
        } catch (OutOfMemoryError e2) {
            ExecutorService executorServiceL = l();
            if (executorServiceL == null) {
                throw e2;
            }
            executorServiceL.execute(runnable);
        }
    }

    @Override // com.byazt.shx.hp, java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public void setThreadFactory(ThreadFactory threadFactory) {
        super.setThreadFactory(new com.byazt.jv.j(threadFactory, 2));
    }

    @Override // com.byazt.shx.hp, java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.byazt.uid.hp
    public <T> Future<T> submit(Callable<T> callable) {
        if (!q.f26242l.w()) {
            return super.submit(callable);
        }
        try {
            return super.submit(callable);
        } catch (OutOfMemoryError e2) {
            ExecutorService executorServiceL = l();
            if (executorServiceL != null) {
                return executorServiceL.submit(callable);
            }
            throw e2;
        }
    }

    public j(int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i2, i3, j2, timeUnit, new com.byazt.jv.hp(blockingQueue), new com.byazt.jv.j(threadFactory, 2), rejectedExecutionHandler);
        hp();
    }

    private long hp(long j2) {
        long jMin = Math.min(j2, getKeepAliveTime(TimeUnit.SECONDS));
        if (jMin > 1) {
            return jMin;
        }
        return 1L;
    }

    @Override // com.byazt.shx.hp, java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.byazt.uid.hp
    public <T> Future<T> submit(Runnable runnable, T t2) {
        if (q.f26242l.w()) {
            try {
                return super.submit(runnable, t2);
            } catch (OutOfMemoryError e2) {
                ExecutorService executorServiceL = l();
                if (executorServiceL != null) {
                    return executorServiceL.submit(runnable, t2);
                }
                throw e2;
            }
        }
        return super.submit(runnable, t2);
    }

    @Override // com.byazt.shx.hp, java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.byazt.uid.hp
    public Future submit(Runnable runnable) {
        if (q.f26242l.w()) {
            try {
                return super.submit(runnable);
            } catch (OutOfMemoryError e2) {
                ExecutorService executorServiceL = l();
                if (executorServiceL != null) {
                    return executorServiceL.submit(runnable);
                }
                throw e2;
            }
        }
        return super.submit(runnable);
    }
}
