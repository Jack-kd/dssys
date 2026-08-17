package com.umeng.analytics.pro;

import com.umeng.commonsdk.debug.UMRTLog;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
public class aw {

    /* renamed from: a, reason: collision with root package name */
    private static final String f48735a = "UMExecutor";

    /* renamed from: b, reason: collision with root package name */
    private static volatile ScheduledThreadPoolExecutor f48736b;

    /* renamed from: c, reason: collision with root package name */
    private static final ThreadFactory f48737c = new ThreadFactory() { // from class: com.umeng.analytics.pro.aw.1

        /* renamed from: a, reason: collision with root package name */
        private final AtomicInteger f48738a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ccg-" + this.f48738a.incrementAndGet());
        }
    };

    private static ScheduledThreadPoolExecutor a() {
        if (f48736b == null) {
            synchronized (aw.class) {
                try {
                    if (f48736b == null) {
                        f48736b = new ScheduledThreadPoolExecutor(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors(), 4)), f48737c);
                        f48736b.setKeepAliveTime(3L, TimeUnit.SECONDS);
                        f48736b.allowCoreThreadTimeOut(true);
                    }
                } finally {
                }
            }
        }
        return f48736b;
    }

    public static void a(Runnable runnable, long j2, TimeUnit timeUnit) {
        try {
            a().schedule(runnable, j2, timeUnit);
        } catch (Throwable th) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "schedule error:" + th.getMessage());
        }
    }
}
