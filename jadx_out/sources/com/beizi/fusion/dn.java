package com.beizi.fusion;

import java.util.Locale;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class dn implements ThreadFactory {

    /* renamed from: e, reason: collision with root package name */
    private static final AtomicInteger f13578e = new AtomicInteger(1);

    /* renamed from: a, reason: collision with root package name */
    private final AtomicInteger f13579a = new AtomicInteger(1);

    /* renamed from: b, reason: collision with root package name */
    private final String f13580b;

    /* renamed from: c, reason: collision with root package name */
    private final int f13581c;

    /* renamed from: d, reason: collision with root package name */
    private final ThreadGroup f13582d;

    public dn(int i2, String str) {
        this.f13581c = i2;
        this.f13582d = a(str);
        this.f13580b = String.format(Locale.ENGLISH, "adScope-%s-%d-thread-", str, Integer.valueOf(f13578e.getAndIncrement()));
    }

    private ThreadGroup a(String str) {
        try {
            return new ThreadGroup(str);
        } catch (SecurityException unused) {
            SecurityManager securityManager = System.getSecurityManager();
            return securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f13582d, runnable, this.f13580b + this.f13579a.getAndIncrement(), 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        if (this.f13581c == 1) {
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
