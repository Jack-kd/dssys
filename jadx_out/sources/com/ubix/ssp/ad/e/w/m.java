package com.ubix.ssp.ad.e.w;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private l f47368a;

    /* renamed from: b, reason: collision with root package name */
    private ExecutorService f47369b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f47370c = false;

    public class a implements ThreadFactory {
        public a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "Ubix.TaskExecuteThread");
        }
    }

    public m() {
        try {
            this.f47368a = l.a();
            this.f47369b = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a());
        } catch (Exception e2) {
            h.a(e2);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (!this.f47370c) {
            try {
                this.f47369b.execute(this.f47368a.c());
            } catch (Exception e2) {
                h.a(e2);
                return;
            }
        }
        while (true) {
            Runnable runnableB = this.f47368a.b();
            if (runnableB == null) {
                this.f47369b.shutdown();
                return;
            }
            this.f47369b.execute(runnableB);
        }
    }
}
