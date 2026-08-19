package com.byazt.uid;

import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public interface hp {
    void allowCoreThreadTimeOut(boolean z2);

    boolean allowsCoreThreadTimeOut();

    boolean awaitTermination(long j2, TimeUnit timeUnit) throws InterruptedException;

    void execute(Runnable runnable);

    int getActiveCount();

    long getCompletedTaskCount();

    int getCorePoolSize();

    long getKeepAliveTime(TimeUnit timeUnit);

    int getLargestPoolSize();

    int getMaximumPoolSize();

    int getPoolSize();

    BlockingQueue<Runnable> getQueue();

    RejectedExecutionHandler getRejectedExecutionHandler();

    long getTaskCount();

    ThreadFactory getThreadFactory();

    boolean isShutdown();

    boolean isTerminated();

    boolean isTerminating();

    int prestartAllCoreThreads();

    boolean prestartCoreThread();

    void purge();

    boolean remove(Runnable runnable);

    void setCorePoolSize(int i2);

    void setKeepAliveTime(long j2, TimeUnit timeUnit);

    void setMaximumPoolSize(int i2);

    void setRejectedExecutionHandler(RejectedExecutionHandler rejectedExecutionHandler);

    void setThreadFactory(ThreadFactory threadFactory);

    void shutdown();

    List<Runnable> shutdownNow();

    Future<?> submit(Runnable runnable);

    <T> Future<T> submit(Runnable runnable, T t2);

    <T> Future<T> submit(Callable<T> callable);

    String toString();
}
