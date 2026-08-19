package com.baidu.mobads.sdk.internal;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
class bi implements RejectedExecutionHandler {
    @Override // java.util.concurrent.RejectedExecutionHandler
    public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        az.h("ThreadPoolFactory").e("Exceeded ThreadPoolExecutor pool size");
        synchronized (this) {
            try {
                if (bf.f11158d == null) {
                    LinkedBlockingQueue unused = bf.f11159e = new LinkedBlockingQueue();
                    ThreadPoolExecutor unused2 = bf.f11158d = new ThreadPoolExecutor(2, 2, 60L, TimeUnit.SECONDS, bf.f11159e, bf.f11160f);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        bf.f11158d.execute(runnable);
    }
}
