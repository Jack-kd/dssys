package com.beizi.fusion;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public abstract class o4 {

    /* renamed from: a, reason: collision with root package name */
    private static final int f15412a;

    /* renamed from: b, reason: collision with root package name */
    private static final int f15413b;

    /* renamed from: c, reason: collision with root package name */
    private static final LinkedBlockingQueue f15414c;

    /* renamed from: d, reason: collision with root package name */
    private static final LinkedBlockingQueue f15415d;

    /* renamed from: e, reason: collision with root package name */
    private static final ArrayBlockingQueue f15416e;

    public class a implements RejectedExecutionHandler {
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f15412a = iAvailableProcessors;
        f15413b = Math.max((iAvailableProcessors / 2) + 1, 4);
        f15414c = new LinkedBlockingQueue();
        f15415d = new LinkedBlockingQueue();
        f15416e = new ArrayBlockingQueue(50);
    }

    public static ThreadPoolExecutor a() {
        return new ThreadPoolExecutor(2, f15413b, 5L, TimeUnit.SECONDS, f15414c, new m4(5, "BeiZi-adsdk-adrequest-thread-"), f());
    }

    public static ThreadPoolExecutor b() {
        return new ThreadPoolExecutor(2, f15413b, 5L, TimeUnit.SECONDS, f15414c, new m4(5, "BeiZi-adsdk-adrequest-thread-"), f());
    }

    public static ThreadPoolExecutor c() {
        return new ThreadPoolExecutor(0, 2, 5L, TimeUnit.SECONDS, f15415d, new m4(5, "BeiZi-adsdk-heartbeat-thread-"), f());
    }

    public static ThreadPoolExecutor d() {
        return new ThreadPoolExecutor(2, 6, 20L, TimeUnit.SECONDS, f15416e, new m4(5, "BeiZi-adsdk-file-log-upload-thread-"), f());
    }

    public static ScheduledThreadPoolExecutor e() {
        return (ScheduledThreadPoolExecutor) Executors.newScheduledThreadPool(4);
    }

    public static RejectedExecutionHandler f() {
        return new a();
    }
}
