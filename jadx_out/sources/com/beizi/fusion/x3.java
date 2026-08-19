package com.beizi.fusion;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class x3 {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicBoolean f17409a = new AtomicBoolean();

    /* renamed from: b, reason: collision with root package name */
    private static volatile x3 f17410b;

    /* renamed from: c, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f17411c;

    /* renamed from: d, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f17412d;

    /* renamed from: e, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f17413e;

    /* renamed from: f, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f17414f;

    /* renamed from: g, reason: collision with root package name */
    private static volatile ScheduledThreadPoolExecutor f17415g;

    private x3() {
        if (f17409a.get()) {
            return;
        }
        f();
    }

    public static x3 c() {
        if (f17410b == null) {
            synchronized (x3.class) {
                try {
                    if (f17410b == null) {
                        f17410b = new x3();
                    }
                } finally {
                }
            }
        }
        return f17410b;
    }

    public static void f() {
        AtomicBoolean atomicBoolean = f17409a;
        if (atomicBoolean.get()) {
            return;
        }
        f17411c = o4.b();
        f17413e = o4.c();
        f17414f = o4.d();
        atomicBoolean.set(true);
    }

    public ExecutorService a() {
        if (f17412d == null) {
            f17412d = o4.a();
        }
        return f17412d;
    }

    public ExecutorService b() {
        if (f17411c == null) {
            f17411c = o4.b();
        }
        return f17411c;
    }

    public ScheduledThreadPoolExecutor d() {
        if (f17415g == null) {
            f17415g = o4.e();
        }
        return f17415g;
    }

    public ExecutorService e() {
        if (f17413e == null) {
            f17413e = o4.c();
        }
        return f17413e;
    }

    public ExecutorService g() {
        if (f17414f == null) {
            f17414f = o4.d();
        }
        return f17414f;
    }
}
