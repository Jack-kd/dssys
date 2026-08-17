package com.byazt.jv;

import com.byazt.uid.q;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

@com.byazt.kj.hp(hp = {0, 1, 303, 54})
/* loaded from: classes.dex */
public class a implements com.byazt.uid.hp {

    /* renamed from: a, reason: collision with root package name */
    public volatile ThreadFactory f21693a;

    /* renamed from: e, reason: collision with root package name */
    public final ThreadPoolExecutor f21694e;
    public volatile RejectedExecutionHandler eb;
    public boolean gu;
    public final AtomicInteger hp = new AtomicInteger(hp(-536870912, 0));

    /* renamed from: j, reason: collision with root package name */
    public final Condition f21695j;
    public volatile int jl;
    public final ReentrantLock jx;

    /* renamed from: l, reason: collision with root package name */
    public final BlockingQueue<Runnable> f21696l;

    /* renamed from: q, reason: collision with root package name */
    public volatile int f21697q;

    /* renamed from: s, reason: collision with root package name */
    public volatile long f21698s;

    /* renamed from: w, reason: collision with root package name */
    public int f21699w;
    public ThreadPoolExecutor zy;

    public a(int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler, ThreadPoolExecutor threadPoolExecutor) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.jx = reentrantLock;
        this.f21695j = reentrantLock.newCondition();
        if (i2 < 0 || i3 <= 0 || i3 < i2 || j2 < 0) {
            throw new IllegalArgumentException();
        }
        if (blockingQueue == null || threadFactory == null || rejectedExecutionHandler == null) {
            throw null;
        }
        this.f21697q = i2;
        this.jl = i3;
        this.f21696l = blockingQueue;
        this.f21698s = timeUnit.toNanos(j2);
        this.f21693a = threadFactory;
        this.eb = rejectedExecutionHandler;
        this.f21694e = threadPoolExecutor;
    }

    private boolean a(int i2) {
        if (i2 == 1) {
            return true;
        }
        if (i2 == 2) {
            return com.byazt.wsy.j.jx();
        }
        return false;
    }

    private static int hp(int i2) {
        return i2 & (-536870912);
    }

    private boolean j(int i2) {
        return this.hp.compareAndSet(i2, i2 + 1);
    }

    private static boolean jx(int i2) {
        return i2 < 0;
    }

    private static int l(int i2) {
        return i2 & 536870911;
    }

    private void w(int i2) {
        int i3;
        do {
            i3 = this.hp.get();
            if (jx(i3, i2)) {
                return;
            }
        } while (!this.hp.compareAndSet(i3, hp(i2, l(i3))));
    }

    @Override // com.byazt.uid.hp
    public void allowCoreThreadTimeOut(boolean z2) {
        this.gu = true;
    }

    @Override // com.byazt.uid.hp
    public boolean allowsCoreThreadTimeOut() {
        return this.gu;
    }

    @Override // com.byazt.uid.hp
    public boolean awaitTermination(long j2, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j2);
        ReentrantLock reentrantLock = this.jx;
        reentrantLock.lock();
        while (!jx(this.hp.get(), 1610612736)) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return false;
                }
                nanos = this.f21695j.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        return true;
    }

    @Override // com.byazt.uid.hp
    public void execute(Runnable runnable) {
        jx jxVar;
        if (runnable == null) {
            return;
        }
        if (runnable instanceof jx) {
            jxVar = (jx) runnable;
            jxVar.hp(this);
        } else {
            jxVar = new jx(runnable, this);
        }
        hp(jxVar);
    }

    public void finalize() {
        shutdown();
        try {
            super.finalize();
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    @Override // com.byazt.uid.hp
    public int getActiveCount() {
        return l(this.hp.get());
    }

    @Override // com.byazt.uid.hp
    public long getCompletedTaskCount() {
        return 0L;
    }

    @Override // com.byazt.uid.hp
    public int getCorePoolSize() {
        return this.f21697q;
    }

    @Override // com.byazt.uid.hp
    public long getKeepAliveTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.f21698s, TimeUnit.NANOSECONDS);
    }

    @Override // com.byazt.uid.hp
    public int getLargestPoolSize() {
        return 0;
    }

    @Override // com.byazt.uid.hp
    public int getMaximumPoolSize() {
        return this.jl;
    }

    @Override // com.byazt.uid.hp
    public int getPoolSize() {
        if (jx(this.hp.get(), C.ENCODING_PCM_32BIT)) {
            return 0;
        }
        return l(this.hp.get());
    }

    @Override // com.byazt.uid.hp
    public BlockingQueue<Runnable> getQueue() {
        return this.f21696l;
    }

    @Override // com.byazt.uid.hp
    public RejectedExecutionHandler getRejectedExecutionHandler() {
        return this.eb;
    }

    @Override // com.byazt.uid.hp
    public long getTaskCount() {
        return 0L;
    }

    @Override // com.byazt.uid.hp
    public ThreadFactory getThreadFactory() {
        return this.f21693a;
    }

    @Override // com.byazt.uid.hp
    public boolean isShutdown() {
        return !jx(this.hp.get());
    }

    @Override // com.byazt.uid.hp
    public boolean isTerminated() {
        return jx(this.hp.get(), 1610612736);
    }

    @Override // com.byazt.uid.hp
    public boolean isTerminating() {
        int i2 = this.hp.get();
        return !jx(i2) && l(i2, 1610612736);
    }

    @Override // com.byazt.uid.hp
    public int prestartAllCoreThreads() {
        return 0;
    }

    @Override // com.byazt.uid.hp
    public boolean prestartCoreThread() {
        return false;
    }

    @Override // com.byazt.uid.hp
    public void purge() {
        BlockingQueue<Runnable> blockingQueue = this.f21696l;
        try {
            Iterator<Runnable> it = blockingQueue.iterator();
            while (it.hasNext()) {
                Runnable next = it.next();
                if ((next instanceof Future) && ((Future) next).isCancelled()) {
                    it.remove();
                }
            }
        } catch (ConcurrentModificationException unused) {
            for (Object obj : blockingQueue.toArray()) {
                if ((obj instanceof Future) && ((Future) obj).isCancelled()) {
                    blockingQueue.remove(obj);
                }
            }
        }
        l();
    }

    @Override // com.byazt.uid.hp
    public boolean remove(Runnable runnable) {
        boolean zRemove = this.f21696l.remove(runnable);
        l();
        return zRemove;
    }

    @Override // com.byazt.uid.hp
    public void setCorePoolSize(int i2) {
    }

    @Override // com.byazt.uid.hp
    public void setKeepAliveTime(long j2, TimeUnit timeUnit) {
        if (j2 < 0) {
            throw new IllegalArgumentException();
        }
        if (j2 == 0 && allowsCoreThreadTimeOut()) {
            throw new IllegalArgumentException("Core threads must have nonzero keep alive times");
        }
        this.f21698s = timeUnit.toNanos(j2);
    }

    @Override // com.byazt.uid.hp
    public void setMaximumPoolSize(int i2) {
        if (i2 <= 0 || i2 < this.f21697q) {
            throw new IllegalArgumentException();
        }
        this.jl = i2;
        this.hp.get();
    }

    @Override // com.byazt.uid.hp
    public void setRejectedExecutionHandler(RejectedExecutionHandler rejectedExecutionHandler) {
        rejectedExecutionHandler.getClass();
        this.eb = rejectedExecutionHandler;
    }

    @Override // com.byazt.uid.hp
    public void setThreadFactory(ThreadFactory threadFactory) {
        threadFactory.getClass();
        this.f21693a = threadFactory;
    }

    @Override // com.byazt.uid.hp
    public void shutdown() {
        ReentrantLock reentrantLock = this.jx;
        reentrantLock.lock();
        try {
            w(0);
            reentrantLock.unlock();
            l();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // com.byazt.uid.hp
    public List<Runnable> shutdownNow() {
        ReentrantLock reentrantLock = this.jx;
        reentrantLock.lock();
        try {
            w(C.ENCODING_PCM_A_LAW);
            List<Runnable> listJ = j();
            reentrantLock.unlock();
            l();
            return listJ;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // com.byazt.uid.hp
    public Future<?> submit(Runnable runnable) {
        if (runnable == null) {
            return null;
        }
        FutureTask futureTask = new FutureTask(runnable, null);
        execute(futureTask);
        return futureTask;
    }

    @Override // com.byazt.uid.hp
    public String toString() {
        int i2 = this.hp.get();
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + "[" + (l(i2, 0) ? "Running" : jx(i2, 1610612736) ? "Terminated" : "Shutting down") + ", runnable name = , core size = " + this.f21697q + ", max size = " + this.jl + ", worker count = " + l(i2) + ", queued tasks = " + this.f21696l.size() + "]";
    }

    private static int hp(int i2, int i3) {
        return i2 | i3;
    }

    private List<Runnable> j() {
        BlockingQueue<Runnable> blockingQueue = this.f21696l;
        ArrayList arrayList = new ArrayList();
        blockingQueue.drainTo(arrayList);
        if (!blockingQueue.isEmpty()) {
            for (Runnable runnable : (Runnable[]) blockingQueue.toArray(new Runnable[0])) {
                if (blockingQueue.remove(runnable)) {
                    if (runnable instanceof jx) {
                        arrayList.add(((jx) runnable).jx);
                    } else {
                        arrayList.add(runnable);
                    }
                }
            }
        }
        return arrayList;
    }

    private static boolean jx(int i2, int i3) {
        return i2 >= i3;
    }

    private static boolean l(int i2, int i3) {
        return i2 < i3;
    }

    private void jx() {
        while (true) {
            int i2 = this.hp.get();
            if (this.hp.compareAndSet(i2, i2 - 1)) {
                return;
            } else {
                Thread.yield();
            }
        }
    }

    public ThreadPoolExecutor hp() {
        if (this.zy == null) {
            this.zy = q.f26242l.e();
        }
        return this.zy;
    }

    public final void l() {
        while (true) {
            int i2 = this.hp.get();
            if (jx(i2) || jx(i2, C.ENCODING_PCM_32BIT)) {
                return;
            }
            if ((hp(i2) == 0 && !this.f21696l.isEmpty()) || l(i2) != 0) {
                return;
            }
            ReentrantLock reentrantLock = this.jx;
            reentrantLock.lock();
            try {
                if (this.hp.compareAndSet(i2, hp(C.ENCODING_PCM_32BIT, 0))) {
                    this.hp.set(hp(1610612736, 0));
                    this.f21695j.signalAll();
                    return;
                }
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    @Override // com.byazt.uid.hp
    public <T> Future<T> submit(Callable<T> callable) {
        if (callable == null) {
            return null;
        }
        FutureTask futureTask = new FutureTask(callable);
        execute(futureTask);
        return futureTask;
    }

    private void w() {
        ReentrantLock reentrantLock = this.jx;
        reentrantLock.lock();
        try {
            jx();
            l();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // com.byazt.uid.hp
    public <T> Future<T> submit(Runnable runnable, T t2) {
        if (runnable == null) {
            return null;
        }
        FutureTask futureTask = new FutureTask(runnable, t2);
        execute(futureTask);
        return futureTask;
    }

    public final void hp(Runnable runnable) {
        this.eb.rejectedExecution(runnable, this.f21694e);
    }

    private void hp(jx jxVar) {
        int i2 = this.hp.get();
        if (l(i2) < this.f21697q) {
            if (l((Runnable) jxVar, true)) {
                q.f26242l.eb();
                return;
            }
            i2 = this.hp.get();
        }
        if (l(i2) == 0) {
            if (l((Runnable) jxVar, false)) {
                q.f26242l.eb();
                return;
            }
            i2 = this.hp.get();
        }
        if (jx(i2) && this.f21696l.offer(jxVar)) {
            if (!jx(this.hp.get()) && remove(jxVar)) {
                hp(jxVar.hp());
                q.f26242l.eb();
                return;
            } else {
                q.f26242l.eb();
                return;
            }
        }
        if (l(i2) < this.jl && l((Runnable) jxVar, false)) {
            q.f26242l.eb();
        } else {
            hp(jxVar.hp());
            q.f26242l.eb();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0083, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean l(java.lang.Runnable r6, boolean r7) {
        /*
            r5 = this;
        L0:
            java.util.concurrent.atomic.AtomicInteger r0 = r5.hp
            int r0 = r0.get()
            int r1 = hp(r0)
            r2 = 0
            if (r1 < 0) goto L1a
            if (r1 != 0) goto L19
            if (r6 != 0) goto L19
            java.util.concurrent.BlockingQueue<java.lang.Runnable> r3 = r5.f21696l
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L1a
        L19:
            return r2
        L1a:
            int r3 = l(r0)
            r4 = 536870911(0x1fffffff, float:1.0842021E-19)
            if (r3 >= r4) goto L83
            if (r7 == 0) goto L28
            int r4 = r5.f21697q
            goto L2a
        L28:
            int r4 = r5.jl
        L2a:
            if (r3 < r4) goto L2d
            goto L83
        L2d:
            boolean r0 = r5.j(r0)
            if (r0 != 0) goto L40
            java.util.concurrent.atomic.AtomicInteger r0 = r5.hp
            int r0 = r0.get()
            int r3 = hp(r0)
            if (r3 != r1) goto L0
            goto L1a
        L40:
            java.util.concurrent.locks.ReentrantLock r7 = r5.jx     // Catch: java.lang.Throwable -> L79
            r7.lock()     // Catch: java.lang.Throwable -> L79
            java.util.concurrent.atomic.AtomicInteger r0 = r5.hp     // Catch: java.lang.Throwable -> L6d
            int r0 = r0.get()     // Catch: java.lang.Throwable -> L6d
            int r0 = hp(r0)     // Catch: java.lang.Throwable -> L6d
            if (r0 < 0) goto L55
            if (r0 != 0) goto L70
            if (r6 != 0) goto L70
        L55:
            java.util.concurrent.ThreadPoolExecutor r0 = r5.hp()     // Catch: java.lang.Throwable -> L6d
            r0.execute(r6)     // Catch: java.lang.Throwable -> L6d
            java.util.concurrent.atomic.AtomicInteger r6 = r5.hp     // Catch: java.lang.Throwable -> L6d
            int r6 = r6.get()     // Catch: java.lang.Throwable -> L6d
            int r6 = l(r6)     // Catch: java.lang.Throwable -> L6d
            int r0 = r5.f21699w     // Catch: java.lang.Throwable -> L6d
            if (r6 <= r0) goto L6f
            r5.f21699w = r6     // Catch: java.lang.Throwable -> L6d
            goto L6f
        L6d:
            r6 = move-exception
            goto L7b
        L6f:
            r2 = 1
        L70:
            r7.unlock()     // Catch: java.lang.Throwable -> L79
            if (r2 != 0) goto L78
            r5.w()
        L78:
            return r2
        L79:
            r6 = move-exception
            goto L7f
        L7b:
            r7.unlock()     // Catch: java.lang.Throwable -> L79
            throw r6     // Catch: java.lang.Throwable -> L79
        L7f:
            r5.w()
            throw r6
        L83:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.jv.a.l(java.lang.Runnable, boolean):boolean");
    }

    public void hp(Runnable runnable, boolean z2) {
        int i2 = this.hp.get();
        int iL = l(runnable);
        if (l(i2, C.ENCODING_PCM_A_LAW)) {
            do {
                Runnable runnablePoll = this.f21696l.poll();
                if (runnablePoll != null) {
                    if (a(iL) && (runnablePoll instanceof jx)) {
                        jx jxVar = (jx) runnablePoll;
                        jxVar.l();
                        jxVar.hp(iL);
                        jxVar.hp((a) null);
                        runnablePoll.run();
                    } else {
                        hp().execute(runnablePoll);
                        return;
                    }
                } else {
                    jx();
                    return;
                }
            } while (l(i2, C.ENCODING_PCM_A_LAW));
            l();
            return;
        }
        l();
    }

    private int l(Runnable runnable) {
        if (runnable instanceof jx) {
            return ((jx) runnable).j();
        }
        return 0;
    }
}
