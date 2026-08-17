package com.sigmob.sdk.downloader.core.file;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f37560a = "FileLock";

    /* renamed from: d, reason: collision with root package name */
    private static final long f37561d = TimeUnit.MILLISECONDS.toNanos(100);

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, AtomicInteger> f37562b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, Thread> f37563c;

    public c() {
        this(new HashMap(), new HashMap());
    }

    public void a() {
        LockSupport.park(Long.valueOf(f37561d));
    }

    public void b(String str) {
        AtomicInteger atomicInteger;
        Thread thread;
        synchronized (this.f37562b) {
            atomicInteger = this.f37562b.get(str);
        }
        if (atomicInteger == null || atomicInteger.decrementAndGet() != 0) {
            return;
        }
        com.sigmob.sdk.downloader.core.c.b(f37560a, "decreaseLock decrease lock-count to 0 " + str);
        synchronized (this.f37563c) {
            try {
                thread = this.f37563c.get(str);
                if (thread != null) {
                    this.f37563c.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (thread != null) {
            com.sigmob.sdk.downloader.core.c.b(f37560a, "decreaseLock " + str + " unpark locked thread " + atomicInteger);
            a(thread);
        }
        synchronized (this.f37562b) {
            this.f37562b.remove(str);
        }
    }

    public void c(String str) {
        AtomicInteger atomicInteger;
        synchronized (this.f37562b) {
            atomicInteger = this.f37562b.get(str);
        }
        if (atomicInteger == null || atomicInteger.get() <= 0) {
            return;
        }
        synchronized (this.f37563c) {
            this.f37563c.put(str, Thread.currentThread());
        }
        com.sigmob.sdk.downloader.core.c.b(f37560a, "waitForRelease start " + str);
        while (!a(atomicInteger)) {
            a();
        }
        com.sigmob.sdk.downloader.core.c.b(f37560a, "waitForRelease finish " + str);
    }

    public c(Map<String, AtomicInteger> map, Map<String, Thread> map2) {
        this.f37562b = map;
        this.f37563c = map2;
    }

    public void a(String str) {
        AtomicInteger atomicInteger;
        synchronized (this.f37562b) {
            atomicInteger = this.f37562b.get(str);
        }
        if (atomicInteger == null) {
            atomicInteger = new AtomicInteger(0);
            synchronized (this.f37562b) {
                this.f37562b.put(str, atomicInteger);
            }
        }
        com.sigmob.sdk.downloader.core.c.b(f37560a, "increaseLock increase lock-count to " + atomicInteger.incrementAndGet() + str);
    }

    public void a(Thread thread) {
        LockSupport.unpark(thread);
    }

    public boolean a(AtomicInteger atomicInteger) {
        return atomicInteger.get() <= 0;
    }
}
