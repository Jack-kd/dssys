package com.byazt.wsy;

import com.byazt.uid.q;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1801, 38})
/* loaded from: classes3.dex */
public class j extends hp {
    public j(int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory) {
        super(i2, i3, j2, timeUnit, blockingQueue, threadFactory);
    }

    private void j() {
        BlockingQueue<Runnable> queue = getQueue();
        int iS = q.f26242l.s();
        if (getCorePoolSize() == iS || queue == null || queue.size() != 0) {
            return;
        }
        setCorePoolSize(iS);
    }

    public static boolean jx() {
        ThreadPoolExecutor threadPoolExecutorQ = q.f26242l.q();
        if (threadPoolExecutorQ.getQueue().size() != 0 || threadPoolExecutorQ.isShutdown() || threadPoolExecutorQ.isTerminated()) {
            return false;
        }
        int activeCount = threadPoolExecutorQ.getActiveCount();
        int corePoolSize = threadPoolExecutorQ.getCorePoolSize();
        return activeCount < corePoolSize + (-1) && com.byazt.jv.jx.hp.get() < corePoolSize / 2;
    }

    private boolean w() {
        BlockingQueue<Runnable> queue = getQueue();
        int corePoolSize = getCorePoolSize();
        int i2 = corePoolSize * 2;
        int iMin = Math.min(corePoolSize + 4, q.hp);
        if (corePoolSize >= iMin || queue == null || queue.size() < i2) {
            return false;
        }
        try {
            setCorePoolSize(iMin);
            return true;
        } catch (Exception e2) {
            e2.getMessage();
            return false;
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        if (q.f26241j) {
            j();
        }
    }

    @Override // com.byazt.wsy.hp, java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (q.f26241j) {
            w();
        }
        super.execute(runnable);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // com.byazt.wsy.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(java.lang.Runnable r3, java.lang.OutOfMemoryError r4) {
        /*
            r2 = this;
            super.hp(r3, r4)
            r0 = 0
            if (r3 == 0) goto Lf
            java.util.concurrent.BlockingQueue r1 = r2.getQueue()     // Catch: java.lang.Throwable -> L17
            boolean r3 = r1.offer(r3)     // Catch: java.lang.Throwable -> L17
            goto L12
        Lf:
            r3 = 1
            com.byazt.uid.q.f26241j = r0     // Catch: java.lang.Throwable -> L16
        L12:
            r2.allowCoreThreadTimeOut(r0)     // Catch: java.lang.Throwable -> L16
            goto L18
        L16:
            r0 = r3
        L17:
            r3 = r0
        L18:
            if (r3 == 0) goto L1b
            return
        L1b:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.wsy.j.hp(java.lang.Runnable, java.lang.OutOfMemoryError):void");
    }

    @Override // com.byazt.wsy.hp
    public int l() {
        return 2;
    }

    @Override // com.byazt.wsy.hp
    public boolean hp() {
        BlockingQueue<Runnable> queue = getQueue();
        return queue != null && queue.size() > getCorePoolSize() * 2;
    }
}
