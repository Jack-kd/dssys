package com.beizi.fusion;

import android.text.TextUtils;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class m4 implements ThreadFactory {

    /* renamed from: e, reason: collision with root package name */
    private static final AtomicInteger f15050e = new AtomicInteger(1);

    /* renamed from: a, reason: collision with root package name */
    private final ThreadGroup f15051a;

    /* renamed from: b, reason: collision with root package name */
    private final AtomicInteger f15052b = new AtomicInteger(1);

    /* renamed from: c, reason: collision with root package name */
    private final String f15053c;

    /* renamed from: d, reason: collision with root package name */
    private final int f15054d;

    public m4(int i2, String str) {
        this.f15054d = i2;
        SecurityManager securityManager = System.getSecurityManager();
        this.f15051a = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        if (TextUtils.isEmpty(str)) {
            this.f15053c = "BeiZi-adsdk-background-" + f15050e.getAndIncrement() + "-thread-";
            return;
        }
        this.f15053c = str + f15050e.getAndIncrement() + "-thread-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f15051a, runnable, this.f15053c + this.f15052b.getAndIncrement(), 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        if (this.f15054d == 1) {
            thread.setPriority(1);
            return thread;
        }
        if (thread.getPriority() != 5) {
            thread.setPriority(3);
            return thread;
        }
        thread.setPriority(5);
        return thread;
    }
}
