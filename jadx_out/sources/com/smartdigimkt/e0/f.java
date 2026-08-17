package com.smartdigimkt.e0;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes5.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f39990a;

    public f(r rVar) {
        this.f39990a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(2);
        executorServiceNewFixedThreadPool.submit(new e(this, executorServiceNewFixedThreadPool));
        try {
            synchronized (executorServiceNewFixedThreadPool) {
                executorServiceNewFixedThreadPool.wait(2000L);
            }
            executorServiceNewFixedThreadPool.shutdownNow();
            this.f39990a.a(4);
        } catch (Throwable unused) {
            this.f39990a.a(4);
        }
    }
}
