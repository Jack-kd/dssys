package com.umeng.umzid;

import android.util.Log;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static volatile ScheduledThreadPoolExecutor f50545a;

    /* renamed from: b, reason: collision with root package name */
    public static ThreadFactory f50546b = new a();

    public static class a implements ThreadFactory {

        /* renamed from: a, reason: collision with root package name */
        public AtomicInteger f50547a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("ZIDThreadPoolExecutor" + this.f50547a.addAndGet(1));
            return thread;
        }
    }

    public static ScheduledThreadPoolExecutor a() {
        if (f50545a == null) {
            synchronized (c.class) {
                try {
                    if (f50545a == null) {
                        f50545a = new ScheduledThreadPoolExecutor(Runtime.getRuntime().availableProcessors() * 4, f50546b);
                    }
                } finally {
                }
            }
        }
        return f50545a;
    }

    public static void a(Runnable runnable) {
        try {
            a().execute(runnable);
        } catch (Throwable unused) {
            Log.e("com.umeng.umzid.c", "UmengThreadPoolExecutorFactory execute exception");
        }
    }
}
