package com.byazt.shx;

import androidx.core.content.res.b;
import com.byazt.uid.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.RunnableScheduledFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1272, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends ScheduledThreadPoolExecutor implements AutoCloseable {
    public final ConcurrentHashMap hp;

    public w(int i2, ThreadFactory threadFactory) {
        super(i2, new com.byazt.jv.j(threadFactory, 8));
        this.hp = new ConcurrentHashMap();
        hp();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void allowCoreThreadTimeOut(boolean z2) {
    }

    @Override // java.lang.AutoCloseable
    public /* synthetic */ void close() throws InterruptedException {
        b.a(this);
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor
    public RunnableScheduledFuture decorateTask(Runnable runnable, RunnableScheduledFuture runnableScheduledFuture) {
        if (!q.f26242l.w()) {
            return super.decorateTask(runnable, runnableScheduledFuture);
        }
        RunnableScheduledFuture runnableScheduledFuture2 = (RunnableScheduledFuture) this.hp.get(runnable);
        if (runnableScheduledFuture2 != null) {
            return runnableScheduledFuture2;
        }
        RunnableScheduledFuture runnableScheduledFutureDecorateTask = super.decorateTask(runnable, runnableScheduledFuture);
        this.hp.put(runnable, runnableScheduledFutureDecorateTask);
        return runnableScheduledFutureDecorateTask;
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture schedule(final Runnable runnable, final long j2, final TimeUnit timeUnit) throws NoSuchFieldException, SecurityException {
        if (!q.f26242l.w()) {
            return super.schedule(runnable, j2, timeUnit);
        }
        try {
            ScheduledFuture<?> scheduledFutureSchedule = super.schedule(runnable, j2, timeUnit);
            this.hp.remove(runnable);
            return scheduledFutureSchedule;
        } catch (OutOfMemoryError unused) {
            com.byazt.uid.jx.hp.hp("PThreadScheduledThreadPoolExecutor");
            q qVar = q.f26242l;
            qVar.jl().schedule(new Runnable() { // from class: com.byazt.shx.w.1
                @Override // java.lang.Runnable
                public void run() {
                    w.super.schedule(runnable, j2, timeUnit);
                    w.this.hp.remove(runnable);
                }
            }, qVar.j(), TimeUnit.MILLISECONDS);
            return (ScheduledFuture) this.hp.get(runnable);
        }
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture scheduleAtFixedRate(final Runnable runnable, final long j2, final long j3, final TimeUnit timeUnit) throws NoSuchFieldException, SecurityException {
        if (!q.f26242l.w()) {
            return super.scheduleAtFixedRate(runnable, j2, j3, timeUnit);
        }
        try {
            ScheduledFuture<?> scheduledFutureScheduleAtFixedRate = super.scheduleAtFixedRate(runnable, j2, j3, timeUnit);
            this.hp.remove(runnable);
            return scheduledFutureScheduleAtFixedRate;
        } catch (OutOfMemoryError unused) {
            com.byazt.uid.jx.hp.hp("PThreadScheduledThreadPoolExecutor");
            q qVar = q.f26242l;
            qVar.jl().schedule(new Runnable() { // from class: com.byazt.shx.w.2
                @Override // java.lang.Runnable
                public void run() {
                    w.super.scheduleAtFixedRate(runnable, j2, j3, timeUnit);
                    w.this.hp.remove(runnable);
                }
            }, qVar.j(), TimeUnit.MILLISECONDS);
            return (ScheduledFuture) this.hp.get(runnable);
        }
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture scheduleWithFixedDelay(final Runnable runnable, final long j2, final long j3, final TimeUnit timeUnit) throws NoSuchFieldException, SecurityException {
        if (!q.f26242l.w()) {
            return super.scheduleWithFixedDelay(runnable, j2, j3, timeUnit);
        }
        try {
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay = super.scheduleWithFixedDelay(runnable, j2, j3, timeUnit);
            this.hp.remove(runnable);
            return scheduledFutureScheduleWithFixedDelay;
        } catch (OutOfMemoryError unused) {
            com.byazt.uid.jx.hp.hp("PThreadScheduledThreadPoolExecutor");
            q qVar = q.f26242l;
            qVar.jl().schedule(new Runnable() { // from class: com.byazt.shx.w.3
                @Override // java.lang.Runnable
                public void run() {
                    w.super.scheduleWithFixedDelay(runnable, j2, j3, timeUnit);
                    w.this.hp.remove(runnable);
                }
            }, qVar.j(), TimeUnit.MILLISECONDS);
            return (ScheduledFuture) this.hp.get(runnable);
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void setKeepAliveTime(long j2, TimeUnit timeUnit) {
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void setThreadFactory(ThreadFactory threadFactory) {
        super.setThreadFactory(new com.byazt.jv.j(threadFactory, 8));
    }

    private void hp() {
        if (!q.f26242l.w() || allowsCoreThreadTimeOut()) {
            return;
        }
        TimeUnit timeUnit = TimeUnit.SECONDS;
        super.setKeepAliveTime(Math.max(10L, getKeepAliveTime(timeUnit)), timeUnit);
        super.allowCoreThreadTimeOut(true);
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor
    public RunnableScheduledFuture decorateTask(Callable callable, RunnableScheduledFuture runnableScheduledFuture) {
        if (q.f26242l.w()) {
            RunnableScheduledFuture runnableScheduledFuture2 = (RunnableScheduledFuture) this.hp.get(callable);
            if (runnableScheduledFuture2 != null) {
                return runnableScheduledFuture2;
            }
            RunnableScheduledFuture runnableScheduledFutureDecorateTask = super.decorateTask(callable, runnableScheduledFuture);
            this.hp.put(callable, runnableScheduledFutureDecorateTask);
            return runnableScheduledFutureDecorateTask;
        }
        return super.decorateTask(callable, runnableScheduledFuture);
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture schedule(final Callable callable, final long j2, final TimeUnit timeUnit) throws NoSuchFieldException, SecurityException {
        if (q.f26242l.w()) {
            try {
                ScheduledFuture scheduledFutureSchedule = super.schedule(callable, j2, timeUnit);
                this.hp.remove(callable);
                return scheduledFutureSchedule;
            } catch (OutOfMemoryError unused) {
                com.byazt.uid.jx.hp.hp("PThreadScheduledThreadPoolExecutor");
                q qVar = q.f26242l;
                qVar.jl().schedule(new Runnable() { // from class: com.byazt.shx.w.4
                    @Override // java.lang.Runnable
                    public void run() {
                        w.super.schedule(callable, j2, timeUnit);
                        w.this.hp.remove(callable);
                    }
                }, qVar.j(), TimeUnit.MILLISECONDS);
                return (ScheduledFuture) this.hp.get(callable);
            }
        }
        return super.schedule(callable, j2, timeUnit);
    }
}
