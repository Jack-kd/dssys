package com.bykv.vk.component.ttvideo.player;

import com.byazt.shx.j;
import com.byazt.uid.s;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class AVThreadPool {
    private static ThreadPoolExecutor mExecutorInstance;
    private static volatile ExecutorService mExtExecutorInstance;

    public static synchronized void addTask(Runnable runnable) {
        getExecutorInstance().submit(runnable);
    }

    private static synchronized ExecutorService getExecutorInstance() {
        ExecutorService executorService;
        try {
            if (mExtExecutorInstance != null) {
                executorService = mExtExecutorInstance;
            } else {
                if (mExecutorInstance == null) {
                    mExecutorInstance = new j(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new s("/AVThreadPool"));
                }
                executorService = mExecutorInstance;
            }
        } catch (Throwable th) {
            throw th;
        }
        return executorService;
    }

    public static synchronized void setExecutorInstance(ExecutorService executorService) {
        mExtExecutorInstance = executorService;
    }

    public static synchronized Future<String> addTask(Callable<String> callable) {
        return getExecutorInstance().submit(callable);
    }
}
