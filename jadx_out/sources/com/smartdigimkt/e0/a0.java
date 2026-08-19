package com.smartdigimkt.e0;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes5.dex */
public final class a0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f39979a;

    public a0(com.smartdigimkt.m3.c cVar) {
        this.f39979a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(2);
        executorServiceNewFixedThreadPool.submit(new z(this, executorServiceNewFixedThreadPool));
        try {
            synchronized (executorServiceNewFixedThreadPool) {
                executorServiceNewFixedThreadPool.wait(5000L);
            }
            executorServiceNewFixedThreadPool.shutdownNow();
        } catch (Throwable unused) {
        }
    }
}
