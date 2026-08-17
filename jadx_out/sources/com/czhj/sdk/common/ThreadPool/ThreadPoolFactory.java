package com.czhj.sdk.common.ThreadPool;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class ThreadPoolFactory {

    /* renamed from: a, reason: collision with root package name */
    private static final int f29304a;

    /* renamed from: b, reason: collision with root package name */
    private static final TimeUnit f29305b;

    /* renamed from: c, reason: collision with root package name */
    private static final Handler f29306c;

    /* renamed from: d, reason: collision with root package name */
    private static Handler f29307d;

    /* renamed from: e, reason: collision with root package name */
    private static final ExecutorService f29308e;

    /* renamed from: f, reason: collision with root package name */
    private static HandlerThread f29309f;

    public static class BackgroundThreadPool {

        /* renamed from: d, reason: collision with root package name */
        private static volatile BackgroundThreadPool f29310d;

        /* renamed from: a, reason: collision with root package name */
        final int f29311a = 2;

        /* renamed from: b, reason: collision with root package name */
        final BlockingQueue<Runnable> f29312b = new LinkedBlockingQueue();

        /* renamed from: c, reason: collision with root package name */
        final ExecutorService f29313c = ThreadPoolFactory.f29308e;

        public BackgroundThreadPool() {
            HandlerThread unused = ThreadPoolFactory.f29309f = new HandlerThread("ioThread");
            ThreadPoolFactory.f29309f.start();
            Handler unused2 = ThreadPoolFactory.f29307d = new Handler(ThreadPoolFactory.f29309f.getLooper());
        }

        public static BackgroundThreadPool getInstance() {
            if (f29310d == null) {
                synchronized (BackgroundThreadPool.class) {
                    try {
                        if (f29310d == null) {
                            f29310d = new BackgroundThreadPool();
                        }
                    } finally {
                    }
                }
            }
            return f29310d;
        }

        public ExecutorService getExecutorService() {
            return this.f29313c;
        }

        public Handler getIOHandler() {
            return ThreadPoolFactory.f29307d;
        }

        public Looper getIOLooper() {
            return ThreadPoolFactory.f29309f.getLooper();
        }

        public void submit(Runnable runnable) {
            try {
                this.f29313c.submit(runnable);
            } catch (Throwable unused) {
            }
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f29304a = iAvailableProcessors;
        f29305b = TimeUnit.SECONDS;
        f29306c = new Handler(Looper.getMainLooper());
        f29308e = Executors.newFixedThreadPool(iAvailableProcessors + 1, new BackgroundThreadFactory());
    }

    public static void MainThreadRun(Runnable runnable) {
        f29306c.post(runnable);
    }

    public static ExecutorService getFixIOExecutor() {
        return f29308e;
    }
}
