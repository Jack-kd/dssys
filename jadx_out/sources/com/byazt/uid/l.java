package com.byazt.uid;

import androidx.core.content.res.b;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, 34})
/* loaded from: classes3.dex */
public final class l {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, 123})
    public static class hp extends AbstractExecutorService implements AutoCloseable {
        public final ExecutorService hp;

        public hp(ExecutorService executorService) {
            this.hp = executorService;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j2, TimeUnit timeUnit) throws InterruptedException {
            return this.hp.awaitTermination(j2, timeUnit);
        }

        @Override // java.lang.AutoCloseable
        public /* synthetic */ void close() throws InterruptedException {
            b.a(this);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.hp.execute(runnable);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
            return this.hp.invokeAll(collection);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
            return (T) this.hp.invokeAny(collection);
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            return this.hp.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            return this.hp.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            this.hp.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            return this.hp.shutdownNow();
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public Future<?> submit(Runnable runnable) {
            return this.hp.submit(runnable);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j2, TimeUnit timeUnit) throws InterruptedException {
            return this.hp.invokeAll(collection, j2, timeUnit);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j2, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return (T) this.hp.invokeAny(collection, j2, timeUnit);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Callable<T> callable) {
            return this.hp.submit(callable);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Runnable runnable, T t2) {
            return this.hp.submit(runnable, t2);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, 1157})
    public static class jx extends hp {
        public jx(ExecutorService executorService) {
            super(executorService);
        }

        public void finalize() throws Throwable {
            super.shutdown();
            super.finalize();
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, 1376})
    /* renamed from: com.byazt.uid.l$l, reason: collision with other inner class name */
    public static class ScheduledExecutorServiceC0387l extends hp implements ScheduledExecutorService, AutoCloseable {
        public final ScheduledExecutorService hp;

        public ScheduledExecutorServiceC0387l(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.hp = scheduledExecutorService;
        }

        @Override // com.byazt.uid.l.hp, java.lang.AutoCloseable
        public /* synthetic */ void close() throws InterruptedException {
            b.a(this);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> schedule(Runnable runnable, long j2, TimeUnit timeUnit) {
            return this.hp.schedule(runnable, j2, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
            return this.hp.scheduleAtFixedRate(runnable, j2, j3, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
            return this.hp.scheduleWithFixedDelay(runnable, j2, j3, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public <V> ScheduledFuture<V> schedule(Callable<V> callable, long j2, TimeUnit timeUnit) {
            return this.hp.schedule(callable, j2, timeUnit);
        }
    }

    public static ExecutorService hp(ThreadFactory threadFactory) {
        return new jx(new com.byazt.shx.j(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory));
    }

    public static ScheduledExecutorService jx(ThreadFactory threadFactory) {
        return new ScheduledExecutorServiceC0387l(new ScheduledThreadPoolExecutor(1, threadFactory));
    }

    public static ExecutorService l(ThreadFactory threadFactory) {
        return new com.byazt.shx.j(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
    }

    public static ScheduledExecutorService hp(int i2, ThreadFactory threadFactory) {
        return new com.byazt.shx.w(i2, threadFactory);
    }
}
