package com.meishu.sdk.core.utils;

import android.os.Build;
import com.octopus.ad.ADBidEvent;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class h0 {

    /* renamed from: a, reason: collision with root package name */
    public static ExecutorService f31906a;

    /* renamed from: b, reason: collision with root package name */
    public static final int f31907b;

    /* renamed from: c, reason: collision with root package name */
    public static final int f31908c;

    /* renamed from: d, reason: collision with root package name */
    public static final BlockingQueue<Runnable> f31909d;

    public static class a implements RejectedExecutionHandler {
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static h0 f31910a = new h0();
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f31907b = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        f31908c = ADBidEvent.HUAWEI.equalsIgnoreCase(Build.MANUFACTURER) ? 15 : (iAvailableProcessors * 3) + 1;
        f31909d = new LinkedBlockingQueue(8);
    }

    public h0() {
        a();
    }

    public final void a() {
        try {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f31907b, f31908c, 10L, TimeUnit.SECONDS, f31909d, new a());
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            f31906a = threadPoolExecutor;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public boolean a(Runnable runnable) {
        try {
            f31906a.execute(runnable);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }
}
