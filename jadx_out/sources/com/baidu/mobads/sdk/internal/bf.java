package com.baidu.mobads.sdk.internal;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class bf {

    /* renamed from: a, reason: collision with root package name */
    private static final String f11155a = "ThreadPoolFactory";

    /* renamed from: b, reason: collision with root package name */
    private static final int f11156b = 2;

    /* renamed from: c, reason: collision with root package name */
    private static final int f11157c = 60;

    /* renamed from: d, reason: collision with root package name */
    private static ThreadPoolExecutor f11158d;

    /* renamed from: e, reason: collision with root package name */
    private static LinkedBlockingQueue<Runnable> f11159e;

    /* renamed from: f, reason: collision with root package name */
    private static final ThreadFactory f11160f = new bg();

    /* renamed from: g, reason: collision with root package name */
    private static final RejectedExecutionHandler f11161g = new bi();

    public static ThreadPoolExecutor a(int i2, int i3) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i2, i3, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f11160f);
        threadPoolExecutor.setRejectedExecutionHandler(f11161g);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    public static ScheduledThreadPoolExecutor a(int i2) {
        return new ScheduledThreadPoolExecutor(i2, f11160f);
    }
}
