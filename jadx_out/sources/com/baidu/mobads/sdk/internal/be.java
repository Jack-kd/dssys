package com.baidu.mobads.sdk.internal;

import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class be {

    /* renamed from: a, reason: collision with root package name */
    private static final String f11151a = "TaskScheduler";

    /* renamed from: d, reason: collision with root package name */
    private static volatile be f11152d;

    /* renamed from: b, reason: collision with root package name */
    private ThreadPoolExecutor f11153b;

    /* renamed from: c, reason: collision with root package name */
    private ScheduledThreadPoolExecutor f11154c;

    private be() {
        b();
    }

    public static be a() {
        if (f11152d == null) {
            synchronized (be.class) {
                try {
                    if (f11152d == null) {
                        f11152d = new be();
                    }
                } finally {
                }
            }
        }
        return f11152d;
    }

    private void b() {
        this.f11153b = bf.a(1, 1);
        this.f11154c = bf.a(1);
    }

    public void a(Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor;
        if (runnable == null || (threadPoolExecutor = this.f11153b) == null || threadPoolExecutor.isShutdown()) {
            return;
        }
        try {
            this.f11153b.submit(runnable);
        } catch (Throwable unused) {
        }
    }

    public void a(j jVar) {
        ThreadPoolExecutor threadPoolExecutor;
        if (jVar == null || (threadPoolExecutor = this.f11153b) == null || threadPoolExecutor.isShutdown()) {
            return;
        }
        try {
            jVar.a(System.currentTimeMillis());
            ThreadPoolExecutor threadPoolExecutor2 = this.f11153b;
            jVar.a((Future) ((threadPoolExecutor2 == null || threadPoolExecutor2.isShutdown()) ? null : (FutureTask) this.f11153b.submit(jVar)));
        } catch (Throwable unused) {
        }
    }

    public void a(j jVar, long j2, TimeUnit timeUnit) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        if (jVar == null || (scheduledThreadPoolExecutor = this.f11154c) == null || scheduledThreadPoolExecutor.isShutdown()) {
            return;
        }
        try {
            jVar.a(System.currentTimeMillis());
            jVar.a((Future) this.f11154c.schedule(jVar, j2, timeUnit));
        } catch (Throwable unused) {
        }
    }

    public void a(j jVar, long j2, long j3, TimeUnit timeUnit) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        if (jVar == null || (scheduledThreadPoolExecutor = this.f11154c) == null || scheduledThreadPoolExecutor.isShutdown()) {
            return;
        }
        try {
            jVar.a(System.currentTimeMillis());
            jVar.a((Future) this.f11154c.scheduleAtFixedRate(jVar, j2, j3, timeUnit));
        } catch (Throwable unused) {
        }
    }
}
