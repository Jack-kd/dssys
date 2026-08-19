package com.beizi.fusion;

import android.text.TextUtils;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class l4 implements ThreadFactory {

    /* renamed from: e, reason: collision with root package name */
    private static final AtomicInteger f14825e = new AtomicInteger(1);

    /* renamed from: a, reason: collision with root package name */
    private final ThreadGroup f14826a;

    /* renamed from: b, reason: collision with root package name */
    private final AtomicInteger f14827b = new AtomicInteger(1);

    /* renamed from: c, reason: collision with root package name */
    private final String f14828c;

    /* renamed from: d, reason: collision with root package name */
    private final int f14829d;

    public l4(int i2, String str) {
        this.f14829d = i2;
        SecurityManager securityManager = System.getSecurityManager();
        this.f14826a = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        if (TextUtils.isEmpty(str)) {
            this.f14828c = "afBg-" + f14825e.getAndIncrement() + "Td-";
            return;
        }
        this.f14828c = str + f14825e.getAndIncrement() + "Td-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f14826a, runnable, this.f14828c + this.f14827b.getAndIncrement(), 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        if (this.f14829d == 1) {
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
