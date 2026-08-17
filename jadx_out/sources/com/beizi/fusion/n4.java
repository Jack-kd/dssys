package com.beizi.fusion;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public abstract class n4 {

    /* renamed from: a, reason: collision with root package name */
    private static final int f15277a;

    /* renamed from: b, reason: collision with root package name */
    private static final int f15278b;

    /* renamed from: c, reason: collision with root package name */
    private static final LinkedBlockingQueue f15279c;

    /* renamed from: d, reason: collision with root package name */
    private static final LinkedBlockingQueue f15280d;

    /* renamed from: e, reason: collision with root package name */
    private static final LinkedBlockingQueue f15281e;

    /* renamed from: f, reason: collision with root package name */
    private static final ArrayBlockingQueue f15282f;

    public class a implements RejectedExecutionHandler {
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f15277a = iAvailableProcessors;
        f15278b = Math.max((iAvailableProcessors / 2) + 1, 4);
        f15279c = new LinkedBlockingQueue();
        f15280d = new LinkedBlockingQueue();
        f15281e = new LinkedBlockingQueue();
        f15282f = new ArrayBlockingQueue(200);
    }

    public static ThreadPoolExecutor a() {
        return new ThreadPoolExecutor(2, f15278b, 5L, TimeUnit.SECONDS, f15279c, new l4(5, "afAd-"), e());
    }

    public static ThreadPoolExecutor b() {
        return new ThreadPoolExecutor(2, f15278b, 5L, TimeUnit.SECONDS, f15280d, new l4(5, "afHb-"), e());
    }

    public static ThreadPoolExecutor c() {
        return new ThreadPoolExecutor(2, f15278b, 20L, TimeUnit.SECONDS, f15281e, new l4(5, "afIt-"), e());
    }

    public static ThreadPoolExecutor d() {
        return new ThreadPoolExecutor(2, 20, 20L, TimeUnit.SECONDS, f15282f, new l4(5, "afFu-"), e());
    }

    public static RejectedExecutionHandler e() {
        return new a();
    }
}
