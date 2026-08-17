package com.beizi.fusion;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class w3 {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicBoolean f16810a = new AtomicBoolean();

    /* renamed from: b, reason: collision with root package name */
    private static volatile w3 f16811b;

    /* renamed from: c, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f16812c;

    /* renamed from: d, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f16813d;

    /* renamed from: e, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f16814e;

    /* renamed from: f, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f16815f;

    private w3() {
        if (f16810a.get()) {
            return;
        }
        d();
    }

    public static w3 b() {
        if (f16811b == null) {
            synchronized (w3.class) {
                try {
                    if (f16811b == null) {
                        f16811b = new w3();
                    }
                } finally {
                }
            }
        }
        return f16811b;
    }

    public static void d() {
        AtomicBoolean atomicBoolean = f16810a;
        if (atomicBoolean.get()) {
            return;
        }
        f16812c = n4.a();
        f16813d = n4.b();
        f16814e = n4.d();
        f16815f = n4.c();
        atomicBoolean.set(true);
    }

    public ExecutorService a() {
        if (f16812c == null) {
            f16812c = n4.a();
        }
        return f16812c;
    }

    public ExecutorService c() {
        if (f16813d == null) {
            f16813d = n4.b();
        }
        return f16813d;
    }

    public ExecutorService e() {
        if (f16815f == null) {
            f16815f = n4.c();
        }
        return f16815f;
    }

    public ExecutorService f() {
        if (f16814e == null) {
            f16814e = n4.d();
        }
        return f16814e;
    }
}
