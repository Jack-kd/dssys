package com.anythink.supplement.a;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class ThreadUtils {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    private static final int TASK_QUEUE_MAX_COUNT = 128;
    private static final int THREAD_KEEP_LIVE_TIME = 30;
    public static Handler mMainHandler;
    private static ThreadPoolExecutor mThreadPoolExecutor;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = iAvailableProcessors;
        int iMax = Math.max(iAvailableProcessors, 5);
        CORE_POOL_SIZE = iMax;
        mThreadPoolExecutor = new ThreadPoolExecutor(iMax, iMax, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(128));
        mMainHandler = new Handler(Looper.getMainLooper());
    }

    public static void runOnThreadPool(Runnable runnable) {
        mThreadPoolExecutor.execute(runnable);
    }

    public static void runOnUIThread(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            mMainHandler.post(runnable);
        }
    }

    public static void runOnUIThreadByThreadPool(final Runnable runnable) {
        mThreadPoolExecutor.execute(new Runnable() { // from class: com.anythink.supplement.a.ThreadUtils.1
            @Override // java.lang.Runnable
            public void run() {
                ThreadUtils.mMainHandler.post(runnable);
            }
        });
    }

    public static <T> Future<T> runOnThreadPool(Callable<T> callable) {
        return mThreadPoolExecutor.submit(callable);
    }
}
