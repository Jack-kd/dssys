package com.byazt.shx;

import androidx.core.content.res.b;
import com.byazt.jv.a;
import com.byazt.uid.q;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1272, 28})
/* loaded from: classes3.dex */
public class hp extends ThreadPoolExecutor implements com.byazt.uid.hp, AutoCloseable {
    public static final RejectedExecutionHandler hp = new RejectedExecutionHandler() { // from class: com.byazt.shx.hp.1
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            if (threadPoolExecutor != null && (threadPoolExecutor instanceof ScheduledThreadPoolExecutor) && threadPoolExecutor.getCorePoolSize() == 1) {
                q qVar = q.f26242l;
                ScheduledExecutorService scheduledExecutorServiceJl = qVar.jl();
                if (scheduledExecutorServiceJl.isShutdown() || scheduledExecutorServiceJl.isTerminated()) {
                    qVar.q().execute(runnable);
                } else {
                    scheduledExecutorServiceJl.execute(runnable);
                }
            } else {
                q.f26242l.q().execute(runnable);
            }
            q.f26242l.eb();
        }
    };

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.uid.hp f25456l;

    public hp(int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory) {
        this(i2, i3, j2, timeUnit, blockingQueue, threadFactory, hp);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public void allowCoreThreadTimeOut(boolean z2) {
        this.f25456l.allowCoreThreadTimeOut(z2);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public boolean allowsCoreThreadTimeOut() {
        return this.f25456l.allowsCoreThreadTimeOut();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService, com.byazt.uid.hp
    public boolean awaitTermination(long j2, TimeUnit timeUnit) throws InterruptedException {
        return this.f25456l.awaitTermination(j2, timeUnit);
    }

    @Override // java.lang.AutoCloseable
    public /* synthetic */ void close() throws InterruptedException {
        b.a(this);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor, com.byazt.uid.hp
    public void execute(Runnable runnable) {
        this.f25456l.execute(runnable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public int getActiveCount() {
        return this.f25456l.getActiveCount();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public long getCompletedTaskCount() {
        return this.f25456l.getCompletedTaskCount();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public int getCorePoolSize() {
        return this.f25456l.getCorePoolSize();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public long getKeepAliveTime(TimeUnit timeUnit) {
        return this.f25456l.getKeepAliveTime(timeUnit);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public int getLargestPoolSize() {
        return this.f25456l.getLargestPoolSize();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public int getMaximumPoolSize() {
        return this.f25456l.getMaximumPoolSize();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public int getPoolSize() {
        return this.f25456l.getPoolSize();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public BlockingQueue<Runnable> getQueue() {
        return this.f25456l.getQueue();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public RejectedExecutionHandler getRejectedExecutionHandler() {
        return this.f25456l.getRejectedExecutionHandler();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public long getTaskCount() {
        return this.f25456l.getTaskCount();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public ThreadFactory getThreadFactory() {
        return this.f25456l.getThreadFactory();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService, com.byazt.uid.hp
    public boolean isShutdown() {
        return this.f25456l.isShutdown();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService, com.byazt.uid.hp
    public boolean isTerminated() {
        return this.f25456l.isTerminated();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public boolean isTerminating() {
        return this.f25456l.isTerminating();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public int prestartAllCoreThreads() {
        return this.f25456l.prestartAllCoreThreads();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public boolean prestartCoreThread() {
        return this.f25456l.prestartCoreThread();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public void purge() {
        this.f25456l.purge();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public boolean remove(Runnable runnable) {
        return this.f25456l.remove(runnable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public void setCorePoolSize(int i2) {
        this.f25456l.setCorePoolSize(i2);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public void setKeepAliveTime(long j2, TimeUnit timeUnit) {
        this.f25456l.setKeepAliveTime(j2, timeUnit);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public void setMaximumPoolSize(int i2) {
        this.f25456l.setMaximumPoolSize(i2);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public void setRejectedExecutionHandler(RejectedExecutionHandler rejectedExecutionHandler) {
        this.f25456l.setRejectedExecutionHandler(rejectedExecutionHandler);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public void setThreadFactory(ThreadFactory threadFactory) {
        threadFactory.getClass();
        this.f25456l.setThreadFactory(threadFactory);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService, com.byazt.uid.hp
    public void shutdown() {
        com.byazt.uid.hp hpVar = this.f25456l;
        if (hpVar != null) {
            hpVar.shutdown();
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService, com.byazt.uid.hp
    public List<Runnable> shutdownNow() {
        return this.f25456l.shutdownNow();
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.byazt.uid.hp
    public Future<?> submit(Runnable runnable) {
        return this.f25456l.submit(runnable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, com.byazt.uid.hp
    public String toString() {
        com.byazt.uid.hp hpVar = this.f25456l;
        return hpVar != null ? hpVar.toString() : super.toString();
    }

    public hp(int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i2, i3, j2, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
        this.f25456l = new a(i2, i3, j2, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler, this);
        q.f26242l.eb();
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.byazt.uid.hp
    public <T> Future<T> submit(Callable<T> callable) {
        return this.f25456l.submit(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService, com.byazt.uid.hp
    public <T> Future<T> submit(Runnable runnable, T t2) {
        return this.f25456l.submit(runnable, t2);
    }
}
