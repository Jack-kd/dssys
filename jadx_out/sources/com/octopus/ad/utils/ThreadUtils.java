package com.octopus.ad.utils;

import android.os.Handler;
import android.os.Looper;
import com.octopus.ad.d.b.f;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class ThreadUtils {

    /* renamed from: a, reason: collision with root package name */
    private static final ThreadPoolExecutor f35075a;

    /* renamed from: b, reason: collision with root package name */
    private static final ThreadPoolExecutor f35076b;
    public static Handler mMainHandler;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f35075a = new ThreadPoolExecutor(5, 20, 2L, timeUnit, new LinkedBlockingQueue(128));
        f35076b = new ThreadPoolExecutor(5, 20, 2L, timeUnit, new LinkedBlockingQueue(128));
        mMainHandler = new Handler(Looper.getMainLooper());
    }

    public static void runOnLogThreadPool(Runnable runnable) {
        try {
            ThreadPoolExecutor threadPoolExecutor = f35076b;
            if (threadPoolExecutor.isShutdown()) {
                return;
            }
            threadPoolExecutor.execute(runnable);
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public static void runOnThreadPool(Runnable runnable) {
        try {
            ThreadPoolExecutor threadPoolExecutor = f35075a;
            if (threadPoolExecutor.isShutdown()) {
                return;
            }
            threadPoolExecutor.execute(runnable);
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public static void runOnUIThread(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            mMainHandler.post(runnable);
        }
    }

    public static void runOnUIThreadByThreadPool(final Runnable runnable) {
        f35075a.execute(new Runnable() { // from class: com.octopus.ad.utils.ThreadUtils.1
            @Override // java.lang.Runnable
            public void run() {
                ThreadUtils.mMainHandler.post(runnable);
            }
        });
    }

    public static <T> Future<T> runOnThreadPool(Callable<T> callable) {
        return f35075a.submit(callable);
    }
}
